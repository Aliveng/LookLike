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
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.top.equalTo(titleLabel.snp.bottom).offset(24)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.top.equalTo(loginTextField.snp.bottom).offset(24)
        }
        
        logInButton.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(24)
        }
    }

    @objc
    private func didTapLogInButton() {
        let controller = LoginViewController()
        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - переход после корректного логина/пароля")
    }
    
}
