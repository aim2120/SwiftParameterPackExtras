//
//  EquatablePack.swift
//
//
//  Created by Annalise Mariottini on 12/1/24.
//

/// A container type allowing for `Equatable` conformance of a parameter pack with all `Equatable` values.
public struct EquatablePack<each V: Equatable>: Equatable {
    public init(_ value: (repeat each V)) {
        self.value = (repeat each value)
    }
    public init(_ value: repeat each V) {
        self.value = (repeat each value)
    }
    public let value: (repeat each V)

    public static func == (lhs: Self, rhs: Self) -> Bool {
        var allSatisfy = true
        func check<T: Equatable>(lhs: T, rhs: T) {
            lhs == rhs ? () : (allSatisfy = false)
        }
        repeat check(lhs: each lhs.value, rhs: each rhs.value)
        return allSatisfy
    }
}
