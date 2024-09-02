//
//  ContentView.swift
//  instagram
//
//  Created by Miguel Angel Gutierrez Maya on 28/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomewFeedView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ExplorerView()
                .tabItem {
                    // Image(systemName: "magnifyingglass")
                    Image(systemName: "safari")
                    Text("Explore")
                }
            
            CameraView()
                .tabItem {
                    Image(systemName: "camera")
                    Text("Camera")
                }
            
            NotificationView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    ContentView()
}
