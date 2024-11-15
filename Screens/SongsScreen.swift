//
//  SongsScreen.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//

import SwiftUI

struct SongsScreen: View {
    @Binding var path: NavigationPath
    var body: some View {
        Text("Songs")
    }
}

#Preview {
    SongsScreen(path: .constant(NavigationPath()))
}
