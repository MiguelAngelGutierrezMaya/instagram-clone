//
//  PostImageView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostImageView: View {
    ///
    ///
    ///
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            // .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .clipped()
            .frame(
                width: UIScreen.main.bounds.width,
                // height: 300,
                alignment: .center
            )
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
    }
}

#Preview {
    PostImageView(imageName: "post5")
}
