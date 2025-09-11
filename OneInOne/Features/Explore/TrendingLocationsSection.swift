//
//  TrendingLocationsSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Trending Locations Section
struct TrendingLocationsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "map.fill")
                    .foregroundColor(.red)
                Text("Trending Locations")
                    .font(.headline.bold())
                    .foregroundColor(.primary)
            }
            
            VStack(spacing: 12) {
                TrendingLocationCard(
                    name: "Sunrise Point",
                    checkIns: 15,
                    timeframe: "today"
                )
            }
        }
    }
}

struct TrendingLocationCard: View {
    let name: String
    let checkIns: Int
    let timeframe: String
    
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(
                    colors: [.blue, .purple],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                
                VStack(spacing: 8) {
                    Image(systemName: "mountain.2.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Text(name)
                        .font(.title2.bold())
                        .foregroundColor(.white)
                }
            }
            .frame(height: 120)
            .cornerRadius(12)
            
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Early Bird Challenge")
                        .font(.headline.bold())
                        .foregroundColor(.primary)
                    
                    Text("\(checkIns) people checked in \(timeframe)")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Button("Visit") {
                    // Visit location action
                }
                .font(.caption.bold())
                .foregroundColor(.white)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(.blue)
                .cornerRadius(16)
            }
            .padding(.horizontal)
            .padding(.bottom)
        }
        .background(Color(.systemBackground))
        .cornerRadius(12)
    }
}
