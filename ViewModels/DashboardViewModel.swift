//
//  DashboardViewModel.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//
import SwiftUI
class DashboardViewModel: ObservableObject {
    @Published var cards: [DashboardCardModel] = []
    
    init() {
        loadCards()
    }
    
    private func loadCards() {
        cards = [
            DashboardCardModel(
                backgroundColor: Color(hex:"#EFCFFF"),
                image: "dog1",
                icon: "arrows",
                textColor: Color(hex:"#AD00FF"),
                title: "Sounds",
                destinationLink: .soundsScreen
            ),
            DashboardCardModel(
                backgroundColor: Color(hex:"#D8FFC5"),
                image: "dog-training-whistle 1",
                icon: "Group 37132",
                textColor: Color(hex:"#00AC4D"),
                title: "Whistle",
                destinationLink: .whistleScreen
              
            ),
            DashboardCardModel(
                backgroundColor: Color(hex:"#FFDEDE"),
                image: "music-note (2) 1",
                icon: "Group 37133",
                textColor: Color(hex:"#FF0000"),
                title: "Songs",
                destinationLink: .songsScreen
                 
            ),
            DashboardCardModel(
                backgroundColor: Color(hex: "#FFFFCB"),
                image: "dog-training-whistle 2",
                icon: "Group 37134",
                textColor: Color(hex:"#B5BB00"),
                title: "Training",
                destinationLink: .trainingScreen
                 
            )
        ]
    }
}
