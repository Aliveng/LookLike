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
  //      view.layer.borderColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
  //      view.layer.borderWidth = 1.5
 //       view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    lazy var topClothesImgView: UIImageView = {
        let view = UIImageView()
        view.image = .jacketNoBackground
        view.contentMode = .scaleAspectFit
   //     view.layer.borderColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
  //      view.layer.borderWidth = 1.5
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    lazy var bottomClothesImgView: UIImageView = {
        let view = UIImageView()
        
        view.image = .pants
        view.contentMode = .scaleAspectFit
   //     view.layer.borderColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
   //     view.layer.borderWidth = 1.5
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    lazy var bagImgView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
     //   view.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    //    view.layer.borderWidth = 1.5
    //    view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    lazy var shoesImgView: UIImageView = {
        let view = UIImageView()
        view.image = .shoes2
        view.contentMode = .scaleAspectFit
     //   view.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
     //   view.layer.borderWidth = 1.5
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.alpha = 1
        return view
    }()
    
    var discover: [DiscoverModel] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    //    layer.borderColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
    //    layer.borderWidth = 1
        
        addSubview(headwearImgView)
        addSubview(bottomClothesImgView)
        addSubview(topClothesImgView)
        addSubview(bagImgView)
        addSubview(shoesImgView)
        
        // занимает один квадрат (92)
        headwearImgView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.height.equalTo(92)
            $0.width.equalTo(122)
            $0.centerX.equalToSuperview().offset(-10)
        }
        
        // занимает два квадрата (184), немного заходит на шею
        topClothesImgView.snp.makeConstraints {
            $0.top.equalTo(headwearImgView.snp.bottom).offset(-10)
            $0.height.equalTo(184)
            $0.width.equalTo(240)
            $0.centerX.equalToSuperview().offset(-14)
        }
        
        // занимает три квадрата (276), заходит на один под topClothesImgView
        bottomClothesImgView.snp.makeConstraints {
            $0.bottom.equalTo(shoesImgView.snp.top)
            $0.height.equalTo(276)
            $0.width.equalTo(132) // величина из дизайна, чтоб хоть как-то смотрелось
            $0.centerX.equalToSuperview().offset(-10)
        }
        
        // занимает один квадрат (92)
        bagImgView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(330)
            $0.height.equalTo(92)
            $0.width.equalTo(122)
            $0.left.equalTo(bottomClothesImgView.snp.right)
        }
        
        // занимает один квадрат (92)
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
    
//    func configure(DiscoverModel: DiscoverModel) {
//
//        self.topClothesImgView.image = UIImage.init(named: "jacketNoBackground")
//        self.topClothesImgView.image = .jacket
//
//    }
    
}
