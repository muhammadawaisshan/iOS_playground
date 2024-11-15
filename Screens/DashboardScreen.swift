//
//  DashboardScreen.swift
//  Learning
//
//  Created by Mac on 14/11/2024.
//

import SwiftUI

struct DashboardScreen: View {
    @Binding var path: NavigationPath
    @StateObject private var viewModel = DashboardViewModel()
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        VStack(alignment: .center){
            HStack(alignment: .center){
                Image("drawer").resizable().frame(width: 25,height: 20).foregroundColor(.gray)
                Spacer()
                Text("Dog Translator").font(.headline)
                Spacer()
            }.padding()
            TranslatorCard{
                
            }
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.cards) { card in
                        EachDashboardCard(
                            backgroundColor: card.backgroundColor,
                            image: card.image,
                            icon: card.icon,
                            textColor: card.textColor,
                            title: card.title) {
                                path.append(card.destinationLink)
                            }
                    }
                }.padding(.horizontal,8)
            }
            Spacer()
        }
    }
}

#Preview {
    DashboardScreen(path:.constant(NavigationPath()))
}
