//
//  StoryView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct StoryView: View {
    ///
    /// Attributes
    ///
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(
                width: 90,
                height: 90,
                alignment: .center
            )
            .background(Color.blue)
            .clipShape(Circle())
    }
}

#Preview {
    StoryView(imageName: "user1")
}
