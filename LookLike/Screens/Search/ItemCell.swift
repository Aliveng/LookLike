//
//  itemCell.swift
//  BabyPink
//
//  Created by Татьяна Севостьянова on 28/10/2019.
//  Copyright © 2019 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class ItemCell: UICollectionViewCell {
    
    lazy var image: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    lazy var nameView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        view.layer.cornerRadius = 5
        view.layer.borderColor = #colorLiteral(red: 0.678356111, green: 0.6784747243, blue: 0.6783486009, alpha: 1)
        return view
    }()
    
    lazy var name: UILabel = {
        let view = UILabel()
        view.text = ""
        view.textColor = .black
        view.font = .catalogButtonsFont(size: 14, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(image)
        addSubview(nameView)
        nameView.addSubview(name)
        
        image.snp.makeConstraints({ item in
            item.height.equalToSuperview()
            item.left.equalToSuperview()
            item.right.equalToSuperview()
            item.top.equalToSuperview()
        })
        
        nameView.snp.makeConstraints({ item in
            item.height.equalTo(23)
            item.left.equalToSuperview()
            item.right.equalToSuperview()
            item.bottom.equalToSuperview()
        })
        
        name.snp.makeConstraints({ item in
            item.center.equalToSuperview()
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
