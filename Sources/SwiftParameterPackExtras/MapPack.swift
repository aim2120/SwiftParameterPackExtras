//
//  MapPack.swift
//  NavigationExample
//
//  Created by Annalise Mariottini on 12/2/24.
//

/// Map the parameter pack with the passed transforming closure.
public func MapPack<each V, each V2>(_ value: repeat each V, transform: repeat (each V) -> (each V2)) -> (repeat each V2) {
    (repeat (each transform)(each value))
}

/// Map the parameter pack with the passed transforming closure.
public func MapPack<each V, each V2>(_ value: (repeat each V), transform: repeat (each V) -> (each V2)) -> (repeat each V2) {
    (repeat (each transform)(each value))
}
