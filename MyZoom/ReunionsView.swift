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
                        }).accessibilityLabel("New meeting")
                        
                        Text("New Meeting")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        
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
                    }).accessibilityLabel("Join meeting")
                        Text("Join")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
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
                    }).accessibilityLabel("Schedule")
                        
                        Text("Schedule")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
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
                    }).accessibilityLabel("Share Screen")
                        Text("Share Screen")
                            .font(.footnote)
                            .foregroundStyle(Color.gray)
                            .padding(.top, 3)
                            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                    
                }.padding(.vertical)
                
                Divider()
                
                    Button(action: {
                        
                    }, label: {
                        Text("Add a calendar")
                            .font(.title3)
                            .foregroundStyle(Color.blue)
                    })
                
                Divider()
  
                Spacer()
                
                Text("No Upcoming Meetings")
                    .font(.title2)
                    .bold()
                Text("The scheduled meetings will be listed here")
                    .font(.title3)
                    .foregroundStyle(Color.gray)
                
                
                Spacer()
                
            }.padding(.vertical, 10)
            .navigationTitle("Meetings")
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
