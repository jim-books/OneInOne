//
//  TrendingChallengesSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Trending Challenges Section
struct TrendingChallengesSection: View {
    @Binding var showChallengeDetail: Bool
    @Binding var selectedChallenge: Challenge?
    
    let challenges = Challenge.mockChallenges
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Trending Challenges")
                .font(.title2.bold())
                .foregroundColor(.white)
            
            ForEach(challenges) { challenge in
                ChallengeCard(challenge: challenge) {
                    selectedChallenge = challenge
                    showChallengeDetail = true
                }
            }
        }
    }
}
