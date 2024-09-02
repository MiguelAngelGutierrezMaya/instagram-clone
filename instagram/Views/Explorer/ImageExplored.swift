//
//  ImageExplored.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 23/08/24.
//

import SwiftUI

struct ImageExplored: View {
    ///
    /// Attributes
    ///
    var imageName: String
    
    var body: some View {
        NavigationLink(
            destination: PostView(
                userImageName: "user1",
                imageName: imageName
            ),
            label: {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: 200,
                        // height: 200,
                        alignment: .center
                    )
                    .clipped()
                    .cornerRadius(10)
            }
        )
    }
}

#Preview {
    ImageExplored(imageName: "post1")
}
