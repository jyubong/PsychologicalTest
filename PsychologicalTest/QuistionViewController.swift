//
//  QuistionViewController.swift
//  PsychologicalTest
//
//  Created by 김진주 on 2023/05/10.
//

import UIKit

class QuistionViewController: UIViewController {

    @IBOutlet weak var nextPageBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationController?.navigationBar.scrollEdgeAppearance?.backgroundColor = .systemMint
        navigationController?.navigationBar.tintColor = UIColor.white
        
        nextPageBtn.setTitle("답 선택하러 가기", for: .normal)
        nextPageBtn.setTitleColor(.white, for: .normal)
        nextPageBtn.backgroundColor = .systemMint
        nextPageBtn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        nextPageBtn.layer.masksToBounds = true
        nextPageBtn.layer.cornerRadius = 10
    }

}
