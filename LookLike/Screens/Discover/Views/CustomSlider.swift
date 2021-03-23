//
//  CustomButton.swift
//  ProgressBarAndSlider
//
//  Created by Татьяна Севостьянова on 10.05.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import Foundation
import SnapKit


class CustomSlider: UIView {
    
    var colorCustom: UIColor = .lightGray {
        didSet {
            thumbView.backgroundColor = colorCustom
//            lowPoint.textColor = colorCustom
//            mediumPoint.textColor = colorCustom
//            highPoint.textColor = colorCustom
            trackLayer.fillColor = colorCustom.cgColor
        }
    }
    
    var colorDefault: UIColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1) {
        didSet {
//            lowLevel.textColor = colorDefault
//            mediumLevel.textColor = colorDefault
//            highLevel.textColor = colorDefault
        }
    }
    
    enum LabelType {
        case low
        case medium
        case high
    }
    
//    func hightLightLabel(type: LabelType){
//        switch type {
//        case .low:
//            lowLevel.textColor = colorCustom
//            mediumLevel.textColor = colorDefault
//            highLevel.textColor = colorDefault
//        case .medium:
//            lowLevel.textColor = colorDefault
//            mediumLevel.textColor = colorCustom
//            highLevel.textColor = colorDefault
//        case .high:
//            mediumLevel.textColor = colorDefault
//            lowLevel.textColor = colorDefault
//            highLevel.textColor = colorCustom
//        }
//    }
    
    lazy var thumbView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        view.backgroundColor = colorCustom
        view.layer.cornerRadius = 10
        return view
    }()
    
    lazy var observerView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 295, height: 20)
        view.backgroundColor = .clear
        view.clipsToBounds = true
        view.addGestureRecognizer(UIPanGestureRecognizer.init(target: self,
                                                              action: #selector(didSlide)))
        return view
    }()
    
    lazy var trackView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 295, height: 4)
        view.backgroundColor = #colorLiteral(red: 0.8655421856, green: 0.638703721, blue: 0.5635588721, alpha: 1)
        view.layer.cornerRadius = 6
        view.layer.masksToBounds = true
        return view
    }()
    
//    lazy var lowPoint: UILabel = {
//        let view = UILabel()
//        view.text = "|"
//        view.font = .boldSystemFont(ofSize: 7)
//        view.textColor = colorCustom
//        return view
//    }()
//
//    lazy var lowLevel: UILabel = {
//        let view = UILabel()
//        view.text = "Низкий"
//        view.font = .systemFont(ofSize: 10)
//        view.textColor = colorDefault
//        return view
//    }()
    
//    lazy var mediumPoint: UILabel = {
//        let view = UILabel()
//        view.text = "|"
//        view.font = .boldSystemFont(ofSize: 7)
//        view.textColor = colorCustom
//        return view
//    }()
//
//    lazy var mediumLevel: UILabel = {
//        let view = UILabel()
//        view.text = "Средний"
//        view.font = .systemFont(ofSize: 10)
//        view.textColor = colorDefault
//        return view
//    }()
    
//    lazy var highPoint: UILabel = {
//        let view = UILabel()
//        view.text = "|"
//        view.font = .boldSystemFont(ofSize: 7)
//        view.textColor = colorCustom
//        return view
//    }()
//
//    lazy var highLevel: UILabel = {
//        let view = UILabel()
//        view.text = "Высокий"
//        view.font = .systemFont(ofSize: 10)
//        view.textColor = colorDefault
//        return view
//    }()
    
    lazy var trackLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.fillColor = colorCustom.cgColor
        layer.frame = CGRect(x: 0, y: 0, width: 10, height: 4)
        layer.position = CGPoint(x: 0, y: 2)
        layer.cornerRadius = 2
        return layer
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        trackLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0,
                                                           width: 10,
                                                           height: 4),
                                                           cornerRadius: 2).cgPath
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(observerView)
        observerView.addSubview(trackView)
        observerView.addSubview(thumbView)
        trackView.layer.addSublayer(trackLayer)
//        addSubview(lowPoint)
//        addSubview(lowLevel)
//        addSubview(mediumPoint)
//        addSubview(mediumLevel)
//        addSubview(highPoint)
//        addSubview(highLevel)
        
        observerView.snp.makeConstraints({ item in
            item.center.equalToSuperview()
            item.height.equalTo(20)
            item.left.equalToSuperview()
            item.right.equalToSuperview()
        })
        
        trackView.snp.makeConstraints({ item in
            item.centerY.equalToSuperview()
            item.height.equalTo(4)
            item.left.equalToSuperview()
            item.right.equalToSuperview()
        })
        
        thumbView.snp.makeConstraints({ item in
            item.centerY.equalTo(trackView.snp.centerY)
            item.height.equalTo(20)
            item.width.equalTo(20)
        })
        
//        lowPoint.snp.makeConstraints({ item in
//            item.top.equalTo(observerView.snp.bottom).offset(12)
//            item.left.equalToSuperview().offset(24)
//        })
//
//        lowLevel.snp.makeConstraints({ item in
//            item.top.equalTo(lowPoint.snp.bottom).offset(2)
//            item.centerX.equalTo(lowPoint.snp.centerX)
//        })
//
//        mediumPoint.snp.makeConstraints({ item in
//            item.top.equalTo(observerView.snp.bottom).offset(12)
//            item.centerX.equalTo(observerView.snp.centerX)
//        })
//
//        mediumLevel.snp.makeConstraints({ item in
//            item.top.equalTo(mediumPoint.snp.bottom).offset(2)
//            item.centerX.equalTo(mediumPoint.snp.centerX)
//        })
//
//        highPoint.snp.makeConstraints({ item in
//            item.top.equalTo(observerView.snp.bottom).offset(12)
//            item.right.equalToSuperview().offset(-24)
//        })
//
//        highLevel.snp.makeConstraints({ item in
//            item.top.equalTo(highPoint.snp.bottom).offset(2)
//            item.centerX.equalTo(highPoint.snp.centerX)
//        })
    }
    
//    @objc
//    private func didTapButton() {
//        print("Button tap")
//    }
    
    @objc
    private func didSlide(_ pan: UIPanGestureRecognizer){
        let point = pan.location(in: trackView)
        let pointMin: CGFloat = 10
        let pointMax = trackView.bounds.width - 10
        var thumbPosition = CGPoint(x: point.x, y: trackView.center.y)
        
        switch point.x {
            
        case -1000..<trackView.bounds.width / 3:
            
            thumbView.center = CGPoint(x: pointMin, y: trackView.center.y)
            switch pan.state {
            case .ended:
                thumbPosition = CGPoint(x:  pointMin + 16, y: trackView.center.y)
            default:
                break
            }
//            hightLightLabel(type: .low)
            
        case trackView.bounds.width / 3..<(2 * trackView.bounds.width / 3):
            
            thumbView.center = CGPoint(x: point.x, y: trackView.center.y)
            switch pan.state {
            case .ended:
                thumbPosition = CGPoint(x: trackView.bounds.width / 2, y: trackView.center.y)
            default:
                break
            }
//            hightLightLabel(type: .medium)
            
        case (2 * trackView.bounds.width / 3)..<pointMax + 1000:
            
            thumbView.center = CGPoint(x: pointMax, y: trackView.center.y)
            switch pan.state {
            case .ended:
                thumbPosition = CGPoint(x: pointMax - 16, y: trackView.center.y)
            default:
                break
            }
//            hightLightLabel(type: .high)
            
        default:
            break
        }
        
        switch pan.state {
        case .changed:
            self.thumbView.center = thumbPosition
            trackLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0,
                                                               width: point.x,
                                                               height: 4),
                                                               cornerRadius: 2).cgPath
        case .ended:
            trackLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0,
                                                               width: thumbPosition.x,
                                                               height: 4),
                                                               cornerRadius: 2).cgPath
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 2/7,
                           initialSpringVelocity: 7,
                           options: [.curveEaseOut], animations: {
                            self.thumbView.center = thumbPosition},
                           completion: nil)
        default:
            break
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
