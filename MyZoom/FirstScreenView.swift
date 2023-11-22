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
                .tabItem { Label("Riunioni", systemImage: "video")}
            Text("Chat di team")
                .tabItem { Label("Chat di team", systemImage: "bubble.left.and.bubble.right")}
            Text("Posta")
                .tabItem { Label("Posta", systemImage: "envelope")}
            Text("Calendario")
                .tabItem { Label("Calendario", systemImage: "calendar")}
            Text("Altro")
                .tabItem { Label("Altro", systemImage: "ellipsis")}
        }
    }
}

#Preview {
    FirstScreenView()
}
