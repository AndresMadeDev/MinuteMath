//
//  ViewModel.swift
//  MinuteMath
//
//  Created by Andres Made on 5/13/23.
//

import Foundation

enum difficultyType {
    case easy, medium, hard
}

func diff(type: difficultyType) -> Int {
    switch type {
        
    case .easy:
        return 10
    case .medium:
        return 100
    case .hard:
        return 1000
    }
}


class ViewModel: ObservableObject {
    @Published  var correctAnswer = 0
    @Published  var choiceArray : [Int] = [0, 1, 2, 3]
    @Published  var firstNumber = 0
    @Published  var secondNumber = 0
    @Published  var difficulty = 10
    @Published  var totalCorrect = 0
    @Published  var totalAnswer = 0
    
    func answerIsCorrect(answer: Int){
        if answer == correctAnswer {
            self.totalCorrect += 1
        }
    }
    
    func generateAnswers(){
        firstNumber = Int.random(in: 0...(difficulty/2))
        secondNumber = Int.random(in: 0...(difficulty/2))
        var answerList = [Int]()
        
        correctAnswer = firstNumber + secondNumber
        
        for _ in 0...2 {
            answerList.append(Int.random(in: 10...difficulty))
        }
        
        answerList.append(correctAnswer)
        
        choiceArray = answerList.shuffled()
    }

    
}
