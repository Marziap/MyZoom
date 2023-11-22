//
//  ReunionsView.swift
//  MyZoom
//
//  Created by Marzia Pirozzi on 20/11/23.
//

import SwiftUI

struct ReunionsView: View {
    @State private var showNewReunion = false
    @State private var showJoin=false
    var body: some View {
        NavigationStack {
            VStack {
                HStack (alignment: .top){
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            showNewReunion = true
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 75, height: 75)
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.orange)
                                
                                Image(systemName: "video.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color.white)
                                
                            }
                    })
                        
                        Text("Nuova riunione")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                        
                    }
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            showJoin=true
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 75, height: 75)
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.blue)
                                
                                Image(systemName: "plus.app.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color.white)
                                
                            }
                    })
                        Text("Partecipa")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 75, height: 75)
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.blue)
                                
                                Image(systemName: "calendar")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color.white)
                                
                            }
                    })
                        Text("Pianifica")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Button(action: {
                            
                        }, label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 75, height: 75)
                                    .cornerRadius(30)
                                    .foregroundStyle(Color.blue)
                                
                                Image(systemName: "square.and.arrow.up.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(Color.white)
                                
                            }
                    })
                        Text("Condividi")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                    }
                    
                    Spacer()
                    
                }.padding(.vertical)
                
                Divider()
                
                    Button(action: {
                        
                    }, label: {
                        Text("Aggiungi un calendario")
                            .font(.title3)
                            .foregroundStyle(Color.blue)
                    })
                
                Divider()
  
                Spacer()
                
                Text("Nessuna riunione imminente")
                    .font(.title2)
                    .bold()
                Text("Le riunioni pianificate saranno elencate qui")
                    .font(.title3)
                    .foregroundStyle(Color.gray)
                
                
                Spacer()
                
            }.padding(.vertical, 10)
            .navigationTitle("Riunioni")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showNewReunion, content: {
                NewReunionModal()
            })
            .fullScreenCover(isPresented: $showJoin, content: {
                JoinCallView()
            })
            .toolbar{
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.clockwise")
                })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "info.circle")
                })
                    
                }
            }
            
        }
    }
}

#Preview {
    ReunionsView()
}
