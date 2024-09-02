//
//  PostView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostView: View {
    let userImageName: String
    let imageName: String
    
    var body: some View {
        VStack(spacing: 20) {
            ///
            /// Header
            ///
            PostHeaderView(
                userImageName: userImageName
            )
            .padding(.horizontal, 10)
            
            ///
            /// Image
            ///
            PostImageView(imageName: imageName)
            
            ///
            /// Action buttons
            ///
            PostActionButtonsView()
                .padding(.horizontal, 10)
            
            ///
            /// Like view
            ///
            PostLikeView()
                .padding(.horizontal, 10)
            
            ///
            /// Caption
            ///
            PostCaptionView(
                caption: "That is the best year of my life because i've learned a lot of things and i've met a lot of people"
            )
            .padding(.horizontal, 10)
            
            ///
            /// Comments
            ///
            
            
            ///
            /// Date
            ///
            PostDateView(
                date: "1 hour ago"
            )
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    PostView(
        userImageName: "user1",
        imageName: "post1"
    )
}
