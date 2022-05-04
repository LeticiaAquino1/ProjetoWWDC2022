//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 21/04/22.
//

import Foundation
import SwiftUI

struct FinalView: View {
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Image(uiImage: UIImage(named: "final")!)
                    .resizable()
                    .frame(width: screen.width, height: screen.height)
                    .ignoresSafeArea()

                VStack(spacing: -50){
                    Text("THANK YOU!")
                        .font(.system(size: 60))
                        .bold()
                        .foregroundColor(Color.white)
                    Text("In this experience we learned a little bit about how to apply accessibility to our products. We addressed only visual and hearing impairment, but we can think of all others when we are developing.")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                        .bold()
                        .multilineTextAlignment(.center)
                        .frame(width: 750, height: 400)
                }.padding(.bottom, 300)
                
                
                VStack{
                    Text("Let's think about everybody!")
                        .font(.system(size: 35))
                        .foregroundColor(Color.white)
                        .bold()
                    Text("Let's include everybody!")
                        .font(.system(size: 35))
                        .foregroundColor(Color.white)
                        .bold()
                }.padding(.top, 100)
                
                HStack(spacing: 100){
                    NavigationLink(destination: AboutMe()) {
                        HStack{
                            Text("About me")
                                .font(.system(size: 40))
                                .bold()
                        }
                    }.foregroundColor(Color.white)
                        .frame(width: screen.width*0.27, height:screen.height*0.08)
                        .background(Color.principalColor)
                        .cornerRadius(20)
                        .shadow(color: Color.black, radius: 4, x: 2, y: 4)
                    
                    NavigationLink(destination: Sources()) {
                        HStack{
                            Text("Sources")
                                .font(.system(size: 40))
                                .bold()
                        }
                    }.foregroundColor(Color.white)
                        .frame(width: screen.width*0.27, height:screen.height*0.08)
                        .background(Color.principalColor)
                        .cornerRadius(20)
                        .shadow(color: Color.black, radius: 4, x: 2, y: 4)
                }//final Hstack
                .padding(.top, screen.height*0.68)
                
            }//final Zstack
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
    }
}

struct AboutMe: View {
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            Image(uiImage: UIImage(named: "aboutMe")!)
                .resizable()
                .frame(width: screen.width, height: screen.height)
                .ignoresSafeArea()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Sources: View {
    
    var screen = UIScreen.main.bounds
    
    var body: some View {
        
        NavigationView {
            Image(uiImage: UIImage(named: "sources")!)
                .resizable()
                .frame(width: screen.width, height: screen.height)
                .ignoresSafeArea()
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
