//
//  PostDateView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct PostDateView: View {
    ///
    /// Attributes
    ///
    let date: String
    
    var body: some View {
        HStack {
            Text("1 hour ago")
                .font(.caption)
                .foregroundColor(Color(.secondaryLabel))
            Spacer()
        }
    }
}

#Preview {
    PostDateView(
        date: "1 hour ago"
    )
}
