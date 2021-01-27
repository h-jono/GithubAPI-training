//
//  File.swift
//  
//
//  Created by 城野 on 2021/01/23.
//

import Foundation
import XCTest
import GitHubSearch

class RepositoryTests: XCTestCase {
    class RepositoryTests: XCTestCase {
        func testDecode() throws {
            let jsonDecoder = JSONDecoder()
            let data = Repository.exampleJSON.data(using: .utf8)!
            let repository = try jsonDecoder.decode(Repository.self, from: data)
            XCTAssertEqual(repository.id, 44838948)
            XCTAssertEqual(repository.name, "swift")
            XCTAssertEqual(repository.fullName, "apple/swift")
            XCTAssertEqual(repository.owner.id, 10639145)
        }
    }

}
