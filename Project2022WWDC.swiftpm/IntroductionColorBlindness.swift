//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 19/04/22.
//

import Foundation
import SwiftUI

 struct IntroductionColorBlindness: View {
    
    var screen = UIScreen.main.bounds
     @Binding var showIntroductionColorBlindness: Bool
     
     init(showIntroductionColorBlindness: Binding<Bool>){
         self._showIntroductionColorBlindness = showIntroductionColorBlindness
     }

    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
                .opacity(0.9)
               
            
            ZStack{
                Color.secondColor
                
                VStack{
                    
                    Text("COLOR")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    
                    Text("BLINDNESS")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    VStack(spacing: 60){
                       
                        Text("There are an estimated 300 million people in the  world with color vision deficiency. Color blindness often happens when someone can not distinguish between certain colors (red, green and blue).")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Text("To simulate the different types of color blindness, simply press and hold the button.")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                            .bold()
                            .multilineTextAlignment(.center)
                        
                    }.frame(width: 549, height: 539)
                    
                    Button{
                       print("Teste")
                            showIntroductionColorBlindness.toggle()
                        
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

