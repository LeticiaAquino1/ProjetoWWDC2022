import SwiftUI

//Introduction View

struct InicialView: View {
    
    var screen = UIScreen.main.bounds
    
    
    var body: some View {
        NavigationView{
            ZStack{
                
                Color.darkColor.ignoresSafeArea()
                
                VStack{
                    
                    VStack(spacing: 40){
                        VStack{
                            Text("ARE YOU READY TO")
                                .font(.system(size: 60))
                                .bold()
                                .foregroundColor(Color.white)
                            Text("INCLUDE EVERYONE?")
                                .font(.system(size: 60))
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        
                        VStack{
                            Text("Did you know that in the world there are 1.8 billion")
                                .font(.system(size: 30))
                                .foregroundColor(Color.white)
                            Text("people with some type of disability?")
                                .font(.system(size: 30))
                                .foregroundColor(Color.white)
                                
                        }
                    }
                    
                    Image(uiImage: UIImage(named: "world")!)
                        .padding(.top,15)

                    VStack{
                        VStack{
                            Text("They face many problems throughout the day, and we")
                            Text("as developers can minimize at least some of these")
                            Text("problems by applying accessibility to our products.")
                            Text("Let's see how we can do this!")
                            Text("Let's go?")
                                .bold()
                        }.frame(width: screen.width*0.94, height: screen.height*0.25, alignment: .center)
                            .font(.system(size: 30))
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                          
                        
                        
                        NavigationLink(destination: DeafnessView()) {
                            Text("Start")
                                .font(.system(size: 40))
                                .bold()
                        }.foregroundColor(Color.white)
                            .frame(width: screen.width*0.44, height: screen.height*0.06)
                            .background(Color.principalColor)
                            .cornerRadius(30)
                            .shadow(color: Color.black, radius: 4, x: 2, y: 4)
                            .padding(.top, -40)
                        
                    }
                    
                }.padding(.bottom,40)
                
            }.navigationBarHidden(true)
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
