//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 19/04/22.
//

import SwiftUI

struct ColorBlindnessView: View {
    
    
    var screen = UIScreen.main.bounds
    @State var background = UIImage(named: "backgroundFinal")
    @State var showIntroductionColorBlindness = false
    @State var flag1 = false
    @State var flag2 = false
    @State var flag3 = false
   
    

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
                            Text("As we can see in this simulation it is very difficult to distinguish certain colors. The main objective here is to show that we cannot convey messages only using colors. We need to use a combination of texts, symbols, shapes and colors to convey something. Also, we need to think about the right contrast and the right colors. It is very important that we think of everyone when we are developing.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .lineLimit(9)
                            .frame(width: 575, height: 400)
                            .padding(.bottom, 2)
                        
                       Spacer()
                        
                    }
                }else if screen.width == 1024 {
                    HStack{
                        Image(uiImage: UIImage(named: "me")!)
                            .offset(x: 10)
                            .padding(.trailing,18)
                        VStack{
                            Text("As we can see in this simulation it is very difficult to distinguish certain colors. The main objective here is to show that we cannot convey messages only using colors. We need to use a combination of texts, symbols, shapes and colors to convey something. Also, we need to think about the right contrast and the right colors. It is very important that we think of everyone when we are developing.")
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
                            Text("As we can see in this simulation it is very difficult to distinguish certain colors. The main objective here is to show that we cannot convey messages only using colors. We need to use a combination of texts, symbols, shapes and colors to convey something. Also, we need to think about the right contrast and the right colors. It is very important that we think of everyone when we are developing.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .lineLimit(7)
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
                
                HStack(spacing: 70){
                    // Button ColorBlindness Tritanopia
                    Button{
                      print("Tap")
                        background = UIImage(named: "backgroundFinal")
                   } label: {
                       Text("Tritanopia")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.24, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                       .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded({ _ in
                           print("Long press")
                           background = UIImage(named: "backgroundFinalTritanopia")
                           flag1 = true
                       }))
                    // Button ColorBlindness Protanopia
                    Button{
                      print("Tap")
                        background = UIImage(named: "backgroundFinal")
                        
                   } label: {
                       Text("Protanopia")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.24, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                       .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded({ _ in
                           print("Long press")
                           background = UIImage(named: "backgroundFinalProtanopia")
                           flag2 = true
                       }))
                    
                    // Button ColorBlindness Deuteranopia
                    Button{
                      print("Tap")
                        background = UIImage(named: "backgroundFinal")
                        
                   } label: {
                       Text("Deuteranopia")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.24, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                       .simultaneousGesture(LongPressGesture(minimumDuration: 0.2).onEnded({ _ in
                           print("Long press")
                           background = UIImage(named: "backgroundFinalDeuteranopia")
                           flag3 = true
                       }))
                    
                } //final Hstack
                .padding(.bottom, screen.height*0.88)
                
                //show introduction
                if showIntroductionColorBlindness {
                    IntroductionColorBlindness(showIntroductionColorBlindness: $showIntroductionColorBlindness)
                }
                
                //show next button
                if flag1 == true && flag2 == true && flag3 == true{
                    NavigationLink(destination: BlindnessAndLowVisionView()) {
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
                showIntroductionColorBlindness.toggle()
            }
       
    }
}



