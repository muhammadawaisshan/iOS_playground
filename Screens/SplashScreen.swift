//
//  SplashScreen.swift
//  Learning
//
//  Created by Mac on 13/11/2024.
//

import SwiftUI
import Lottie
struct SplashScreen: View {
    
    @Binding var path :NavigationPath
    
    var body: some View {
      
            VStack {
                VStack {
                    LottieView(animation: .named("splash_animation"))
                        .playing()
                        .looping()
                        .frame(height: 250)
                    
                    Text("Dog Translator")
                        .foregroundColor(.black)
                        .font(.system(size: 24))
                        .bold()
                    
                    Text("Understand every woof of your furry friends Unlock Secret language of dogs!")
                        .foregroundColor(.gray)
                        .font(.system(size: 16))
                        .multilineTextAlignment(.center)
                        .padding()
                }
                .padding(.bottom, 120)
            }
            .background(
                Image("splash")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .onAppear {
                // Navigate to the next screen after 5 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    path.append(Destinations.premiumScreen(isComingFromSplash: true))
                }
            }
    }
}


#Preview {
    SplashScreen(path: .constant(NavigationPath())) 
}
