//
//  CameraView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 28/07/24.
//

import SwiftUI
import PhotosUI

struct CameraView: View {
    
    @State var isShowingPicker = false
    @State var isUsingCamera = false
    
    @State var image: Image? = nil
    
    var pickerConfig: PHPickerConfiguration {
        var config = PHPickerConfiguration(
            photoLibrary: PHPhotoLibrary.shared()
        )
        config.filter = .images
        config.selectionLimit = 1
        config.preferredAssetRepresentationMode = .current
        config.preselectedAssetIdentifiers = preselectedAssetIdentifiers
        return config
    }
    
    func processImageTaken(image: UIImage) {
        self.image = Image(uiImage: image)
    }
    
    func processSelectedImages(results: [PHPickerResult]) {
        guard !results.isEmpty else { return }
        
        results.forEach { result in
            result.itemProvider.loadObject(ofClass: UIImage.self) { object, error in
                if let error = error {
                    print("Error loading image: \(error.localizedDescription)")
                    return
                }
                
                guard let image = object as? UIImage else { return }
                
                DispatchQueue.main.async {
                    self.image = Image(uiImage: image)
                }
            }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                if image != nil {
                    ImageSelected(
                        image: image!
                    )
                }
                
                Spacer()
                
                HStack(spacing: 30) {
                    Button(action: {
                        isUsingCamera.toggle()
                        isShowingPicker = false
                    }) {
                        Text("Take Picture")
                    }.sheet(isPresented: $isUsingCamera, content: {
                        CaptureView(
                            onImagePicked: processImageTaken
                        )
                    })
                    
                    Button(action: {
                        isShowingPicker.toggle()
                        isUsingCamera = false
                    }) {
                        Text("Photo Library")
                    }.sheet(isPresented: $isShowingPicker, content: {
                        PickerView(
                            config: pickerConfig,
                            completion: processSelectedImages
                        )
                        .ignoresSafeArea()
                    })
                }
            }
            .navigationTitle("Camera")
        }
        .padding()
    }
}

#Preview {
    CameraView()
}
