//
//  MyLooksCell.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 11.03.2021.
//


import UIKit
import SnapKit


class MyLooksCell: UICollectionViewCell {
    
    lazy var image: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.layer.cornerRadius = 5
        
        contentView.addSubview(image)
        
        image.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
