//
//  DiscoverViewModel.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 17.03.2021.
//

import UIKit


class DiscoverViewModel {
    
    var discover: [DiscoverModel] = []
    
    func loadData() {
        
        discover = [
            
//            DiscoverModel(headwearImgLink: "",
//                          topClothesImgLink: "jacketNoBackground",
//                          bottomClothesImgLink: "Pants",
//                          bagImgLink: "",
//                          shoesImgLink: "Shoes2")
            
            DiscoverModel(headwearImgLink: "",
                          topClothesImgLink: "2",
                          bottomClothesImgLink: "",
                          bagImgLink: "bag",
                          shoesImgLink: "Shoes2")
            
        ]
        
    }
}
