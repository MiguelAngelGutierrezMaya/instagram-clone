//
//  PostLikeView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostLikeView: View {
    var body: some View {
        HStack(
            alignment: .center
        ) {
            // Like count
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: 30,
                    height: 30,
                    alignment: .center
                )
                .foregroundColor(Color.red)
            Text("1 like")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color(.link))
            Spacer()
        }
    }
}

#Preview {
    PostLikeView()
}
