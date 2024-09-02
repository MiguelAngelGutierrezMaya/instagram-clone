//
//  ButtonImage.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 1/09/24.
//

import SwiftUI

struct ButtonImage: View {
    
    var title: String
    var action: () -> Void
    @Binding var isPresented: Bool
    
    var body: some View {
        Button(action: action) {
            Text(title)
        }.sheet(
            isPresented: $isPresented,
            content: {
                Text("")
            }
        )
    }
}

#Preview {
    ButtonImage(
        title: "Select image",
        action: {
            print("Button pressed")
        },
        content: {
            Text("Content")
        }
        isPresented: .constant(false)
    )
}
