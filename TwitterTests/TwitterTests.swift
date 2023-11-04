//
//  TwitterTests.swift
//  TwitterTests
//
//  Created by Yves Dukuze on 02/11/2023.
//

import XCTest
@testable import Twitter

final class TwitterTests: XCTestCase {

    var viewModel: HomeViewModel!

    override func setUpWithError() throws {
        viewModel = HomeViewModel()
    }

    override func tearDownWithError() throws {
       viewModel = nil
    }

    func testGetTweets() {
        viewModel.getTweets()
        XCTAssertEqual(viewModel.tweets.count, 3, "The number of tweets should be 3")
    }

    func testGetFirstTweet() {
        viewModel.getTweets()
        let firstTweet = viewModel.tweets[0]
        XCTAssertEqual(firstTweet.id, 1, "The id of the first tweet should be 1")
        XCTAssertEqual(firstTweet.username, "LeanD", "The username of the first tweet should be LeanD")
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }
    
    

}
