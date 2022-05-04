//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 19/04/22.
//

import Foundation
import SwiftUI

 struct IntroductionDeafness: View {
    
    var screen = UIScreen.main.bounds
     @Binding var showIntroductionDeafness: Bool
     
     init(showIntroductionDeafness: Binding<Bool>){
         self._showIntroductionDeafness = showIntroductionDeafness
     }

    
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
                .opacity(0.9)
            ZStack{
                Color.secondColor
                
                VStack{
                    Text("DEAFNESS")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    VStack(spacing: 60){
                       
                        Text("According to a report by the World Health Organization, there are  1.5 billion people with some degrees of hearing loss out of which around 430 million people require rehabilitation services for their hearing loss.")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        Text("Tap the buttons to understand the message")
                            .font(.system(size: 36))
                            .bold()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                    }.frame(width: 549, height: 539)
                    
                    Button{
                      print("Tap")
                        showIntroductionDeafness.toggle()
                   } label: {
                       Text("OK")
                           .font(.system(size: 40))
                           .bold()
                           .foregroundColor(Color.white)
                   }.frame(width: screen.width*0.3, height: screen.height*0.06)
                        .background(Color.darkColor)
                       .cornerRadius(30)
                       .shadow(color: Color.black, radius: 4, x: 2, y: 4)
                    
                }//final Vstack
                
            }.frame(width: 644, height: 920) // final second Zstack
                .cornerRadius(40)
                .foregroundColor(Color.secondColor)
                .padding(.bottom,100)
            
        }// final first Zstack
    }
}
