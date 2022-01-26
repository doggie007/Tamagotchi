//
//  TamagotchiTest.swift
//  TamagotchiTests
//
//  Created by Tcheng, James (BJH) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {

    //RED
    func testFeedSnackHungerDecreasesBy1() throws {
        //arrange (test set up)

        let myTamagotchi = Tamagotchi()
        let expectedHunger = 4
        
        //act (perform the functionality we want to test)
        myTamagotchi.feedSnack()
        
        //assert (check it did what we expected)
        XCTAssertEqual(expectedHunger, myTamagotchi.hunger)
        
    }
    
    func testWhereTamagotchiHasHunger0EatSnackKeepsHungerAt0() throws {
        //arrange (test set up)

        let myTamagotchi = Tamagotchi()
        myTamagotchi.hunger = 0
        let expectedHunger = 0
        
        //act (perform the functionality we want to test)
        myTamagotchi.feedSnack()
        
        //assert (check it did what we expected)
        XCTAssertEqual(expectedHunger, myTamagotchi.hunger)
        
    }
    func testFeedMealHungerDecreasesBy3() throws{
        let myTamagotchi = Tamagotchi()
        let expectedHunger = 2
        
        //act (perform the functionality we want to test)
        myTamagotchi.feedMeal()
        
        //assert (check it did what we expected)
        XCTAssertEqual(expectedHunger, myTamagotchi.hunger)
    }

}
