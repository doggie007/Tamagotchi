//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.pink)
                .frame(width: 200, height: 200)
            Form{
                Section{
                    VStack(spacing:10){
                        HStack
                        {
                            Text("Health: ")
                                .frame(maxWidth:.infinity)
                        }
//                        Divider()
                        HStack{
                            Text("Hunger: ")
                                .frame(maxWidth:.infinity)
                            Text("Happiness: ")
                                .frame(maxWidth:.infinity)
                        }
                        }
                    }
                
                
                
                Section{
                    Text("Actions")
                        .bold()
                      
                    VStack(){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Feed Meal")
                        })
                        Divider()
                        Button(action: {}, label: {
                            Text("Feed Snack")
                        })
                        Divider()
                        Button(action: {}, label: {
                            Text("Play a Game")
                        })
                        Divider()
                        Button(action: {}, label: {
                            Text("Give Medicine")
                        })
                        Divider()
                        Button(action: {}, label: {
                            Text("Clean toilet")
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
