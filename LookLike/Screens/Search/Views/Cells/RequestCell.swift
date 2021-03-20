//
//  RequestCell.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 20.03.2021.
//


import UIKit
import SnapKit


class RequestCell: UICollectionViewCell {
    
    lazy var image: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(image)
        
        image.snp.makeConstraints {
            $0.height.equalToSuperview()
            $0.left.right.equalToSuperview()
            $0.top.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
