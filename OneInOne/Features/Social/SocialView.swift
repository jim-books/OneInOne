//
//  SocialView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Social View
struct SocialView: View {
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
                        SquadCard()
                        ActiveNowSection()
                        GroupChallengesSection()
                        WeeklyLeaderboardSection()
                    }
                    .padding()
                }
            }
        }
    }
}
