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
    @State private var buttonText = "Entra con un nome link personale"
    @State private var placeholder = "Nome del link personale"
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
                    if(!nome){
                        buttonText="Entra con ID riunione"
                        placeholder="ID riunione"
                    }else{
                        buttonText="Entra con un nome link personale"
                        placeholder="Nome del link personale"
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
                
                TextField("Nome", text: $name)
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Partecipa")
                        .padding()
                        .padding(.horizontal, 120)
                        .bold()
                        .foregroundStyle(Color.white)
                }).background(active ? Color.gray: Color.blue)
                    .cornerRadius(20)
                    .padding(.bottom, 2)
                    .disabled(active)
                
                Text("Se hai ricevuto un link di invito, tocca di nuovo sul link per entrare nella riunione")
                    .foregroundStyle(Color.gray)
                    .font(.subheadline)
            }.padding(.horizontal)
                .padding(.top, 30)
            .navigationTitle("Entra nella riunione")
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
            
            List {
                Section(header: Text("OPZIONE DI ENTRATA")) {
                    Toggle("Non connetere all'audio", isOn: $audio)
                    Toggle("Disattiva il mio video", isOn: $video)
                }
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    JoinCallView()
}
