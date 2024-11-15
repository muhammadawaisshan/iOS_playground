//
//  NavigationHandler.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//

import SwiftUI

struct NavigationHandler: ViewModifier {
    @Binding var path: NavigationPath
    
    func body(content: Content) -> some View {
        content.navigationDestination(for: Destinations.self) { destination in
            switch destination {
            case .homeScreen:
                DashboardScreen(path: $path).navigationBarBackButtonHidden()
            case .soundsScreen:
                SoundsScreen(path: $path)/*.navigationBarBackButtonHidden()*/
            case .songsScreen:
                SongsScreen(path: $path)/*.navigationBarBackButtonHidden()*/
            case .whistleScreen:
                WhistleScreen(path: $path)/*.navigationBarBackButtonHidden()*/
            case .trainingScreen:
                TrainingScreen(path: $path)/*.navigationBarBackButtonHidden()*/
            case .premiumScreen(let isComingFromSplash):
                PremiumScreen(isComingFromSplash:isComingFromSplash , path: $path).navigationBarBackButtonHidden()            }
        }
    }
}

extension View {
    func withNavigationHandler(path: Binding<NavigationPath>) -> some View {
        self.modifier(NavigationHandler(path: path))
    }
}
