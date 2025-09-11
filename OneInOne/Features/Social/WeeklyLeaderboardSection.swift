//
//  WeeklyLeaderboardSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Weekly Leaderboard Section
struct WeeklyLeaderboardSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "trophy.fill")
                    .foregroundColor(.yellow)
                Text("Weekly Leaderboard")
                    .font(.headline.bold())
                    .foregroundColor(.white)
            }
            
            // Placeholder for leaderboard content
            Text("Coming Soon...")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.7))
                .padding()
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .cornerRadius(12)
        }
    }
}
