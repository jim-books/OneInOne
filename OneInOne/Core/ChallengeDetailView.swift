//
//  ChallengeDetailView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Challenge Detail View
struct ChallengeDetailView: View {
    let challenge: Challenge
    @Binding var isPresented: Bool
    @State private var hasJoined = false
    
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
                    VStack(alignment: .leading, spacing: 20) {
                        // Header
                        HStack {
                            Button("Cancel") {
                                isPresented = false
                            }
                            .foregroundColor(.white)
                            
                            Spacer()
                            
                            Button(action: {}) {
                                Image(systemName: "pencil")
                                    .foregroundColor(.white)
                            }
                        }
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text(challenge.title)
                                .font(.title.bold())
                                .foregroundColor(.white)
                            
                            Text("Discover the hidden art in your neighborhood")
                                .font(.headline)
                                .foregroundColor(.white.opacity(0.8))
                            
                            // Challenge Description
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Challenge Description")
                                    .font(.headline.bold())
                                    .foregroundColor(.white)
                                
                                Text("Find and photograph 3 pieces of street art in your neighborhood. Look for murals, graffiti art, or artistic installations. Share your discoveries and learn about local artists!")
                                    .font(.body)
                                    .foregroundColor(.white.opacity(0.9))
                                
                                HStack {
                                    Text("Medium")
                                        .font(.caption.bold())
                                        .foregroundColor(.white)
                                    
                                    Text("1-2 hours")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                    
                                    Spacer()
                                    
                                    HStack(spacing: 4) {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.yellow)
                                        Text("150 pts")
                                            .font(.caption.bold())
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            .padding()
                            .background(.ultraThinMaterial)
                            .cornerRadius(12)
                            
                            // Participants
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Participants")
                                    .font(.headline.bold())
                                    .foregroundColor(.white)
                                
                                HStack {
                                    HStack(spacing: -8) {
                                        ForEach(0..<3, id: \.self) { index in
                                            Circle()
                                                .fill([.blue, .green, .orange][index])
                                                .frame(width: 32, height: 32)
                                                .overlay(Circle().stroke(.white, lineWidth: 2))
                                        }
                                        
                                        Text("+244")
                                            .font(.caption.bold())
                                            .foregroundColor(.white)
                                            .padding(.leading, 8)
                                    }
                                    
                                    Spacer()
                                    
                                    Text("247 joined")
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.8))
                                }
                            }
                            .padding()
                            .background(.ultraThinMaterial)
                            .cornerRadius(12)
                            
                            // Join Button
                            Button(action: {
                                withAnimation {
                                    hasJoined.toggle()
                                }
                            }) {
                                HStack {
                                    Image(systemName: hasJoined ? "checkmark" : "plus")
                                    Text(hasJoined ? "Joined!" : "Join Challenge")
                                }
                                .font(.headline.bold())
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(hasJoined ? .green : .purple)
                                .cornerRadius(16)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}
