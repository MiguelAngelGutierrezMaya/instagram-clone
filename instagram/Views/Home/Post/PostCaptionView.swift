//
//  PostCaptionView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostCaptionView: View {
    ///
    /// Attributes
    ///
    let caption: String
    
    var body: some View {
        HStack {
            Text(caption)
                .font(.headline)
                .fontWeight(.semibold)
            Spacer()
        }
    }
}

#Preview {
    PostCaptionView(
        caption: "This is a caption"
    )
}
