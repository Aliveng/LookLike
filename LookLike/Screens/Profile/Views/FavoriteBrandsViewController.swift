//
//  FavoriteBrandsViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 10.03.2021.
//


import UIKit
import SnapKit

class FavoriteBrandsViewController: UIViewController {
    
    lazy var collectionView: UICollectionView = {

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 159, height: 241)
        layout.sectionInset = .init(top: 0, left: 0, bottom: 0, right: 0)

        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.backgroundColor = .clear
        view.register(FavoriteBrandsCell.self, forCellWithReuseIdentifier: "FavoriteBrandsCell")
        view.showsVerticalScrollIndicator = false
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    var favoriteBrands: [FavoriteBrandsModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.addSubview(collectionView)
        
        collectionView.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
        }
    }
}

extension FavoriteBrandsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return favoriteBrands.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavoriteBrandsCell", for: indexPath)
        (cell as? FavoriteBrandsCell)?.image.image = UIImage.init(named: favoriteBrands[indexPath.row].imageLink)
        
        return cell
    }
}

extension FavoriteBrandsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Выбрана ячейка с номером \(indexPath.row)")
    }
}
