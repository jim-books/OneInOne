//
//  AIAssistantSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - AI Assistant Section
struct AIAssistantSection: View {
    @Binding var aiKeywords: String
    @State private var isGenerating = false
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 12) {
                Image(systemName: "brain.head.profile")
                    .font(.title2)
                    .foregroundColor(.white)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("AI Creative Assistant")
                        .font(.headline.bold())
                        .foregroundColor(.white)
                    
                    Text("Get inspiration for your next challenge")
                        .font(.subheadline)
                        .foregroundColor(.white.opacity(0.9))
                }
                
                Spacer()
            }
            
            HStack(spacing: 12) {
                TextField("Enter keywords or theme...", text: $aiKeywords)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.body)
                
                Button(action: {
                    withAnimation {
                        isGenerating = true
                    }
                    // Simulate AI generation
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation {
                            isGenerating = false
                        }
                    }
                }) {
                    Image(systemName: isGenerating ? "sparkles" : "wand.and.stars")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(12)
                        .background(.ultraThinMaterial)
                        .cornerRadius(8)
                        .rotationEffect(.degrees(isGenerating ? 360 : 0))
                        .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: isGenerating)
                }
            }
        }
        .padding()
        .background(
            LinearGradient(
                colors: [.purple, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .cornerRadius(16)
    }
}
