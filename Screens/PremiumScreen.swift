//
//  PremiumScreen.swift
//  Learning
//
//  Created by Mac on 13/11/2024.
//

import SwiftUI

struct PremiumScreen: View {
   let isComingFromSplash: Bool
    @Binding var path :NavigationPath
    var body: some View {
            
        ZStack(alignment: .top) {
                VStack{
                    Image("premium_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: UIScreen.main.bounds.height/2)
                        .ignoresSafeArea()
                    Spacer()
                    VStack{
                        Text("Get premium in 1.99$ / week. Subscription will auto-renew. Cancel anytime").foregroundColor(.gray).font(.footnote).multilineTextAlignment(.center)
                        
                        StartNowButton(action: {
                            path.append(Destinations.homeScreen)
                        })
                        
                        HStack(alignment: .center, spacing: 40){
                            Text("Terms of Service").foregroundColor(.blue).font(.subheadline).underline()
                            
                            Text("Privacy Policy").foregroundColor(.blue).font(.subheadline).underline()
                        }.padding()
                    }
                }
                HStack {
                    Image(systemName: "chevron.backward.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                        .padding(.leading, 20).onTapGesture {
                            if isComingFromSplash {
                                path.append(Destinations.homeScreen)
                            } else {
                                path.removeLast()
                            }
                        }
                    Spacer()
                }
                
                VStack(alignment:.center,spacing: 10){
                    Text("Dog Translator").foregroundColor(.black).font(.headline).bold()
                    Text("Unlimited access to all Features").foregroundColor(.black).font(.body)
                    HStack{
                        EachCard(image: "translate", title: "Translator")
                        Spacer()
                        EachCard(image: "removead", title: "Remove Ads")
                    }.padding(.top,15).padding(.horizontal,15)
                    HStack{
                        EachCard(image: "unlock", title: "Unlock All")
                        Spacer()
                        EachCard(image: "support", title: "VIP Support")
                    }.padding(.top,15).padding(.horizontal,15)
                }.frame(maxWidth:.infinity)
                    .padding(.vertical,20)
                    .background(.white)
                    .cornerRadius(18)
                    .shadow(radius: 10)
                    .padding(.horizontal,30)
                    .offset(y: UIScreen.main.bounds.height*0.4)
                
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        }
 
}


#Preview {
    PremiumScreen(isComingFromSplash: false,path: .constant(NavigationPath()))
}


struct StartNowButton:View{
    var action: () -> Void
    var body: some View {
        Button(action: action) {
            Text("Start Now").foregroundColor(.white).bold().font(.headline)
                .frame(maxWidth: .infinity).padding().background(content: {
                    LinearGradient(
                        colors: [
                            .blue.opacity(0.5),.blue.opacity(1)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }).clipShape(.capsule).padding(.horizontal,40)
        }
    }
}
