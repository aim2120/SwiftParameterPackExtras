//
//  HashablePack.swift
//
//
//  Created by Annalise Mariottini on 12/1/24.
//

/// A container type allowing for `Hashable` conformance of a parameter pack with all `Hashable` values.
public struct HashablePack<each V: Hashable>: Hashable {
    public init(_ value: (repeat each V)) {
        self.value = value
    }
    public init(_ value: repeat each V) {
        self.value = (repeat each value)
    }
    public let value: (repeat each V)

    public static func == (lhs: Self, rhs: Self) -> Bool {
        EquatablePack(repeat each lhs.value) == EquatablePack(repeat each rhs.value)
    }

    public func hash(into hasher: inout Hasher) {
        repeat hasher.combine(each value)
    }
}
