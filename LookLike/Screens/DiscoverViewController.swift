//
//  DiscoverViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 25.02.2021.
//


import UIKit
import SnapKit


class DiscoverViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Discover"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .mainTitleAndPriceFont(size: 36, weight: .regular)
        return view
    }()
    
    lazy var bookmarkButton : UIButton = {
        let view = UIButton()
        view.setImage(.bookmarkImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapBookmark),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var mannequinBackgroundImg: UIImageView = {
        let view = UIImageView()
        view.image = .mannequinImg
        return view
    }()
    
    lazy var addHeadwearButton : UIButton = {
        let view = UIButton()
        view.setImage(.plusImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapAddHeadwearButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var addTopClothesButton : UIButton = {
        let view = UIButton()
        view.setImage(.plusImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapAddTopClothesButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var addBottomClothesButton : UIButton = {
        let view = UIButton()
        view.setImage(.plusImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapAddBottomClothesButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var addBagButton : UIButton = {
        let view = UIButton()
        view.setImage(.plusImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapAddBagButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var addShoesButton : UIButton = {
        let view = UIButton()
        view.setImage(.plusImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapAddShoesButton),
                       for: .touchUpInside)
        return view
    }()
    
    
    lazy var navigationPanelView: NavigationView = {
        let view = NavigationView(navigationController: self.navigationController!)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationItem.setHidesBackButton(true, animated: true)
        
        view.addSubview(titleLabel)
        view.addSubview(bookmarkButton)
        view.addSubview(mannequinBackgroundImg)
        view.addSubview(addHeadwearButton)
        view.addSubview(addTopClothesButton)
        view.addSubview(addBottomClothesButton)
        view.addSubview(addBagButton)
        view.addSubview(addShoesButton)
        view.addSubview(navigationPanelView)
        
        titleLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(84)
        }
        
        bookmarkButton.snp.makeConstraints {
            $0.right.equalToSuperview().offset(-42)
            $0.centerY.equalTo(titleLabel)
        }
        
        mannequinBackgroundImg.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(44)
        }
        
        addHeadwearButton.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.width.equalTo(24)
            $0.right.equalTo(mannequinBackgroundImg.snp.right).offset(-80)
            $0.top.equalTo(mannequinBackgroundImg.snp.top)
        }
        
        addTopClothesButton.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.width.equalTo(24)
            $0.left.equalTo(mannequinBackgroundImg.snp.left)
            $0.top.equalTo(mannequinBackgroundImg.snp.top).offset(120)
        }
        
        addBottomClothesButton.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.width.equalTo(24)
            $0.left.equalTo(mannequinBackgroundImg.snp.left).offset(28)
            $0.bottom.equalTo(mannequinBackgroundImg.snp.bottom).offset(-183)
        }
        
        addBagButton.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.width.equalTo(24)
            $0.left.equalTo(mannequinBackgroundImg.snp.right).offset(-18)
            $0.bottom.equalTo(mannequinBackgroundImg.snp.bottom).offset(-220)
        }
        
        addShoesButton.snp.makeConstraints {
            $0.height.equalTo(24)
            $0.width.equalTo(24)
            $0.right.equalTo(mannequinBackgroundImg.snp.right).offset(-31)
            $0.bottom.equalTo(mannequinBackgroundImg.snp.bottom).offset(-16)
        }
        
        navigationPanelView.snp.makeConstraints({ item in
            item.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            item.height.equalTo(50)
            item.left.equalToSuperview()
            item.right.equalToSuperview()
        })
    }
    
    @objc
    private func didTapBookmark() {
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        bookmarkButton.tintColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        print("Кнопка - Закладка")
    }
    
    @objc
    private func didTapAddHeadwearButton() {
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - Добавить голоной убор")
    }
    
    @objc
    private func didTapAddTopClothesButton() {
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - Добавить верх")
    }
    
    @objc
    private func didTapAddBottomClothesButton() {
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - Добавить низ")
    }
    
    @objc
    private func didTapAddBagButton() {
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - Добавить сумку")
    }
    
    @objc
    private func didTapAddShoesButton() {
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - Добавить обувь")
    }
}
