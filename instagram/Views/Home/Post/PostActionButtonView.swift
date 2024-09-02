//
//  PostActionButtonView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostActionButtonView: View {
    ///
    /// Attributes
    ///
    let icon: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: 40,
                    height: 40,
                    alignment: .center
                )
                .foregroundColor(Color(.label))
        }
    }
}

#Preview {
    PostActionButtonView(
        icon: "heart",
        action: {}
    )
}
