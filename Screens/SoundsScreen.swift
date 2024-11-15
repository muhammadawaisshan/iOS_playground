//
//  SoundsScreen.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//

import SwiftUI

struct SoundsScreen: View {
    @Binding var path: NavigationPath
    var body: some View {
        Text("Sounds")
    }
}

#Preview {
    SoundsScreen(path: .constant(NavigationPath()))
}
