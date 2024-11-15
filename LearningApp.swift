//
//  LearningApp.swift
//  Learning
//
//  Created by Mac on 12/11/2024.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}
struct RootView:View {
    @State var path=NavigationPath()
    var body: some View {
        NavigationStack(path: $path){
            SplashScreen(path: $path).withNavigationHandler(path: $path)
        }
    }
}
