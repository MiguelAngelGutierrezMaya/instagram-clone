//
//  CaptureView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 1/09/24.
//

import Foundation
import SwiftUI
import PhotosUI

struct CaptureView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    
    @Environment(\.presentationMode) var presentationMode
    
    var onImagePicked: (UIImage) -> Void
    
    init(onImagePicked: @escaping (UIImage) -> Void) {
        self.onImagePicked = onImagePicked
    }
    
    func makeCoordinator() -> CaptureViewCoordinator {
        return CaptureViewCoordinator(
            onCancel: {
                self.presentationMode.wrappedValue.dismiss()
            },
            onImagePicked: { image in
                self.onImagePicked(image)
                self.presentationMode.wrappedValue.dismiss()
            }
        )
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
}

class CaptureViewCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var onCanceled: () -> Void
    var onImagePicked: (UIImage) -> Void
    
    init(onCancel: @escaping () -> Void, onImagePicked: @escaping (UIImage) -> Void) {
        self.onCanceled = onCancel
        self.onImagePicked = onImagePicked
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        onCanceled()
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else {
            print("No image found")
            return
        }
        
        onImagePicked(image)
    }
}

/// Class to pick an image from the library using PHPicker

var preselectedAssetIdentifiers = [String]()

struct PickerView: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    
    let config: PHPickerConfiguration
    let completion: (_ selectedImages: [PHPickerResult]) -> Void
    
    init(config: PHPickerConfiguration, completion: @escaping (_ selectedImages: [PHPickerResult]) -> Void) {
        self.config = config
        self.completion = completion
    }
    
    func makeCoordinator() -> PickerViewCoordinator {
        return PickerViewCoordinator(
            parent: self
        )
    }
    
    func makeUIViewController(context: Context) ->  PHPickerViewController {
        let controller = PHPickerViewController(configuration: config)
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        // We'll not update anything on this view.
    }
}

class PickerViewCoordinator: PHPickerViewControllerDelegate {
    let parent: PickerView
    
    
    init(parent: PickerView) {
        self.parent = parent
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        preselectedAssetIdentifiers = results.map(\.assetIdentifier!)
        self.parent.completion(results)
        self.parent.presentationMode.wrappedValue.dismiss()
    }
}
