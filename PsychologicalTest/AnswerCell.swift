//
//  AnswerCell.swift
//  PsychologicalTest
//
//  Created by 김진주 on 2023/05/10.
//

import UIKit

class AnswerCell: UICollectionViewCell {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    func configure(_ answer: Answers) {
        answerLabel.text = answer.answer
    }
    
}
