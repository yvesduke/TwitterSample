//
//  Tweet.swift
//  Twitter
//
//  Created by Yves Dukuze on 02/11/2023.
//

import Foundation


struct Twitter: Codable, Hashable {
    let id: Int
    let username: String
    let profilePic: String
    let text, image, videoURL: String
    let isLiked, isRetweeted: Bool
    let numberOfLikes, numberOfRetweets: Int
}
