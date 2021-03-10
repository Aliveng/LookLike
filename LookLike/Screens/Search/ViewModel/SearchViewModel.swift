//
//  CategoriesSearchViewModel.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 09.03.2021.
//

import UIKit

class SearchViewModel {
    
    var title = ""
    var categories: [CategoryModel] = []
    var brands: [BrandModel] = []
    
    func loadData() {
        
        categories = [
            
            CategoryModel(tag: "TopClothes", image: .blazer, name: "Жакет"),
            CategoryModel(tag: "TopClothes", image: .jacket, name: "Куртка"),
            CategoryModel(tag: "TopClothes", image: .tshirt, name: "Футболка"),
            CategoryModel(tag: "TopClothes", image: .shirt, name: "Рубашка"),
            CategoryModel(tag: "TopClothes", image: .coat, name: "Пальто"),
            CategoryModel(tag: "TopClothes", image: .raincoat, name: "Плащ"),
            
            CategoryModel(tag: "BottomClothes", image: .jeans, name: "Джинсы"),
            CategoryModel(tag: "BottomClothes", image: .trousers, name: "Брюки"),
            CategoryModel(tag: "BottomClothes", image: .skirt, name: "Юбка")
            
        ]
        
        brands = [
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
