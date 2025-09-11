//
//  ContentView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Content View
struct ContentView: View {
    @State private var selectedTab = 0
    @State private var showChallengeDetail = false
    @State private var selectedChallenge: Challenge?
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(showChallengeDetail: $showChallengeDetail, selectedChallenge: $selectedChallenge)
                .tabItem {
                    Image(systemName: "house.fill")
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            CreateChallengeView()
                .tabItem {
                    Image(systemName: "circle.fill")
                }
                .tag(2)
            
            SocialView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
                .tag(4)
        }
        .accentColor(.white)
        .sheet(isPresented: $showChallengeDetail) {
            if let challenge = selectedChallenge {
                ChallengeDetailView(challenge: challenge, isPresented: $showChallengeDetail)
            }
        }
    }
}

