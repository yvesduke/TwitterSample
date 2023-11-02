//
//  TweetView.swift
//  Twitter
//
//  Created by Yves Dukuze on 02/11/2023.
//

import SwiftUI


struct TwitterView: View {
    
    let tweet: Twitter

    var body: some View {
        VStack(alignment: .leading) {
            Text(tweet.username).font(.title3).foregroundColor(Color(.systemGray2))
                HStack {
                    if let url = URL(string: tweet.profilePic) {
                        TweetsAsyncImageView(url: url)
                            .frame(width: 150, height: 150)
                            .mask(RoundedRectangle(cornerRadius: 15))
                            .padding(3)
                    }
                    Divider()
                    VStack{
                        Text(tweet.text).font(.caption)
                        
                        ScrollView(.horizontal) {
                            LazyHStack {

                                    if let url = URL(string: tweet.image) {
                                        TweetsAsyncImageView(url: url)
                                            .frame(width: 150, height: 120)
                                            .mask(RoundedRectangle(cornerRadius: 9))
                                    }
                                TweetsVideoUIView(url: URL(string: tweet.videoURL)!)
                                    .frame(width: 150, height: 120)
                                    .mask(RoundedRectangle(cornerSize: CGSize(width: 9, height: 9)))
                            }
                        }
                        HStack {
                            Group {
                                VStack {
                                    Image(systemName: "repeat")
                                    Text("\(tweet.numberOfRetweets)").font(.caption)
                                }
                                VStack {
                                    Image(systemName: "hand.thumbsup.fill")
                                    Text("\(tweet.numberOfLikes)").font(.caption)
                                }
                                VStack {
                                    Image(systemName: "arrowshape.turn.up.left.fill")
                                    Text("0").font(.caption)
                                }
                                VStack {
                                    Image(systemName: "square.and.arrow.up")
                                    Text("0").font(.caption)
                                }
                            }
                        }
                    }
                    
                }
        }
        .padding()
    }
}
