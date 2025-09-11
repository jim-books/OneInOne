//
//  HomeView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Home View
struct HomeView: View {
    @Binding var showChallengeDetail: Bool
    @Binding var selectedChallenge: Challenge?
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    colors: [Color.blue.opacity(0.8), Color.purple.opacity(0.8)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 20) {
                        HeaderView()
                        LuckyDrawCard()
                        TrendingChallengesSection(
                            showChallengeDetail: $showChallengeDetail,
                            selectedChallenge: $selectedChallenge
                        )
                    }
                    .padding()
                }
            }
        }
    }
}
