//
//  AnswerDetailViewController.swift
//  PsychologicalTest
//
//  Created by 김진주 on 2023/05/11.
//

import UIKit

class AnswerDetailViewController: UIViewController {
    
    var answer: Answers = Answers(answer: "", imageName: "", description: "")
    
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var homeBtn: UIButton!
    
    var list: [Answers] = Answers.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        thumbnailImage.image = UIImage(systemName: answer.imageName)?.withRenderingMode(.alwaysOriginal)
        answerLabel.text = answer.answer
        descriptionLabel.text = answer.description
        
        let btnImage = UIImage(systemName: "wand.and.rays.inverse")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        
        homeBtn.setImage(btnImage, for: .normal)
        homeBtn.setTitle("질문 다시보기", for: .normal)
        homeBtn.setTitleColor(.black, for: .normal)
    }
}
