//
//  EachCardPremium.swift
//  Learning
//
//  Created by Mac on 14/11/2024.
//

import SwiftUI

struct EachCard:View {
    let image:String
    let title:String
    var body: some View {
        HStack(alignment: .center,spacing: 12){
            Image(image).resizable().frame(width: 20,height: 20)
            Text(title).foregroundColor(.black).font(.body)
        }
    }
}

#Preview {
    EachCard(image: "support", title: "Support")
}
