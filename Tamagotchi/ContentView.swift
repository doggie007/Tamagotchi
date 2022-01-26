//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tamagotchi = Tamagotchi()
    
    var body: some View {
        VStack{
            Circle()
                .fill(Color.pink)
                .frame(width: 150, height: 150)
            Form{
                Section{
                    VStack(spacing:10){
                        HStack
                        {
                            Text("Health: 5")
                                .frame(maxWidth:.infinity)
                        }
                        HStack{
                            Text("Hunger: \(tamagotchi.hunger)")
                                .frame(maxWidth:.infinity)
                            Text("Happiness: 5")
                                .frame(maxWidth:.infinity)
                        }
                        }
                    }
                    
                    Section{
                        Button(action: {
                            tamagotchi.feedMeal()
                        }, label: {
                            Text("Feed Meal")
                        })
                        Button(action: {
                            tamagotchi.feedSnack()
                        }, label: {
                            Text("Feed Snack")
                        })
                       
                        Button(action: {}, label: {
                            Text("Play a Game")
                        })
                        
                        Button(action: {}, label: {
                            Text("Give Medicine")
                        })
                        Button(action: {}, label: {
                            Text("Clean toilet")
                        })
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
