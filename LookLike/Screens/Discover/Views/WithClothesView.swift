//
//  WithClothesView.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 16.03.2021.
//

import UIKit


class WithClothesView: UIView {
    
    lazy var headwearImgView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        view.alpha = 1
        return view
    }()

    lazy var topClothesImgView: UIImageView = {
        let view = UIImageView()
        view.image = .blouse47
        view.contentMode = .scaleAspectFit
        view.layer.borderWidth = 0.5
        view.layer.borderColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.touchTapped(_:)))
        self.addGestureRecognizer(tap)
        
        return view
    }()
    
    lazy var sliderScale: UISlider = {
        let view = UISlider()
        //  view.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        //  view.layer.borderWidth = 0.5
        view.minimumValue = 1
        view.maximumValue = 2
        view.isContinuous = true
        view.tintColor = #colorLiteral(red: 0.1621871024, green: 0.1865742252, blue: 0.3998256645, alpha: 1)
        view.addTarget(self, action: #selector(self.sliderScaleValueDidChange(_:)), for: .valueChanged)
        return view
    }()
    
    lazy var sliderPosition: UISlider = {
        let view = UISlider()
        view.minimumValue = -10
        view.maximumValue = 10
        view.isContinuous = true
        view.tintColor = #colorLiteral(red: 0.1621871024, green: 0.1865742252, blue: 0.3998256645, alpha: 1)
        view.addTarget(self, action: #selector(self.sliderPositionValueDidChange(_:)), for: .valueChanged)
        return view
    }()
    
    lazy var sliderVertical: UISlider = {
        let view = UISlider()
        view.minimumValue = -10
        view.maximumValue = 10
        view.isContinuous = true
        view.tintColor = #colorLiteral(red: 0.1621871024, green: 0.1865742252, blue: 0.3998256645, alpha: 1)
        view.transform = CGAffineTransform(rotationAngle: .pi / -2)
        view.addTarget(self, action: #selector(self.sliderVerticalValueDidChange(_:)), for: .valueChanged)
        return view
    }()

    lazy var bottomClothesImgView: UIImageView = {
        let view = UIImageView()
        view.image = .jeans29
        view.contentMode = .scaleAspectFit
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    lazy var bagImgView: UIImageView = {
        let view = UIImageView()
        view.image = .bag
        view.contentMode = .scaleAspectFit
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    lazy var shoesImgView: UIImageView = {
        let view = UIImageView()
        //    view.image = .shoes2
        view.contentMode = .scaleAspectFit
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    var discover: [DiscoverModel] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(headwearImgView)
        addSubview(bottomClothesImgView)
        addSubview(topClothesImgView)
        addSubview(bagImgView)
        addSubview(shoesImgView)
        addSubview(sliderScale)
        addSubview(sliderPosition)
        addSubview(sliderVertical)
        
        sliderScale.isHidden = true
        sliderPosition.isHidden = true
        sliderVertical.isHidden = true

        sliderScale.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-60)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(42)
            $0.width.equalTo(295)
        }
        
        sliderPosition.snp.makeConstraints {
            $0.top.equalTo(sliderScale.snp.bottom)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(42)
            $0.width.equalTo(295)
        }
        
        sliderVertical.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.right.equalToSuperview()
            $0.height.equalTo(42)
            $0.width.equalTo(100)
        }
        
        headwearImgView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.height.equalTo(92)
            $0.width.equalTo(122)
            $0.centerX.equalToSuperview().offset(-10)
        }

        topClothesImgView.snp.makeConstraints {
            $0.top.equalTo(headwearImgView.snp.bottom).offset(-10)
            $0.height.equalTo(119)
            $0.width.equalTo(138)
            $0.centerX.equalToSuperview().offset(-14)
        }

        bottomClothesImgView.snp.makeConstraints {
            $0.bottom.equalTo(shoesImgView.snp.top)
            $0.height.equalTo(278)
            $0.width.equalTo(121)
            $0.centerX.equalToSuperview().offset(-16)
        }
        
        bagImgView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(330)
            $0.height.equalTo(92)
            $0.width.equalTo(122)
            $0.left.equalTo(bottomClothesImgView.snp.right)
        }
        
        shoesImgView.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.height.equalTo(92)
            $0.width.equalTo(140)
            $0.centerX.equalToSuperview().offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func sliderScaleValueDidChange(_ sender:UISlider!) {
        
        topClothesImgView.transform = CGAffineTransform(scaleX: CGFloat(sender.value),
                                                             y:  CGFloat(sender.value))
        print(sender.value)
    }
    
    @objc func sliderPositionValueDidChange(_ sender:UISlider!) {
        
        topClothesImgView.transform = CGAffineTransform(translationX: CGFloat(sender.value),                                                         y: 0)
        print(sender.value)
    }
    
    @objc func sliderVerticalValueDidChange(_ sender:UISlider!) {
        
        topClothesImgView.transform = CGAffineTransform(translationX: 0, y: CGFloat(sender.value))
        print(sender.value)
    }
    
    @objc func touchTapped(_ sender: UITapGestureRecognizer) {
        
        sliderScale.isHidden = false
        sliderPosition.isHidden = false
        sliderVertical.isHidden = false
        
        print("Отобразить слайдер")
        
    }
}
