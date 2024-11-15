//
//  WhistleScreen.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//

import SwiftUI

struct WhistleScreen: View {
    @Binding var path: NavigationPath
    var body: some View {
        Text("Whistle")
    }
}

#Preview {
    WhistleScreen(path: .constant(NavigationPath()))
}
