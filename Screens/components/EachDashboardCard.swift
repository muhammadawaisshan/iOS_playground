//
//  EachDashboardCard.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//

import SwiftUI

struct EachDashboardCard: View {
    let backgroundColor:Color
    let image:String
    let icon:String
    let textColor:Color
    let title:String
    var action:()->Void
    
    var body: some View {
        ZStack{
            VStack(alignment: .center){
                HStack(alignment: .top){
                    Image(image).resizable().frame(width: 50,height: 50)
                    Spacer()
                    Image(icon).resizable().frame(width:20,height:20)
                }.frame(alignment: .top)
                Text(title).font(.title3).foregroundColor(textColor).bold()
            }.frame(maxWidth: .infinity,alignment: .center).padding()
        }.frame(maxWidth: .infinity).background(backgroundColor).cornerRadius(16).onTapGesture {
            action()
        }
    }
}

#Preview {
    EachDashboardCard(backgroundColor: Color.blue, image: "dog1", icon:"arrows",textColor: .red, title: "Sounds", action: {
        
    })
}
