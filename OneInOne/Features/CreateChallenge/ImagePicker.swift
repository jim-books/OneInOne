//
//  ImagePicker.swift
//  OneInOne
//
//  Created by jimbook on 11/9/2025.
//

import SwiftUI

// MARK: - Image Picker (Placeholder)
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImages: [UIImage]
    
    func makeUIViewController(context: Context) -> UIViewController {
        let picker = UIViewController()
        picker.view.backgroundColor = .systemBackground
        
        let label = UILabel()
        label.text = "Image Picker Placeholder"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        picker.view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: picker.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: picker.view.centerYAnchor)
        ])
        
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

