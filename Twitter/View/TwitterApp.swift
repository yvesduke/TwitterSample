//
//  TwitterApp.swift
//  Twitter
//
//  Created by Yves Dukuze on 02/11/2023.
//

import SwiftUI

@main
struct TwitterApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModel())
        }
    }
}
