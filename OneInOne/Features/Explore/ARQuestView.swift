//
//  ARQuestView.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - AR Quest View
struct ARQuestView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Text("AR Quest Coming Soon!")
                    .font(.title)
                    .padding()
                
                Button("Close") {
                    dismiss()
                }
                .padding()
            }
            .navigationTitle("AR Adventure")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

