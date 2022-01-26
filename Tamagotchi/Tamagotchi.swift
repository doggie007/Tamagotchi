//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject{
    @Published var hunger: Int = 5
    @Published var happiness: Int = 5
    @Published var age: Int = 0
    @Published var health: Int = 5
    @Published var cleanliness: Int = 5
    
    
    func feedMeal(){
        if hunger > 2{
            hunger -= 3
        }
    }
    func feedSnack(){
        if hunger > 0{
            hunger -= 1
        }
    }
    func playGame(){
        if happiness < 5{
            happiness += 1
        }
    }
    func growOlder(){
        age += 1
    }
    
    func giveMedicine(){
        if health < 5{
            health += 1
        }
    }
    func cleanBathroom(){
        if cleanliness < 5{
            cleanliness += 1
        }
    }
}


