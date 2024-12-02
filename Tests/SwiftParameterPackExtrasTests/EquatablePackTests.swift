//
//  EquatablePackTests.swift
//  SwiftParameterPackExtras
//
//  Created by Annalise Mariottini on 12/2/24.
//

import Testing
import SwiftParameterPackExtras

struct EquatablePackTests {
    @Test(arguments: [
        ("", "", true),
        ("abc", "abc", true),
        ("", "abc", false),
    ])
    func testEquatablePack(lhs: String, rhs: String, equal: Bool) {
        #expect((EquatablePack(lhs) == EquatablePack(rhs)) == equal)
    }

    @Test(arguments: [
        (("", ""), ("", ""), true),
        (("abc", ""), ("abc", ""), true),
        (("abc", "def"), ("abc", "def"), true),
        (("abc", ""), ("", ""), false),
        (("", "abc"), ("", ""), false),
        (("", ""), ("abc", ""), false),
        (("", ""), ("", "abc"), false),
    ])
    func testEquatablePack(lhs: (String, String), rhs: (String, String), equal: Bool) {
        #expect((EquatablePack(lhs) == EquatablePack(rhs)) == equal)
    }

    @Test(arguments: [
        (("", "", ""), ("", "", ""), true),
        (("abc", "", ""), ("abc", "", ""), true),
        (("abc", "def", ""), ("abc", "def", ""), true),
        (("abc", "def", "ghi"), ("abc", "def", "ghi"), true),
        (("abc", "", ""), ("", "", ""), false),
        (("", "abc", ""), ("", "", ""), false),
        (("", "", "abc"), ("", "", ""), false),
        (("", "", ""), ("abc", "", ""), false),
        (("", "", ""), ("", "abc", ""), false),
        (("", "", ""), ("", "", "abc"), false),
    ])
    func testEquatablePack(lhs: (String, String, String), rhs: (String, String, String), equal: Bool) {
        #expect((EquatablePack(lhs) == EquatablePack(rhs)) == equal)
    }

    @Test(arguments: [
        (("", "", "", ""), ("", "", "", ""), true),
        (("abc", "", "", ""), ("abc", "", "", ""), true),
        (("abc", "def", "", ""), ("abc", "def", "", ""), true),
        (("abc", "def", "ghi", ""), ("abc", "def", "ghi", ""), true),
        (("abc", "def", "ghi", "jkl"), ("abc", "def", "ghi", "jkl"), true),
        (("abc", "", "", ""), ("", "", "", ""), false),
        (("", "abc", "", ""), ("", "", "", ""), false),
        (("", "", "abc", ""), ("", "", "", ""), false),
        (("", "", "", "abc"), ("", "", "", ""), false),
        (("", "", "", ""), ("abc", "", "", ""), false),
        (("", "", "", ""), ("", "abc", "", ""), false),
        (("", "", "", ""), ("", "", "abc", ""), false),
        (("", "", "", ""), ("", "", "", "abc"), false),
    ])
    func testEquatablePack(lhs: (String, String, String, String), rhs: (String, String, String, String), equal: Bool) {
        #expect((EquatablePack(lhs) == EquatablePack(rhs)) == equal)
    }
}
