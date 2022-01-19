//
//  Tamagotchi.swift
//  Tamagotchi
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import Foundation

class Tamagotchi{
    var hunger: Int = 5
    func eatSnack(){
        if hunger > 0{
            hunger -= 1
        }
    }
}
