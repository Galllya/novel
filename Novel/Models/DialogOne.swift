//
//  DialogOne.swift
//  Novel
//
//  Created by Galina Bolganova on 02.05.2022.
//

import Foundation
import UIKit

class DialogOne {
    let number: Int
    let question: String
    let firstAnswer: (answer: String, next: Int)
    let secondAnswer: (answer: String, next: Int)?
    let image: UIImage
    let haveTwoAnswers: Bool

    
    init(number: Int, question: String, firstAnswer: (answer: String, next: Int),
         secondAnswer: (answer: String, next: Int)?,image: UIImage, haveTwoAnswers: Bool
         ) {
        self.firstAnswer = firstAnswer;
        self.secondAnswer = secondAnswer;
        self.image = image;
        self.number = number;
        self.question = question;
        self.haveTwoAnswers = haveTwoAnswers;
    }
}
