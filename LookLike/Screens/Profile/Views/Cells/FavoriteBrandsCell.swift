//
//  FavoriteBrandsCell.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 10.03.2021.
//


import UIKit
import SnapKit


class FavoriteBrandsCell: UICollectionViewCell {
    
    lazy var image: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    lazy var brandLabel: UILabel = {
        let view = UILabel()
        view.text = "sscschvjvbjmb"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .mainTitleAndPriceFont(size: 8, weight: .regular)
        view.layer.zPosition = 1
        return view
    }()
    
    lazy var priceLabel: UILabel = {
        let view = UILabel()
        view.text = "45000"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .mainTitleAndPriceFont(size: 8, weight: .regular)
        return view
    }()
    
    lazy var goToStoreButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("В МАГАЗИН", for: .normal)
        view.titleLabel?.font = .catalogButtonsFont(size: 10, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapGoToStoreButton),
                       for: .touchUpInside)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.layer.cornerRadius = 5
        
        contentView.addSubview(image)
        contentView.addSubview(brandLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(goToStoreButton)
        
        image.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        goToStoreButton.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(18)
            $0.bottom.equalToSuperview().inset(20)
        }
        
        brandLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(8)
            $0.bottom.equalTo(goToStoreButton.snp.top).offset(-20)
        }
        
        priceLabel.snp.makeConstraints {
            $0.right.equalToSuperview().inset(8)
            $0.bottom.equalTo(goToStoreButton.snp.top).offset(-20)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func didTapGoToStoreButton() {
        print("Кнопка - В Магазин")
    }
}
