//
//  TestNonOptionalTuple.swift
//  SwiftParameterPackExtras
//
//  Created by Annalise Mariottini on 12/2/24.
//

import Testing
import SwiftParameterPackExtras

struct TestNonOptionalTuple {
    @Test(arguments: [
        ("", ""),
        ("abc", "abc"),
        (nil, nil),
    ])
    func testNonOptionalTuple(value: String?, expectedValue: String?) {
        #expect(NonOptionalTuple(value) == expectedValue)
    }

    @Test(arguments: [
        (("", ""), ("", "")),
        (("abc", "def"), ("abc", "def")),
        ((nil, "def"), nil),
        (("abc", nil), nil),
        ((nil, nil), nil),
    ])
    func testNonOptionalTuple(value: (String?, String?), expectedValue: (String, String)?) throws {
        if let expectedValue {
            let nonOptional = try #require(NonOptionalTuple(value))
            #expect(nonOptional.0 == expectedValue.0)
            #expect(nonOptional.1 == expectedValue.1)
        } else {
            #expect(NonOptionalTuple(value) == nil)
        }
    }

    @Test(arguments: [
        (("", "", ""), ("", "", "")),
        (("abc", "def", "ghi"), ("abc", "def", "ghi")),
        ((nil, "def", "ghi"), nil),
        (("abc", nil, "ghi"), nil),
        (("abc", "def", nil), nil),
        (("abc", nil, nil), nil),
        ((nil, "def", nil), nil),
        ((nil, nil, "ghi"), nil),
        ((nil, nil, nil), nil),
    ])
    func testNonOptionalTuple(value: (String?, String?, String?), expectedValue: (String, String, String)?) throws {
        if let expectedValue {
            let nonOptional = try #require(NonOptionalTuple(value))
            #expect(nonOptional.0 == expectedValue.0)
            #expect(nonOptional.1 == expectedValue.1)
            #expect(nonOptional.2 == expectedValue.2)
        } else {
            #expect(NonOptionalTuple(value) == nil)
        }
    }

    @Test(arguments: [
        (("", "", "", ""), ("", "", "", "")),
        (("abc", "def", "ghi", "jkl"), ("abc", "def", "ghi", "jkl")),
        ((nil, "def", "ghi", "jkl"), nil),
        (("abc", nil, "ghi", "jkl"), nil),
        (("abc", "def", nil, "jkl"), nil),
        (("abc", "def", "ghi", nil), nil),
        (("abc", nil, nil, nil), nil),
        ((nil, "def", nil, nil), nil),
        ((nil, nil, "ghi", nil), nil),
        ((nil, nil, nil, "jkl"), nil),
        ((nil, nil, nil, nil), nil),
    ])
    func testNonOptionalTuple(value: (String?, String?, String?, String?), expectedValue: (String, String, String, String)?) throws {
        if let expectedValue {
            let nonOptional = try #require(NonOptionalTuple(value))
            #expect(nonOptional.0 == expectedValue.0)
            #expect(nonOptional.1 == expectedValue.1)
            #expect(nonOptional.2 == expectedValue.2)
            #expect(nonOptional.3 == expectedValue.3)
        } else {
            #expect(NonOptionalTuple(value) == nil)
        }
    }
}
