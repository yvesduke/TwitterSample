//
//  TweetsVideoUIView.swift
//  Twitter
//
//  Created by Yves Dukuze on 02/11/2023.
//

import SwiftUI
import AVKit

struct TweetsVideoUIView: View {

    let url: URL

    var body: some View {
        VideoPlayer(player: AVPlayer(url: url))
            .frame(height: 400)
    }
}

struct TweetsVideoUIView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsVideoUIView(url: URL(string: "")!)
    }
}
