//
//  StoriesView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 10/08/24.
//

import SwiftUI

struct StoriesView: View {
    
    let data = (1...5).map({ "user\($0)" })
    
    var body: some View {
        ScrollView(
            .horizontal,
            showsIndicators: false
        ) {
            HStack {
                ForEach(data, id: \.self) { imageName in
                    StoryView(imageName: imageName)
                }
            }
        }
    }
}

#Preview {
    StoriesView()
}
