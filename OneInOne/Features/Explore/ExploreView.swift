//
//  ExploreView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Explore View
struct ExploreView: View {
    @State private var selectedCategory: ChallengeCategory?
    @State private var showARQuest = false
    
    let categories = [
        ChallengeCategory(title: "Creative", count: 24, color: .purple, icon: "paintbrush.fill"),
        ChallengeCategory(title: "Adventure", count: 18, color: .green, icon: "figure.hiking"),
        ChallengeCategory(title: "Social", count: 31, color: .orange, icon: "person.2.fill"),
        ChallengeCategory(title: "Mindful", count: 15, color: .blue, icon: "leaf.fill")
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 24) {
                    ARQuestSection(showARQuest: $showARQuest)
                    CategoryGrid(categories: categories, selectedCategory: $selectedCategory)
                    JustForYouSection()
                    TrendingLocationsSection()
                }
                .padding()
            }
            .background(Color(.systemGroupedBackground))
        }
        .sheet(isPresented: $showARQuest) {
            ARQuestView()
        }
    }
}
