//
//  FactBook.swift
//  FunFacts
//
//  Created by Sean Crabtree on 12/23/14.
//  Copyright (c) 2014 Sean Crabtree. All rights reserved.
//

import Foundation

struct FactBook {
    
    let factsArray = [
    "Penny's favorite fruit is a banana.",
    "Mama loves to eat oatmeal in the morning.",
    "Penny's learning to jump.",
    "Mama & Papa love to explore and travel.",
    "Papa's favorite form of transportation is a bicycle.",
    "Mama & Papa love to do 'Ring Around The Rosy' with Penny.",
    "Penny loves to take out the garbage.",
    "Mama loves to do yoga, cook and read in her (very limited) spare time.",
    "Penny's favorite book shows everyone singing Happy Birthday.",
    "Penny loves the library--especially for storytime."
    ]
    
    func randomFact() -> String {
        // var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)))

        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
}





