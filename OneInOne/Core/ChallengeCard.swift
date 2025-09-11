//
//  ChallengeCard.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Challenge Card
struct ChallengeCard: View {
    let challenge: Challenge
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    Text(challenge.title)
                        .font(.headline.bold())
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    if challenge.isStory {
                        Text("STORY")
                            .font(.caption.bold())
                            .foregroundColor(.black)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(.yellow)
                            .cornerRadius(8)
                    }
                }
                
                Text(challenge.description)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))
                
                HStack {
                    HStack(spacing: -8) {
                        ForEach(0..<min(challenge.participantCount, 3), id: \.self) { index in
                            Circle()
                                .fill(challenge.participantColors[1])
                                .frame(width: 24, height: 24)
                                .overlay(
                                    Circle()
                                        .stroke(.white, lineWidth: 2)
                                )
                        }
                    }
                    
                    Text("+\(challenge.participantCount) participants")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                    
                    Spacer()
                    
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("\(challenge.points) pts")
                            .font(.caption.bold())
                            .foregroundColor(.white)
                    }
                }
            }
            .padding()
            .background(challenge.backgroundColor)
            .cornerRadius(16)
        }
        .buttonStyle(PlainButtonStyle())
    }
}
