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
        view.layer.cornerRadius = 50
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
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("Мои образы", for: .normal)
        view.titleLabel?.font = .catalogButtonsFont(size: 18, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
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
    
    var viewModel: ProfileViewModel
    var favoriteBrandsViewController: FavoriteBrandsViewController = FavoriteBrandsViewController()
    var myLooksViewController: MyLooksViewController = MyLooksViewController()
    
    init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        view.addSubview(titleLabel)
        view.addSubview(emailLabel)
        view.addSubview(avatarImg)
        view.addSubview(settingsButton)
        
        stackProfileButtonsView()
        
        view.addSubview(favoriteBrandsViewController.view)
        view.addSubview(myLooksViewController.view)
        addChild(favoriteBrandsViewController)
        addChild(myLooksViewController)
        
        favoriteBrandsViewController.view.isHidden = true
        myLooksViewController.view.isHidden = false
        
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
        
        favoriteBrandsViewController.view.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(15)
            $0.bottom.equalToSuperview()
            $0.top.equalTo(myLooksButton.snp.bottom).offset(27)
        }
        
        myLooksViewController.view.snp.makeConstraints {
            $0.left.right.equalToSuperview().inset(15)
            $0.bottom.equalToSuperview()
            $0.top.equalTo(myLooksButton.snp.bottom).offset(27)
        }
        
        viewModel.loadData()
        favoriteBrandsViewController.favoriteBrands.append(contentsOf: viewModel.favoriteBrands)
        myLooksViewController.myLooks.append(contentsOf: viewModel.myLooks)
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
        print("Кнопка - Настройки профиля")
    }
    
    @objc
    private func didTapMyLooksButton() {
        
        myLooksButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myLooksButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myLooksButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        favoriteBrandsButton.backgroundColor = .clear
        favoriteBrandsButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBrandsButton.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
        favoriteBrandsViewController.view.isHidden = true
        myLooksViewController.view.isHidden = false
        
        print("Кнопка - выбор Категории")
    }
    
    @objc
    private func didTapFavoriteBrandsButton() {
        
        favoriteBrandsButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBrandsButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        favoriteBrandsButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        myLooksButton.backgroundColor = .clear
        myLooksButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        myLooksButton.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        
        favoriteBrandsViewController.view.isHidden = false
        myLooksViewController.view.isHidden = true
        
        print("Кнопка - выбор Бренды")
    }
}
