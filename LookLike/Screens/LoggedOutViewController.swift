//
//  ViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 21.02.2021.
//

import UIKit
import SnapKit


class LoggedOutViewController: UIViewController {
    
    lazy var logoTitleView: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.layer.borderWidth = 3
        view.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.setTitle("LOOKE LIKE", for: .normal)
        view.titleLabel?.font = .loggedTitleFont(size: 48, weight: .regular)
        view.titleLabel?.textAlignment = .center
        view.titleLabel?.numberOfLines = 2
        view.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        return view
    }()
    
    lazy var buttonsCardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    lazy var logInButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .clear
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("LOG IN", for: .normal)
        view.titleLabel?.font = .serviceButtonsFont(size: 13, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapLogInButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var registerButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.borderWidth = 2
        view.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.layer.cornerRadius = 6
        view.setTitle("REGISTER", for: .normal)
        view.titleLabel?.font = .serviceButtonsFont(size: 13, weight: .regular)
        view.setTitleColor( #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        view.addTarget(self,
                       action: #selector(didTapRegisterButton),
                       for: .touchUpInside)
        return view
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        view.addSubview(logoTitleView)
        view.addSubview(buttonsCardView)
        buttonsCardView.addSubview(logInButton)
        buttonsCardView.addSubview(registerButton)
        
        logoTitleView.snp.makeConstraints {
            $0.height.width.equalTo(200)
            $0.center.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-105) // криво с положительным значением
        }
        
        buttonsCardView.snp.makeConstraints {
            $0.height.equalTo(105)
            $0.left.right.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
        
        logInButton.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.width.equalTo(view.frame.width / 2.2)
            $0.left.equalToSuperview().offset(14)
            $0.top.equalToSuperview().offset(24)
        }
        
        registerButton.snp.makeConstraints {
            $0.height.equalTo(52)
            $0.width.equalTo(view.frame.width / 2.2)
            $0.right.equalToSuperview().inset(14)
            $0.top.equalToSuperview().offset(24)
        }
    }
    
    @objc
    private func didTapLogInButton() {
        let controller = LoginViewController()
        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - переход на Логин")
    }
    
    @objc
    private func didTapRegisterButton() {
        let controller = RegisterViewController()
        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - переход на Регистрацию")
    }
}
