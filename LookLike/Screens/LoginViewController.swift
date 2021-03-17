//
//  LoginViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 24.02.2021.
//

import UIKit
import SnapKit


class LoginViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Log in"
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.font = .mainTitleAndPriceFont(size: 36, weight: .regular)
        return view
    }()
    
    lazy var loginTextField: UITextField = {
        let view = UITextField()
        view.layer.cornerRadius = 6
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        view.placeholder = "anna@example.ru"
        return view
    }()
    
    lazy var passwordTextField: UITextField = {
        let view = UITextField()
        view.layer.cornerRadius = 6
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.sublayerTransform = CATransform3DMakeTranslation(15, 0, 0)
        view.placeholder = "••••••••••••"
        return view
    }()
    
    lazy var logInButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("LOG IN", for: .normal)
        view.titleLabel?.font = .serviceButtonsFont(size: 13, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapLogInButton),
                       for: .touchUpInside)
        return view
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        navigationController?.navigationBar.barTintColor = UIColor.white
        navigationController?.navigationBar.barStyle = .black
        
        let arrowBackButton = UIBarButtonItem(image: .arrowBackImg,
                                              style: .plain,
                                              target: self,
                                              action: #selector(didTapArrowBack) )
        arrowBackButton.tintColor = .black
        navigationItem.leftBarButtonItem = arrowBackButton
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.addSubview(titleLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(logInButton)
        
        titleLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.top.equalToSuperview().offset(104)
        }
        
        loginTextField.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.left.right.equalToSuperview().inset(16)
            $0.top.equalTo(titleLabel.snp.bottom).offset(24)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.left.right.equalToSuperview().inset(16)
            $0.top.equalTo(loginTextField.snp.bottom).offset(16)
        }
        
        logInButton.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.left.right.equalToSuperview().inset(16)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(16)
        }
    }
    
    @objc
    private func didTapArrowBack() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc
    private func didTapLogInButton() {
        
        let discoverViewController = DiscoverViewController(viewModel: DiscoverViewModel.init())
        discoverViewController.tabBarItem = UITabBarItem.init(title: "", image: .eyeImg, tag: 0)
        
        let searchViewController = SearchViewController(viewModel: SearchViewModel.init())
        searchViewController.tabBarItem = UITabBarItem.init(title: "", image: .searchImg, tag: 1)
        
        let profileViewController = ProfileViewController(viewModel: ProfileViewModel.init())
        profileViewController.tabBarItem = UITabBarItem.init(title: "", image: .personImg, tag: 2)
        
        let tabBarController = UITabBarController()
        
        tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tabBarController.tabBar.tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        tabBarController.tabBar.unselectedItemTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        tabBarController.setViewControllers([UINavigationController.init(rootViewController:
                                                                            discoverViewController),
                                             UINavigationController.init(rootViewController:
                                                                            searchViewController),
                                             UINavigationController.init(rootViewController:
                                                                            profileViewController)],
                                            animated: true)
        tabBarController.modalPresentationStyle = .fullScreen
        present(tabBarController, animated: true)
        print("Кнопка - переход после корректного логина/пароля")
    }
}
