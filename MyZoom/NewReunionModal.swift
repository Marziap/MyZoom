//
//  NewReunionModal.swift
//  MyZoom
//
//  Created by Marzia Pirozzi on 20/11/23.
//

import SwiftUI

struct NewReunionModal: View {
    @Environment(\.dismiss) private var dismiss
    @State private var video = false
    @State private var PMI = false
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    Toggle("Video attivo", isOn: $video)
                   
                    Toggle("Utilizza ID della riunione personale (PMI)", isOn: $PMI)
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Avvia una riunione")
                        .padding()
                        .padding(.horizontal, 90)
                        .bold()
                        .foregroundStyle(Color.white)
                }).background(Color.blue)
                    .cornerRadius(20)
                    .padding(.vertical)
                Spacer(minLength: 470)
            }.padding(.top, 10)
            .navigationTitle("Avvia una riunione")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Annulla")
                    })
                }
               
            }
        }
    }
}

#Preview {
    NewReunionModal()
}
