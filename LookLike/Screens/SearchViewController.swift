//
//  SearchViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 25.02.2021.
//

import UIKit
import SnapKit


class SearchViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Search"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .mainTitleAndPriceFont(size: 36, weight: .regular)
        return view
    }()
    
    lazy var searchTextField: UITextField = {
        let view = UITextField()
        view.layer.cornerRadius = 6
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        view.placeholder = "Search clothes"
        return view
    }()
    
    lazy var categoriesButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("Категории", for: .normal)
        view.titleLabel?.font = .catalogButtonsFont(size: 18, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapCategoriesButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var brandsButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("Бренды", for: .normal)
        view.titleLabel?.font = .catalogButtonsFont(size: 18, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapBrandsButton),
                       for: .touchUpInside)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        view.addSubview(titleLabel)
        view.addSubview(searchTextField)
        
        stackButtonsView()
        
        titleLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(104)
        }
        
        searchTextField.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.top.equalTo(titleLabel.snp.bottom).offset(37)
        }
    }
    
    func stackButtonsView() {
        
        let buttonsStack = UIStackView(arrangedSubviews: [categoriesButton, brandsButton])
        buttonsStack.backgroundColor = .clear
        buttonsStack.axis = .horizontal
        buttonsStack.distribution = .fillEqually
        buttonsStack.spacing = 25
        
        view.addSubview(buttonsStack)
        
        buttonsStack.snp.makeConstraints({ item in
            item.top.equalTo(searchTextField.snp.bottom).offset(21)
            item.height.equalTo(50)
            item.left.equalToSuperview().offset(15)
            item.right.equalToSuperview().offset(-15)
        })
        
        buttonsStack.addSubview(categoriesButton)
        buttonsStack.addSubview(brandsButton)
        
    }
    
    @objc
    private func didTapCategoriesButton() {
        let controller = DiscoverViewController()
        navigationController?.pushViewController(controller, animated: true)
        categoriesButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        categoriesButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        categoriesButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        brandsButton.backgroundColor = .clear
        brandsButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        brandsButton.setTitleColor( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        print("Кнопка - выбор Категории")
    }
    
    @objc
    private func didTapBrandsButton() {
        let controller = LoginViewController()
        navigationController?.pushViewController(controller, animated: true)
        brandsButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        brandsButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        brandsButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        categoriesButton.backgroundColor = .clear
        categoriesButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        categoriesButton.setTitleColor( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        print("Кнопка - выбор Бренды")
    }
}
