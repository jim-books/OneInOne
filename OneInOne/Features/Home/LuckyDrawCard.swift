//
//  LuckyDrawCard.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Lucky Draw Card
struct LuckyDrawCard: View {
    @State private var isSpinning = false
    
    var body: some View {
        VStack(spacing: 16) {
            ZStack {
                Circle()
                    .fill(LinearGradient(
                        colors: [.orange, .yellow],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ))
                    .frame(width: 80, height: 80)
                    .rotationEffect(.degrees(isSpinning ? 360 : 0))
                    .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: isSpinning)
                
                Image(systemName: "gift.fill")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            VStack(spacing: 8) {
                Text("Today's Lucky Draw")
                    .font(.title2.bold())
                    .foregroundColor(.white)
                
                Text("Spin for your daily challenge!")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            
            Button(action: {
                withAnimation {
                    isSpinning.toggle()
                }
            }) {
                Text("Spin Now!")
                    .font(.headline.bold())
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        LinearGradient(
                            colors: [.purple, .blue],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(25)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(20)
    }
}
