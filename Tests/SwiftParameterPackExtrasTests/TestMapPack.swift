//
//  TestMapPack.swift
//  SwiftParameterPackExtras
//
//  Created by Annalise Mariottini on 12/2/24.
//

import Testing
import SwiftParameterPackExtras

struct TestMapPack {
    @Test(arguments: [
        ("", ""),
        ("abc", "abc"),
    ])
    func testMapPack(value: String, expectedValue: String) {
        #expect(MapPack(value, transform: { "\($0)" }) == expectedValue)
    }

    @Test(arguments: [
        (("", ""), ""),
        (("abc", "def"), "abcdef"),
    ])
    func testMapPack(value: (String, String), expectedValue: String) {
        #expect(MapPack(value, transform: { "\($0.0)\($0.1)" }) == expectedValue)
    }

    @Test(arguments: [
        (("", "", ""), ""),
        (("abc", "def", "ghi"), "abcdefghi"),
    ])
    func testMapPack(value: (String, String, String), expectedValue: String) {
        #expect(MapPack(value, transform: { "\($0.0)\($0.1)\($0.2)" }) == expectedValue)
    }

    @Test(arguments: [
        (("", "", "", ""), ""),
        (("abc", "def", "ghi", "jkl"), "abcdefghijkl"),
    ])
    func testMapPack(value: (String, String, String, String), expectedValue: String) {
        #expect(MapPack(value, transform: { "\($0.0)\($0.1)\($0.2)\($0.3)" }) == expectedValue)
    }
}
