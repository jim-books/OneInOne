//
//  ActiveNowSelection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Active Now Section
struct ActiveNowSection: View {
    let activeUsers = [
        ActiveUser(name: "Alex", color: .pink),
        ActiveUser(name: "Maya", color: .teal),
        ActiveUser(name: "Jordan", color: .purple),
        ActiveUser(name: "Sam", color: .orange)
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Active Now")
                    .font(.headline.bold())
                    .foregroundColor(.white)
                
                Spacer()
                
                Button("See All") {
                    // Action
                }
                .foregroundColor(.white.opacity(0.8))
            }
            
            HStack(spacing: 20) {
                ForEach(activeUsers) { user in
                    VStack(spacing: 8) {
                        ZStack {
                            Circle()
                                .fill(user.color)
                                .frame(width: 50, height: 50)
                            
                            Text(String(user.name.prefix(1)))
                                .font(.headline.bold())
                                .foregroundColor(.white)
                            
                            Circle()
                                .fill(.green)
                                .frame(width: 12, height: 12)
                                .offset(x: 18, y: -18)
                        }
                        
                        Text(user.name)
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
}

// MARK: - Group Challenges Section
struct GroupChallengesSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(systemName: "person.2.fill")
                    .foregroundColor(.white)
                Text("Group Challenges")
                    .font(.headline.bold())
                    .foregroundColor(.white)
            }
            
            VStack(spacing: 12) {
                GroupChallengeRow(
                    title: "Beach Cleanup Squad",
                    subtitle: "You, Alex + 4 others",
                    progress: 0.6,
                    status: "Active",
                    daysLeft: 2
                )
                
                GroupChallengeRow(
                    title: "Photo Marathon",
                    subtitle: "You and 3 friends",
                    progress: 0.0,
                    status: "Pending",
                    daysLeft: nil
                )
            }
        }
    }
}

struct GroupChallengeRow: View {
    let title: String
    let subtitle: String
    let progress: Double
    let status: String
    let daysLeft: Int?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(subtitle)
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.7))
                }
                
                Spacer()
                
                Text(status)
                    .font(.caption.bold())
                    .foregroundColor(status == "Active" ? .green : .orange)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(status == "Active" ? .green.opacity(0.2) : .orange.opacity(0.2))
                    .cornerRadius(8)
            }
            
            if progress > 0 {
                HStack {
                    Text("Progress: \(Int(progress * 100))% complete")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                    
                    Spacer()
                    
                    if let days = daysLeft {
                        Text("\(days) days left")
                            .font(.caption)
                            .foregroundColor(.white.opacity(0.8))
                    }
                }
                
                ProgressView(value: progress)
                    .tint(.blue)
            }
            
            HStack(spacing: -4) {
                ForEach(0..<4, id: \.self) { index in
                    Circle()
                        .fill([.pink, .teal, .orange, .purple][index])
                        .frame(width: 20, height: 20)
                        .overlay(Circle().stroke(.white, lineWidth: 1))
                }
                
                Spacer()
                
                Button(status == "Pending" ? "Join" : "View Details") {
                    // Action
                }
                .font(.caption.bold())
                .foregroundColor(.white)
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(.blue)
                .cornerRadius(12)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(12)
    }
}
