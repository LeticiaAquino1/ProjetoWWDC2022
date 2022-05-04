//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 19/04/22.
//

import Foundation
import SwiftUI


struct BlindnessAndLowVisionView: View {
    
    
    var screen = UIScreen.main.bounds
    @State var background = UIImage(named: "backgroundFinal")
    @State var introductionBlindnessAndLowVision = false
    @State var flag1 = false
    @State var flag2 = false
   
    

    var body: some View {
        NavigationView{
            
            ZStack{
                Image(uiImage: background!)
                    .resizable()
                    .frame(width: screen.width, height: screen.height)
                    .ignoresSafeArea()
            ZStack{
                if screen.width == 768{
                    HStack{
                        Image(uiImage: UIImage(named: "meSmall")!)
                            .offset(x: 20)
                            .padding(.trailing,18)
                        VStack{
                            Text("Many blind people can't see anything, not even black. This is just a simulation to show that we must have empathy and understand the pain of our users. When we talk about visual impairment, we should think about an interface that the screen reader can transmit the information in the best possible way. Besides, there are people with low vision and the use of the right contrast, textures, light and the size of the text can also help a lot in these cases.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .lineLimit(10)
                            .frame(width: 560, height: 400)
                            .padding(.bottom, 2)
                        
                       Spacer()
                        
                    }
                }else if screen.width == 1024 {
                    HStack{
                        Image(uiImage: UIImage(named: "me")!)
                            .offset(x: 10)
                            .padding(.trailing,18)
                        VStack{
                            Text("Many blind people can't see anything, not even black. This is just a simulation to show that we must have empathy and understand the pain of our users. When we talk about visual impairment, we should think about an interface that the screen reader can transmit the information in the best possible way. Besides, there are people with low vision and the use of the right contrast, textures, light and the size of the text can also help a lot in these cases.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .lineLimit(7)
                            .frame(width: 740, height: 600)
                            .padding(.bottom, 2)
                        
                       Spacer()
                        
                    }
                }else{
                    HStack{
                        Image(uiImage: UIImage(named: "meMedium")!)
                            .offset(x: 10)
                            .padding(.trailing,18)
                        VStack{
                            Text("Many blind people can't see anything, not even black. This is just a simulation to show that we must have empathy and understand the pain of our users. When we talk about visual impairment, we should think about an interface that the screen reader can transmit the information in the best possible way. Besides, there are people with low vision and the use of the right contrast, textures, light and the size of the text can also help a lot in these cases.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .lineLimit(8)
                            .frame(width: 585, height: 400)
                            .padding(.bottom, 2)
                        
                       Spacer()
                        
                    }
                }//final else
                
               
            }.frame(width: screen.width*0.96, height: screen.height*0.2)
                .background(Color.principalColor)
                .cornerRadius(58)
                .padding(.top, screen.height*0.65)
            //final Zstack
                
                HStack(spacing: 280){
                    
                    //button Blindness
                    Button{
                      print("Tap")
                        background = UIImage(named: "backgroundFinal")
                   } label: {
                       Text("Blindness")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.24, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                       .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded({ _ in
                           print("Long press")
                           background = UIImage(named: "backgroundFinalBlindness")
                           flag1 = true
                       }))
                    
                    //button Low Vision
                    Button{
                      print("Tap")
                        background = UIImage(named: "backgroundFinal")
                   } label: {
                       Text("Low Vision")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.24, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                       .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded({ _ in
                           print("Long press")
                           background = UIImage(named: "backgroundFinalLowVision")
                           flag2 = true
                       }))
                } //final Hstack
                .padding(.bottom, screen.height*0.88)
                
                //show introduction
                if introductionBlindnessAndLowVision {
                    IntroductionBlindnessAndLowVision(introductionBlindnessAndLowVision: $introductionBlindnessAndLowVision)
                }
                
                //show next button 
                if flag1 == true && flag2 == true{
                    NavigationLink(destination: FinalView()) {
                        HStack{
                            Text("Next")
                                .font(.system(size: 30))
                                .bold()
                            Image(systemName: "arrow.right")
                                .font(.system(size: 30))
                        }
                    }.foregroundColor(Color.white)
                        .frame(width: screen.width*0.17, height:screen.height*0.04)
                        .background(Color.darkColor)
                        .cornerRadius(20)
                        .shadow(color: Color.black, radius: 4, x: 2, y: 4)
                        .offset(x: screen.width*0.38, y: screen.height*0.19)
                }
                
            }//final Zstack
        }.navigationViewStyle(StackNavigationViewStyle()) //final NavigationView
            .navigationBarHidden(true)
            .onAppear {
                introductionBlindnessAndLowVision.toggle()
            }
       
    }
}
