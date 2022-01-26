//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import Foundation

class Tamagotchi: ObservableObject{
    @Published var hunger: Int = 5
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
}
