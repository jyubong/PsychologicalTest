//
//  HomeViewController.swift
//  PsychologicalTest
//
//  Created by 김진주 on 2023/05/10.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        navigationController?.navigationBar.scrollEdgeAppearance?.backgroundColor = .systemMint
    }
}
