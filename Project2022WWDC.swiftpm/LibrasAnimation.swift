//
//  File.swift
//  Project2022WWDC
//
//  Created by Leticia Aquino on 21/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var libras: String = "libras1"
    var screen = UIScreen.main.bounds
    @Binding var showAnimationLibras: Bool
    
    
    init(showAnimationLibras: Binding<Bool>){
        self._showAnimationLibras = showAnimationLibras
    }
    
    
    
    var body: some View {
        ZStack{
            Color.clear.opacity(0.0)
            
            VStack {
               Image(libras)
                    .resizable()
                    .frame(width: screen.width*0.19, height: screen.height*0.13, alignment: .center)
                    .offset(x: -screen.width*0.28, y: -screen.height*0.26)
                    .onAppear(perform: timerLibras)
                
            }
        }
         
        
       
    }
    
    func timerLibras(){
        var i = 1
        _ = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { (Timer) in
            
            libras = "libras\(i)"
            i += 1
            
            if (i > 6){
                i = 1
            }
        }
    }
}
