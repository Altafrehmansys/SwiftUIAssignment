//
//  HomeView.swift
//  SwiftUIAssignmet
//
//  Created by Altaf Ur Rehman on 09/01/2024.
//

import SwiftUI

struct HomeView: View {
    @State var path = NavigationPath()
    var body: some View {
        TabView {
            ProfileView(path: $path)
                .tabItem {
                    Color.appColorGreen
                }
        }
        .accentColor(.appColorGreen)
        .onAppear() {
            UITabBar.appearance().barTintColor = .appColorGrayLight
        }
    }
}

#Preview {
    HomeView()
}
