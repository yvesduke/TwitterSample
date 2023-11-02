//
//  HomeViewModel.swift
//  Twitter
//
//  Created by Yves Dukuze on 02/11/2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var tweets: [Twitter] = []
    
    private func getJsonData() -> String {
        
        return """
        [
            {
                "id": 1,
                "username": "LeanD",
                "profilePic": "https://images.unsplash.com/photo-1580489944761-15a19d654956?auto=format&fit=crop&q=80&w=2861&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "text": "Super tower has now changed to an area of 1",
                "image": "https://images.unsplash.com/photo-1567589884489-6e4a30e67d86?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fFN1cGVyJTIwdG93ZXJ8ZW58MHx8MHx8fDA%3D",
                "videoURL": "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
                "isLiked": true,
                "isRetweeted": true,
                "numberOfLikes": 0,
                "numberOfRetweets": 96
            },
            {
                "id": 2,
                "username": "Marcyee_T",
                "profilePic": "https://images.unsplash.com/flagged/photo-1578025468422-e69c574eb76a?auto=format&fit=crop&q=80&w=2832&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "text": "Arsanal lost to Westham by 3 -1 last night",
                "image": "https://images.unsplash.com/photo-1577214250144-73af4b7364f6?auto=format&fit=crop&q=80&w=2940&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "videoURL": "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
                "isLiked": false,
                "isRetweeted": true,
                "numberOfLikes": 30,
                "numberOfRetweets": 9
            },
            {
                "id": 3,
                "username": "Paul_1",
                "profilePic": "https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?auto=format&fit=crop&q=80&w=3087&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "text": "Scarlett Johansson Files Lawsuit After Company Used An AI Version Of Her In Recent Advertisement",
                "image": "https://plus.unsplash.com/premium_photo-1661313688981-8c8dfce0d840?auto=format&fit=crop&q=80&w=2940&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                "videoURL": "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
                "isLiked": true,
                "isRetweeted": false,
                "numberOfLikes": 390,
                "numberOfRetweets": 6
            }
        ]
        """
        
    }
    
    
    func getTweets() {
        let response = getJsonData()
        
        guard let data = response.data(using: .utf8) else {
            return
        }
        do {
            tweets = try JSONDecoder().decode([Twitter].self, from: data)
        } catch let error {
            print(error)
        }
    }
}

