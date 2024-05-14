//
//  Question.swift
//  personlityQuiz
//
//  Created by Macbook pro  on 13/05/24.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}


enum ResponseType{
    case single, multiple, ranged
}


struct Answer {
    var text: String
    var type: AnimalType
    
}


enum AnimalType: Character{
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var defination: String{
        switch self{
        case .dog:
            return "You are incredibely outgoing. You Surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievious, yet mild-tempered, you enjou doing things on your own terms."
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy"
        case .turtle:
            return "You are wise beyond your years, and you focus on details. Slow andf steady wins the race."
        }
    }
    
    
    
    
}
