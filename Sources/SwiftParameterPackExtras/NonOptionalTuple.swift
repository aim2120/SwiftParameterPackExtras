//
//  NonOptionalTuple.swift
//
//
//  Created by Annalise Mariottini on 12/2/24.
//

/// A function that converts a tuple of optional values to non-optional values.
/// Returns the non-optional tuple if all values have some value.
/// Returns `nil` if any values are `nil`.
public func NonOptionalTuple<each V>(_ value: repeat (each V)?) -> (repeat each V)? {
    do {
        let nonOptional = try (repeat each value ?? { throw CancellationError() }())
        return nonOptional
    } catch {
        return nil
    }
}

/// A function that converts a tuple of optional values to non-optional values.
/// Returns the non-optional tuple if all values have some value.
/// Returns `nil` if any values are `nil`.
public func NonOptionalTuple<each V>(_ value: (repeat (each V)?)) -> (repeat each V)? {
    do {
        let nonOptional = try (repeat each value ?? { throw CancellationError() }())
        return nonOptional
    } catch {
        return nil
    }
}
