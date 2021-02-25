//
//  NavigationView.swift
//  iDatchik_Profile
//
//  Created by Татьяна Севостьянова on 17.03.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import  SnapKit

class NavigationView: UIView {
    
    let navigationController: UINavigationController
    
    lazy var lineShapeLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0, y: 0, width: 320, height: 1)
        layer.fillColor = UIColor.lightGray.cgColor
        layer.position = CGPoint(x: 0, y: 0)
        layer.path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 320, height: 1)).cgPath
        return layer
    }()
    
    lazy var eyeButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.setImage(.eyeImg, for: .normal)
        view.addTarget(self,
                       action: #selector(didTapEye),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var searchButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.setImage(.searchImg, for: .normal)
        view.addTarget(self,
                       action: #selector(didTapSearch),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var personButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.setImage(.personImg, for: .normal)
        view.addTarget(self,
                       action: #selector(didTapPerson),
                       for: .touchUpInside)
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        lineShapeLayer.path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: frame.width, height: 1)).cgPath
        lineShapeLayer.position = CGPoint(x: 0, y: 0)
        lineShapeLayer.anchorPoint = CGPoint(x: 0, y: 0)
    }
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init(frame: .zero)
        
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        addSubview(eyeButton)
        addSubview(searchButton)
        addSubview(personButton)
        layer.addSublayer(lineShapeLayer)
        
        eyeButton.snp.makeConstraints({ item in
            item.height.equalTo(15.62)
            item.width.equalTo(22.92)
            item.left.equalToSuperview().offset(80)
            item.top.equalToSuperview().offset(17)
        })
        
        searchButton.snp.makeConstraints({
            $0.height.equalTo(20)
            $0.width.equalTo(20)
            $0.center.equalToSuperview()
            $0.top.equalToSuperview().offset(15)
        })
        
        personButton.snp.makeConstraints({ item in
            item.height.equalTo(20)
            item.width.equalTo(20)
            item.right.equalToSuperview().offset(-80)
            item.top.equalToSuperview().offset(15)
        })
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func didTapEye() {
        //      navigationController.pushViewController(MoreViewController(), animated: true)
        print("Переход по Глазу")
    }
    
    @objc
    private func didTapSearch() {
        print("Переход по Лупе")
    }
    
    @objc
    private func didTapPerson() {
        print("Переход по Персоне")
    }
}
