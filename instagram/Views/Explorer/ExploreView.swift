//
//  ExplorerView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 28/07/24.
//

import SwiftUI

struct ExplorerView: View {
    ///
    /// Attributes
    ///
    @State var text: String = ""
    
    var imageNames = (1...5).map({ "post\($0)" })
    
    var columns: [GridItem] = [
        //        GridItem(
        //            .adaptive(
        //                minimum: 100,
        //                maximum: 220
        //            ),
        //            spacing: 1,
        //            alignment: .center
        //        )
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible(minimum: 200))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0...20, id: \.self) {num in
                        let imageNum = num % imageNames.count
                        
                        ImageExplored(
                            imageName: imageNames[imageNum]
                        )
                    }
                }
            }
            .searchable(text: $text, prompt: "Search")
            .navigationTitle("Explorer")
            .onAppear {
                print("ExplorerView appeared")
            }
            .onDisappear {
                print("ExplorerView disappeared")
            }
        }
    }
}

#Preview {
    ExplorerView()
}
