//
//  PostActionButtonsView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostActionButtonsView: View {
    var body: some View {
        HStack(
            alignment: .center,
            spacing: 20
        ) {
            PostActionButtonView(
                icon: "heart",
                action: {}
            )
            PostActionButtonView(
                icon: "message",
                action: {}
            )
            PostActionButtonView(
                icon: "square.and.arrow.up",
                action: {}
            )
            Spacer()
        }
    }
}

#Preview {
    PostActionButtonsView()
}
