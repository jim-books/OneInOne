//
//  CreateChallengeView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

struct CreateChallengeView: View {
    @State private var challengeTitle = ""
    @State private var challengeDescription = ""
    @State private var aiKeywords = ""
    @State private var selectedCategory = "Creative"
    @State private var selectedDifficulty = "Easy"
    @State private var isLocationBased = false
    @State private var showImagePicker = false
    @State private var selectedImages: [UIImage] = []
    
    let categories = ["Creative", "Adventure", "Social", "Mindful", "Photography", "Fitness"]
    let difficulties = ["Easy", "Medium", "Hard"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 24) {
                        HeaderSection()
                        AIAssistantSection(aiKeywords: $aiKeywords)
                        ChallengeDetailsSection(
                            challengeTitle: $challengeTitle,
                            challengeDescription: $challengeDescription,
                            selectedCategory: $selectedCategory,
                            selectedDifficulty: $selectedDifficulty,
                            isLocationBased: $isLocationBased,
                            categories: categories,
                            difficulties: difficulties
                        )
                        MediaUploadSection(
                            selectedImages: $selectedImages,
                            showImagePicker: $showImagePicker
                        )
                        LaunchButton()
                        QuickTemplatesSection()
                    }
                    .padding()
                }
            }
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(selectedImages: $selectedImages)
        }
    }
}
