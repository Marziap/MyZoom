//
//  FirstScreenView.swift
//  MyZoom
//
//  Created by Marzia Pirozzi on 20/11/23.
//

import SwiftUI

struct FirstScreenView: View {
    var body: some View {
        TabView{
            ReunionsView()
                .tabItem { Label("Meetings", systemImage: "video")}
            Text("Team Chat")
                .tabItem { Label("Team Chat", systemImage: "bubble.left.and.bubble.right")}
            Text("Mail")
                .tabItem { Label("Mail", systemImage: "envelope")}
            Text("Calendar")
                .tabItem { Label("Calendar", systemImage: "calendar")}
            Text("More")
                .tabItem { Label("More", systemImage: "ellipsis")}
        }
    }
}

#Preview {
    FirstScreenView()
}
