//
//  DiscoverSearchViewModel.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 18.03.2021.
//

import UIKit

class DiscoverSearchViewModel {
    
    var title = ""
    var discoverSearchCategories: [DiscoverSearchCategoryModel] = []
    var discoverSearchBrands: [DiscoverSearchBrandModel] = []
    
    func loadData() {
        
        discoverSearchCategories = [
            
            DiscoverSearchCategoryModel(position: "TopClothes", image: .blazer, name: "Жакет"),
            DiscoverSearchCategoryModel(position: "TopClothes", image: .jacket, name: "Куртка"),
            DiscoverSearchCategoryModel(position: "TopClothes", image: .tshirt, name: "Футболка"),
            DiscoverSearchCategoryModel(position: "TopClothes", image: .shirt, name: "Рубашка"),
            DiscoverSearchCategoryModel(position: "TopClothes", image: .coat, name: "Пальто"),
            DiscoverSearchCategoryModel(position: "TopClothes", image: .raincoat, name: "Плащ")
            
        ]
        
        discoverSearchBrands = [
            
            .init(imageLink: "km"),
            .init(imageLink: "ck"),
            .init(imageLink: "armani"),
            .init(imageLink: "fendi"),
            .init(imageLink: "kenzo"),
            .init(imageLink: "mango"),
            .init(imageLink: "tommy"),
            .init(imageLink: "gucci"),
            .init(imageLink: "hm")
            
        ]
    }
}
