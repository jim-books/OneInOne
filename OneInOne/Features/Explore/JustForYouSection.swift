//
//  JustForYouSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Just For You Section
struct JustForYouSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Just for You")
                .font(.title2.bold())
                .foregroundColor(.primary)
            
            VStack(spacing: 12) {
                PersonalizedChallengeRow(
                    title: "Photo Story Challenge",
                    subtitle: "Based on your love for photography",
                    description: "Create a visual story using 5 photos that represent your day",
                    difficulty: "Easy",
                    duration: "30 min",
                    icon: "camera.fill",
                    color: .blue
                )
                
                PersonalizedChallengeRow(
                    title: "Local History Hunt",
                    subtitle: "Trending in your area",
                    description: "Discover the hidden stories behind 3 historical landmarks near you",
                    difficulty: "Medium",
                    duration: "1-2 hours",
                    icon: "building.columns.fill",
                    color: .brown
                )
            }
        }
    }
}

struct PersonalizedChallengeRow: View {
    let title: String
    let subtitle: String
    let description: String
    let difficulty: String
    let duration: String
    let icon: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                Text(subtitle)
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text(description)
                    .font(.body)
                    .foregroundColor(.primary)
                    .fixedSize(horizontal: false, vertical: true)
                
                HStack(spacing: 12) {
                    Text(difficulty)
                        .font(.caption.bold())
                        .foregroundColor(.green)
                        .padding(.horizontal, 8)
                        .padding(.vertical, 4)
                        .background(.green.opacity(0.1))
                        .cornerRadius(8)
                    
                    Text(duration)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            
            Spacer()
            
            VStack(spacing: 12) {
                Image(systemName: icon)
                    .font(.title)
                    .foregroundColor(color)
                
                Button("Start") {
                    // Start challenge action
                }
                .font(.caption.bold())
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(.purple)
                .cornerRadius(16)
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(12)
    }
}


