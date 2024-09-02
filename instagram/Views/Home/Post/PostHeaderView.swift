//
//  PostHeaderView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostHeaderView: View {
    var userImageName: String
    
    var body: some View {
        HStack {
            // User Image
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(
                    width: 40,
                    height: 40,
                    alignment: .center
                )
                .foregroundColor(Color.blue)
                .clipShape(Circle())
            
            Text("Username")
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
        }
    }
}

#Preview {
    PostHeaderView(
        userImageName: "user1"
    )
}
