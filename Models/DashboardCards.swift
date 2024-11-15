//
//  DashboardCards.swift
//  Learning
//
//  Created by Mac on 15/11/2024.
//
import SwiftUI

struct DashboardCardModel: Identifiable {
    let id = UUID() 
    let backgroundColor: Color
    let image: String
    let icon: String
    let textColor: Color
    let title: String
    let destinationLink:Destinations
}
 
 
