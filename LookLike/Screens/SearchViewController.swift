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
    
    lazy var navigationPanelView: NavigationView = {
        let view = NavigationView(navigationController: self.navigationController!)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        navigationItem.setHidesBackButton(true, animated: true)
        
        view.addSubview(titleLabel)
        view.addSubview(searchTextField)
        view.addSubview(categoriesButton)
        view.addSubview(brandsButton)
        view.addSubview(navigationPanelView)
        
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
        
        categoriesButton.snp.makeConstraints {
            $0.height.equalTo(50)
            $0.width.equalTo(view.frame.width / 2.2)
            $0.left.equalToSuperview().offset(14)
            $0.top.equalTo(searchTextField.snp.bottom).offset(21)
        }
        
        brandsButton.snp.makeConstraints {
            $0.height.equalTo(50)
            $0.width.equalTo(view.frame.width / 2.2)
            $0.right.equalToSuperview().offset(-14)
            $0.top.equalTo(searchTextField.snp.bottom).offset(21)
        }
        
        navigationPanelView.snp.makeConstraints({ item in
            item.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            item.height.equalTo(50)
            item.left.equalToSuperview()
            item.right.equalToSuperview()
        })
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
        //        let controller = LoginViewController()
        //        navigationController?.pushViewController(controller, animated: true)
        brandsButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        brandsButton.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        brandsButton.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        
        categoriesButton.backgroundColor = .clear
        categoriesButton.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        categoriesButton.setTitleColor( #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        print("Кнопка - выбор Бренды")
    }
}
