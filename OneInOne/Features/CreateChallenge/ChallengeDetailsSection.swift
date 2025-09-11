//
//  ChallengeDetailsSection.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Challenge Details Section
struct ChallengeDetailsSection: View {
    @Binding var challengeTitle: String
    @Binding var challengeDescription: String
    @Binding var selectedCategory: String
    @Binding var selectedDifficulty: String
    @Binding var isLocationBased: Bool
    
    let categories: [String]
    let difficulties: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Challenge Title
            VStack(alignment: .leading, spacing: 8) {
                Text("Challenge Title")
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                TextField("Give your challenge a catchy name...", text: $challengeTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            // Description
            VStack(alignment: .leading, spacing: 8) {
                Text("Description")
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                TextEditor(text: $challengeDescription)
                    .frame(minHeight: 100)
                    .padding(8)
                    .background(Color(.systemBackground))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(.systemGray4), lineWidth: 1)
                    )
                    .overlay(
                        Text("Describe your challenge...")
                            .foregroundColor(.secondary)
                            .padding(.leading, 12)
                            .padding(.top, 16)
                            .opacity(challengeDescription.isEmpty ? 1 : 0),
                        alignment: .topLeading
                    )
            }
            
            // Category
            VStack(alignment: .leading, spacing: 8) {
                Text("Category")
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                Menu {
                    ForEach(categories, id: \.self) { category in
                        Button(category) {
                            selectedCategory = category
                        }
                    }
                } label: {
                    HStack {
                        Text(selectedCategory)
                            .foregroundColor(.primary)
                        Spacer()
                        Image(systemName: "chevron.down")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
            }
            
            // Difficulty
            VStack(alignment: .leading, spacing: 8) {
                Text("Difficulty")
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                HStack(spacing: 12) {
                    ForEach(difficulties, id: \.self) { difficulty in
                        Button(action: {
                            selectedDifficulty = difficulty
                        }) {
                            Text(difficulty)
                                .font(.headline)
                                .foregroundColor(selectedDifficulty == difficulty ? .white : .primary)
                                .padding(.horizontal, 24)
                                .padding(.vertical, 12)
                                .background(
                                    selectedDifficulty == difficulty ?
                                    Color.green : Color(.systemGray6)
                                )
                                .cornerRadius(20)
                        }
                    }
                    Spacer()
                }
            }
            
            // Location
            VStack(alignment: .leading, spacing: 8) {
                Text("Add Location?")
                    .font(.headline.bold())
                    .foregroundColor(.primary)
                
                Button(action: {
                    isLocationBased.toggle()
                }) {
                    HStack {
                        Image(systemName: isLocationBased ? "checkmark.square.fill" : "square")
                            .foregroundColor(isLocationBased ? .blue : .secondary)
                        
                        Text("Make this a location-based challenge")
                            .foregroundColor(.primary)
                        
                        Spacer()
                    }
                }
            }
        }
    }
}
