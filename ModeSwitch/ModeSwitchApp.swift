//
//  ModeSwitchApp.swift
//  ModeSwitch
//
//  Created by Ramill Ibragimov on 23.09.2020.
//

import SwiftUI

@main
struct ModeSwitchApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
                Text("Profile")
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
            //.environment(\.colorScheme, isDarkMode ? .dark : .light)
            .preferredColorScheme(isDarkMode ? .dark : .light)
            .accentColor(.primary)
        }
    }
}
