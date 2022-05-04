//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 19/04/22.
//

import Foundation
import SwiftUI

struct DeafnessView: View {
    
    
    var screen = UIScreen.main.bounds
    @State var background = UIImage(named: "backgroundFinalDeafness")
    @State var showIntroductionDeafness = false
    @State var bear: String = "bear1"
    @State var showAnimationLibras = false
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
                            Text("To understand what the teddy bear is saying you need to press the buttons. This way, we can see how important it is to offer more than one option for transmitting the message, especially when we want to apply accessibility to our products. Hearing-impaired people can get our messages through subtitles and sign language. In the case of Brazil, we have Libras (Brazilian Sign Language) and this is how we say 'Hello, how are you?' in Portuguese and in Libras.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 17))
                            .lineLimit(10)
                            .frame(width: 555, height: 400)
                            .padding(.bottom, 2)
                        
                       Spacer()
                        
                    }
                }else if screen.width == 1024 {
                    HStack{
                        Image(uiImage: UIImage(named: "me")!)
                            .offset(x: 10)
                            .padding(.trailing,18)
                        VStack{
                            Text("To understand what the teddy bear is saying you need to press the buttons. This way, we can see how important it is to offer more than one option for transmitting the message, especially when we want to apply accessibility to our products. Hearing-impaired people can get our messages through subtitles and sign language. In the case of Brazil, we have Libras (Brazilian Sign Language) and this is how we say 'Hello, how are you?' in Portuguese and in Libras.")
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
                            Text("To understand what the teddy bear is saying you need to press the buttons. This way, we can see how important it is to offer more than one option for transmitting the message, especially when we want to apply accessibility to our products. Hearing-impaired people can get our messages through subtitles and sign language. In the case of Brazil, we have Libras (Brazilian Sign Language) and this is how we say 'Hello, how are you?' in Portuguese and in Libras.")
                                .bold()
                        } .foregroundColor(Color.white)
                            .font(.system(size: 20))
                            .lineLimit(9)
                            .frame(width: 580, height: 400)
                            .padding(.bottom, 2)
                        
                       Spacer()
                        
                    }
                }//final if/else
                
               
            }.frame(width: screen.width*0.96, height: screen.height*0.2)
                .background(Color.principalColor)
                .cornerRadius(58)
                .padding(.top, screen.height*0.65)
            //final Zstack
                
                
                Image(bear)
                    .resizable()
                    .frame(width: screen.width*0.37, height: screen.height*0.38, alignment: .center)
                    .offset(y: 25)
                    .onAppear(perform: timerBear)
                
               
                HStack(spacing: 280){
                    
                    // button Captions
                    Button{
                        background = UIImage(named: "backgroundFinalCaptions")
                        showAnimationLibras = false
                        flag1 = true
                   } label: {
                       Text("Captions")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.23, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                    
                    // button Libras
                    Button{
                        background = UIImage(named: "backgroundFinalLibras")
                        showAnimationLibras = true
                       flag2 = true
                   } label: {
                       Text("Libras")
                           .font(.system(size: 28))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.23, height: screen.height*0.08)
                       .background(Color.principalColor)
                       .cornerRadius(20)
                       .shadow(color: Color.shadowColor, radius: 2, x: 2, y: 2)
                    
                } //final Hstack
                .padding(.bottom, screen.height*0.88)
                
                //show animation libras
                if showAnimationLibras{
                    ContentView(showAnimationLibras: $showAnimationLibras)
                }
                
                //show introduction
                if showIntroductionDeafness {
                    IntroductionDeafness(showIntroductionDeafness: $showIntroductionDeafness)
                }
                
                //show next button
                if flag1 == true && flag2 == true{
                    NavigationLink(destination: ColorBlindnessView()) {
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
                showIntroductionDeafness.toggle()
            }
       
    }
    
    // animation bear function
    func timerBear(){
        var i = 1
        _ = Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { (Timer) in
            
            bear = "bear\(i)"
            i += 1
            
            if (i > 4){
                i = 1
            }
        }
    }
 

}//final struct

