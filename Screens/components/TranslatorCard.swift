//
//  TranslatorCard.swift
//  Learning
//
//  Created by Mac on 14/11/2024.
//

import SwiftUI

struct TranslatorCard: View {
    var action: () -> Void
    var body: some View {
        ZStack{
            VStack(alignment: .leading,spacing: 10){
                Text("Dog Translator").font(.title2).foregroundColor(.white).bold()
                Text("Unlock Secret language of dog").font(.body).foregroundColor(.white)
                Button {
                    action()
                } label: {
                    Text("Translate Now").padding(.horizontal,20).padding(.vertical,10).foregroundColor(.blue).background(.white).font(.body).bold().clipShape(.rect(cornerRadius: 12)).padding(.top,5)
                }
                
            }.frame(maxWidth: .infinity,alignment: .leading).padding(.leading)
        }.frame(maxWidth: .infinity).padding(.vertical,20).background(content: {
            Image("translatorbg").resizable()
        }).cornerRadius(18).padding(.horizontal,8)
    }
}

#Preview {
    TranslatorCard(){
        
    }
}
