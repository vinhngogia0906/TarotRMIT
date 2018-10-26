//
//  model.swift
//  Tarot
//
//  Created by Vinh Ngo on 25/10/18.
//  Copyright © 2018 Vinh Ngo. All rights reserved.
//

import Foundation

class model {
    let majorArcanaCards:[String:MajorArcanaCard]
    var currentCard:MajorArcanaCard = MajorArcanaCard.fool
    init(){
        majorArcanaCards = MajorArcanaCard.createDeck()
    }
//    init(){
//        answer.append("Look to the stars to find your answer")
//        answer += ["But dad, don't we eat the antelope"]
//        answer.insert("You can't do this alone", at: 3)
//        answer.remove(at: 4)
//        answer.removeLast()
//        print(answer)
//        print(respond())
//    }
//    var currentCardImageName = ""
//    func respond() -> (cardImageName: String, cardMessage: String){
//        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
//        let cardMessage = Array(majorArcanaCards.values)[response]
//        let cardImageName = Array(majorArcanaCards.keys)[response]
//        return (cardImageName,cardMessage)
//    }
    func respond() -> String {
        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
        currentCard = Array(majorArcanaCards.values)[response]
//        let message = Array(majorArcanaCards.values)
//        currentCardImageName = Array(majorArcanaCards.keys)[response]
        return currentCard.interpretation
    }
//    func respond(cardImageName: inout String, message: inout String){
//        let response = Int(arc4random_uniform(UInt32(majorArcanaCards.count)))
//        message = Array(majorArcanaCards.values)[response]
//        cardImageName = Array(majorArcanaCards.keys)[response]
//
//    }
}
