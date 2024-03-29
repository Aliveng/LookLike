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
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.touchTapped(_:)))
        self.addGestureRecognizer(tap)
        
        return view
    }()
    
    var valueOfSliderScaleAfterChanges: Float = 0
    var valueOfSliderPositionAfterChanges: Float = 0
    var valueOfSliderVerticalAfterChanges: Float = 0
    
    var productParametricTransformAfterSliders: [Float] = []
    
    lazy var sliderScale: UISlider = {
        let view = UISlider()
        view.minimumValue = 1
        view.maximumValue = 2
        view.isContinuous = true
        view.tintColor = #colorLiteral(red: 0.1621871024, green: 0.1865742252, blue: 0.3998256645, alpha: 1)
        view.addTarget(self, action: #selector(sliderScaleValueDidChange(slider:event:)),                                        for: .valueChanged)
        return view
    }()
    
    lazy var sliderPosition: UISlider = {
        let view = UISlider()
        view.minimumValue = -10
        view.maximumValue = 10
        view.isContinuous = true
        view.tintColor = #colorLiteral(red: 0.1621871024, green: 0.1865742252, blue: 0.3998256645, alpha: 1)
        view.addTarget(self, action: #selector(sliderPositionValueDidChange(slider:event:)),                                     for: .valueChanged)
        return view
    }()
    
    lazy var sliderVertical: UISlider = {
        let view = UISlider()
        view.minimumValue = -10
        view.maximumValue = 10
        view.isContinuous = true
        view.tintColor = #colorLiteral(red: 0.1621871024, green: 0.1865742252, blue: 0.3998256645, alpha: 1)
        view.transform = CGAffineTransform(rotationAngle: .pi / -2)
        view.addTarget(self, action: #selector(sliderVerticalValueDidChange(slider:event:)),                                     for: .valueChanged)
        return view
    }()
    
    lazy var bottomClothesImgView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
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
        view.contentMode = .scaleAspectFit
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
    
    @objc func sliderScaleValueDidChange(slider: UISlider, event: UIEvent) {
        
        topClothesImgView.transform = CGAffineTransform(scaleX: CGFloat(slider.value),
                                                        y:  CGFloat(slider.value))
        
        if let touchEvent = event.allTouches?.first {
            switch touchEvent.phase {
            case .began:
                print("began")
            case .moved:
                print(slider.value)
            case .ended:
                valueOfSliderScaleAfterChanges = slider.value
                print("Scale ended of - \(valueOfSliderScaleAfterChanges)")
            default:
                break
            }
        }
    }
    
    @objc func sliderPositionValueDidChange(slider: UISlider, event: UIEvent) {
        
        topClothesImgView.transform = CGAffineTransform(translationX: CGFloat(slider.value),                                              y: 0)
        
        if let touchEvent = event.allTouches?.first {
            switch touchEvent.phase {
            case .began:
                print("began")
            case .moved:
                
                topClothesImgView.transform = CGAffineTransform(scaleX: CGFloat(valueOfSliderScaleAfterChanges),
                    y:  CGFloat(valueOfSliderScaleAfterChanges))
                
                print(slider.value)
            case .ended:
                
                valueOfSliderPositionAfterChanges = slider.value
                
                print("Position ended of - \(valueOfSliderPositionAfterChanges)")
            default:
                break
            }
        }
    }
    
    @objc func sliderVerticalValueDidChange(slider: UISlider, event: UIEvent) {
        
        topClothesImgView.transform = CGAffineTransform(translationX: 0, y: CGFloat(slider.value))
        
        if let touchEvent = event.allTouches?.first {
            switch touchEvent.phase {
            case .began:
                print("began")
            case .moved:
                print(slider.value)
            case .ended:
                valueOfSliderVerticalAfterChanges = slider.value
                print("Vertical ended of - \(valueOfSliderVerticalAfterChanges)")
            default:
                break
            }
        }
    }
    
    @objc func touchTapped(_ sender: UITapGestureRecognizer) {
        
        sliderScale.isHidden = false
        sliderPosition.isHidden = false
        sliderVertical.isHidden = false
        
        print("Отобразить слайдер")
        
    }
}
