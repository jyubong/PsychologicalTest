//
//  AnswerViewController.swift
//  PsychologicalTest
//
//  Created by 김진주 on 2023/05/10.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let list: [Answers] = Answers.list
    
    typealias Item = Answers
    enum Section {
        case main
    }
    var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        bind()
        setup()
        
        collectionView.delegate = self
    }
    
    private func configure() {
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnswerCell", for: indexPath) as? AnswerCell else {
                return UICollectionViewCell()
            }
            cell.configure(item)
            return cell
        })
    }
    
    private func bind() {
        var snapshot = NSDiffableDataSourceSnapshot<Section,Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(list, toSection: .main)
        dataSource.apply(snapshot)
    }
    
    private func setup() {
        collectionView.collectionViewLayout = layout()
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.25))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }

}

extension AnswerViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let answer = list[indexPath.item]
        let storyboard = UIStoryboard(name: "AnswerDetail", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "AnswerDetailViewController") as? AnswerDetailViewController else { return }
        vc.answer = answer
        self.present(vc, animated: true)
    }
}
