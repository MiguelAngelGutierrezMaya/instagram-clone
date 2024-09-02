//
//  ImageSelected.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 1/09/24.
//

import SwiftUI

struct ImageSelected: View {
    ///
    /// Attributes
    ///
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipped()
            .frame(
                width: UIScreen.main.bounds.width,
                alignment: .center
            )
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
    }
}

#Preview {
    ImageSelected(
        image: Image("post1")
    )
}
