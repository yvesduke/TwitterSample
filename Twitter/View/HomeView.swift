//
//  ContentView.swift
//  Twitter
//
//  Created by Yves Dukuze on 02/11/2023.
//

import SwiftUI

struct HomeView: View {

    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        ScrollView {
            ForEach(viewModel.tweets, id: \.id) { tweet in
                TwitterView(tweet: tweet)
                Divider()
            }
        }
        .onAppear {
            viewModel.getTweets()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}
