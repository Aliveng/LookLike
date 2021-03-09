//
//  ProfileViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 01.03.2021.
//


import UIKit
import SnapKit


class ProfileViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Анна"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .mainTitleAndPriceFont(size: 36, weight: .regular)
        return view
    }()
    
    lazy var emailLabel: UILabel = {
        let view = UILabel()
        view.text = "anna@example.ru"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .serviceButtonsFont(size: 15, weight: .regular)
        return view
    }()
    
    lazy var avatarImg: UIImageView = {
        let view = UIImageView(image: .avatarImg)
        view.layer.cornerRadius = 4
        view.clipsToBounds = true
        return view
    }()
    
    lazy var settingsButton : UIButton = {
        let view = UIButton()
        view.setImage(.gearWheelImg, for: .normal)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.addTarget(self,
                       action: #selector(didTapSettings),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var myLooksButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("Мои образы", for: .normal)
        view.titleLabel?.font = .catalogButtonsFont(size: 18, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapMyLooksButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var favoriteBrandsButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("Любимые бренды", for: .normal)
        view.titleLabel?.font = .catalogButtonsFont(size: 18, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapFavoriteBrandsButton),
                       for: .touchUpInside)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        view.addSubview(titleLabel)
        view.addSubview(emailLabel)
        view.addSubview(avatarImg)
        view.addSubview(settingsButton)
        
        stackProfileButtonsView()
        
        titleLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(42)
            $0.top.equalToSuperview().offset(104)
        }
        
        emailLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(42)
            $0.top.equalTo(titleLabel.snp.bottom)
        }
        
        avatarImg.snp.makeConstraints {
            $0.height.width.equalTo(100)
            $0.top.equalToSuperview().offset(89)
            $0.right.equalToSuperview().inset(60)
        }
        
        settingsButton.snp.makeConstraints {
            $0.left.equalTo(avatarImg.snp.right).offset(11)
            $0.top.equalToSuperview().offset(77)
        }
    }
    
    func stackProfileButtonsView() {
        
        let buttonsStack = UIStackView(arrangedSubviews: [myLooksButton, favoriteBrandsButton])
        buttonsStack.backgroundColor = .clear
        buttonsStack.axis = .horizontal
        buttonsStack.distribution = .fillEqually
        buttonsStack.spacing = 25
        
        view.addSubview(buttonsStack)
        
        buttonsStack.snp.makeConstraints {
            $0.top.equalTo(emailLabel.snp.bottom).offset(89)
            $0.height.equalTo(50)
            $0.left.right.equalToSuperview().inset(15)
        }
        
        buttonsStack.addSubview(myLooksButton)
        buttonsStack.addSubview(favoriteBrandsButton)
        
    }
    
    @objc
    private func didTapSettings() {
//        let controller = LoginViewController()
//        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - Настройки профиля")
    }
    
    @objc
    private func didTapMyLooksButton() {
        let controller = DiscoverViewController()
        navigationController?.pushViewController(controller, animated: true)
        myLooksButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myLooksButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myLooksButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        myLooksButton.backgroundColor = .clear
        myLooksButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myLooksButton.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        print("Кнопка - выбор Категории")
    }
    
    @objc
    private func didTapFavoriteBrandsButton() {
        let controller = LoginViewController()
        navigationController?.pushViewController(controller, animated: true)
        favoriteBrandsButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBrandsButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBrandsButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        favoriteBrandsButton.backgroundColor = .clear
        favoriteBrandsButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBrandsButton.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        print("Кнопка - выбор Бренды")
    }
}
