//
//  CategoriesViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 09.03.2021.
//


import UIKit
import SnapKit

class CategoriesViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 95, height: 107)
        layout.sectionInset = .init(top: 8, left: 8, bottom: 0, right: 8)

        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.backgroundColor = .clear
        view.register(CategoryCell.self, forCellWithReuseIdentifier: "CategoryCell")
        view.showsVerticalScrollIndicator = false
        view.dataSource = self
 //       view.delegate = self
        return view
    }()
    
    var categories: [CategoryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }

    }
}

extension CategoriesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath)
        (cell as? CategoryCell)?.image.image = categories[indexPath.row].image
        (cell as? CategoryCell)?.name.text = "\(categories[indexPath.row].name)"
        
        return cell
    }
}

extension CategoriesViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Выбрана ячейка с номером \(indexPath.row)")
    }
}
