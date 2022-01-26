//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tamagotchi = Tamagotchi()
    @State var secondsElapsed = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
//            AsyncImage(url: URL(string:"https://picsum.photos/200"))
//                .frame(width:200,height:200)
            
            Form{
                Section{
                    VStack(spacing:10){
                        HStack
                        {
                            Text("Health: 5")
                                .frame(maxWidth:.infinity)
                            Text("Happiness: \(tamagotchi.happiness)")
                                .frame(maxWidth:.infinity)
                            
                        }
                        HStack{
                            Text("Hunger: \(tamagotchi.hunger)")
                                .frame(maxWidth:.infinity)
                            Text("Cleanliness: 5")
                                .frame(maxWidth:.infinity)
                            
                        }
                        HStack{
                            Text("Age: 0")
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
                       
                        Button(action: {
                            tamagotchi.playGame()
                        }, label: {
                            Text("Play a Game")
                        })
                        
                        Button(action: {
                            tamagotchi.giveMedicine()
                        }, label: {
                            Text("Give Medicine")
                        })
                        Button(action: {
                            tamagotchi.cleanBathroom()
                        }, label: {
                            Text("Clean toilet")
                        })
                    }
            }
        }
//        .onReceive(timer, something)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
