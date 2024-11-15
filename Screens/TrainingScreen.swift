//
//  TrainingScreen.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//

import SwiftUI

struct TrainingScreen: View {
    @Binding var path: NavigationPath
    var body: some View {
        Text("Training")
    }
}

#Preview {
    TrainingScreen(path: .constant(NavigationPath()))
}
