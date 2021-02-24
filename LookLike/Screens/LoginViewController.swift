//
//  LoginViewController.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 24.02.2021.
//


import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
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
        
    }

    @objc
    private func didTapLogInButton() {
        let controller = LoginViewController()
        navigationController?.pushViewController(controller, animated: true)
        print("Кнопка - переход после корректного логина/пароля")
    }
    
}
