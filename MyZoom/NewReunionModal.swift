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
                    Toggle("Video On", isOn: $video)
                   
                    Toggle("Use Personal Meeting ID (PMI)", isOn: $PMI)
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Start a Meeting")
                        .padding()
                        .padding(.horizontal, 90)
                        .bold()
                        .foregroundStyle(Color.white)
                }).background(Color.blue)
                    .cornerRadius(20)
                    .padding(.vertical)
                Spacer(minLength: 470)
            }.padding(.top, 10)
            .navigationTitle("Start a Meeting")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Cancel")
                    })
                }
               
            }
        }
    }
}

#Preview {
    NewReunionModal()
}
