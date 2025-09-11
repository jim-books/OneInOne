//
//  ARQuestSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - AR Quest Section
struct ARQuestSection: View {
    @Binding var showARQuest: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "wand.and.rays")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Text("AR Quests")
                .font(.title.bold())
                .foregroundColor(.white)
            
            Text("Discover hidden digital treasures in your real world!")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.9))
                .multilineTextAlignment(.center)
            
            Button(action: {
                showARQuest = true
            }) {
                HStack {
                    Image(systemName: "play.fill")
                    Text("Start AR Adventure")
                }
                .font(.headline.bold())
                .foregroundColor(.purple)
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(.white)
                .cornerRadius(20)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            LinearGradient(
                colors: [.mint, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(20)
    }
}
