//
//  HomewFeedView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 28/07/24.
//

import SwiftUI

struct HomewFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (
                    spacing: 20
                ) {
                    StoriesView()
                    
                    ForEach(1...5, id: \.self) { num in
                        PostView(
                            userImageName: "user\(num)",
                            imageName: "post\(num)"
                        )
                        .padding(.bottom, 10)
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}



#Preview {
    HomewFeedView()
}
