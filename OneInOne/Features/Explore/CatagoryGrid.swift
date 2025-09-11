//
//  CatagoryGrid.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Category Grid
struct CategoryGrid: View {
    let categories: [ChallengeCategory]
    @Binding var selectedCategory: ChallengeCategory?
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 12), count: 2), spacing: 12) {
            ForEach(categories) { category in
                CategoryCard(category: category) {
                    selectedCategory = category
                }
            }
        }
    }
}
