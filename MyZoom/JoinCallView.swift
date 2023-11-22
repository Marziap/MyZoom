//
//  NewReunionModal.swift
//  MyZoom
//
//  Created by Marzia Pirozzi on 20/11/23.
//

import SwiftUI

struct JoinCallView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var idRiunione = ""
    @State private var nome = false
    @State private var buttonText = "Join with a meeting ID"
    @State private var placeholder = "Personal Link Name"
    @State private var name = ""
    @State private var audio = false
    @State private var video = false
    @State private var active = true
    var body: some View {
        NavigationStack {
            VStack {
                if(nome){
                    TextField(placeholder, text: $idRiunione)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                        .keyboardType(.numberPad)
                }else{
                    TextField(placeholder, text: $idRiunione)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                }
                   
                
                Button(action: {
                    if(nome){
                        buttonText="Join with a meeting ID"
                        placeholder="Personal link name"
                    }else{
                        buttonText="Join with a personal link name"
                        placeholder="Meeting ID"
                    }
                    nome.toggle()
                }, label: {
                    Text(buttonText)
                        .foregroundStyle(Color.blue)
                        .font(.subheadline)
                }).onChange(of: idRiunione, { oldValue, newValue in
                    if(idRiunione.count>8){
                        active=false
                    }else{
                        active=true
                    }
                })
                
                .padding(.bottom)
                
                TextField("Screen Name", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Join")
                        .padding()
                        .padding(.horizontal, 145)
                        .bold()
                        .foregroundStyle(Color.white)
                }).background(active ? Color.gray: Color.blue)
                    .cornerRadius(20)
                    .padding(.bottom, 2)
                    .disabled(active)
                
                Text("If you received an invitation link, tap on the link again to join the meeting")
                    .foregroundStyle(Color.gray)
                    .font(.subheadline)
            }.padding(.horizontal)
                .padding(.top, 30)
            .navigationTitle("Join Meeting")
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
            
            List {
                Section(header: Text("JOIN OPTIONS")) {
                    Toggle("Don't Connect To Audio", isOn: $audio)
                    Toggle("Turn Off My Video", isOn: $video)
                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    JoinCallView()
}
