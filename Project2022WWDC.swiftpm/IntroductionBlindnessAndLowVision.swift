//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 19/04/22.
//

import Foundation
import SwiftUI

 struct IntroductionBlindnessAndLowVision: View {
    
    var screen = UIScreen.main.bounds
     @Binding var introductionBlindnessAndLowVision: Bool
     
     init(introductionBlindnessAndLowVision: Binding<Bool>){
         self._introductionBlindnessAndLowVision = introductionBlindnessAndLowVision
     }

    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
                .opacity(0.9)
               
            
            ZStack{
                Color.secondColor
                
                VStack{
                    
                    Text("BLINDNESS AND")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    
                    Text("LOW VISION")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    VStack(spacing: 60){
                       
                        Text("According to a report by the World Health Organization, there are currently 284 million people in the world who are visually impaired, and 39 million people are blind. ")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Text("To simulate the vision, simply press and hold the button.")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                    }.frame(width: 549, height: 539)
                    
                    Button{
                      print("Tap")
                        introductionBlindnessAndLowVision.toggle()
                   } label: {
                       Text("OK")
                           .font(.system(size: 40))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.3, height: screen.height*0.06)
                        .background(Color.darkColor)
                       .cornerRadius(30)
                       .shadow(color: Color.black, radius: 4, x: 2, y: 4)
                    
                }
                
            }.frame(width: 644, height: 920) // final second Zstack
                .cornerRadius(40)
                .foregroundColor(Color.secondColor)
                .padding(.bottom,100)
        }// final first Zstack
    }
}
