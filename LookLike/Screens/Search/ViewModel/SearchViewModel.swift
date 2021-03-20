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
    var requests: [RequestModel] = []
    
    func loadData() {
        
        categories = [
            CategoryModel(position: "TopClothes", image: .blazer, name: "Жакет"),
            CategoryModel(position: "TopClothes", image: .jacket, name: "Куртка"),
            CategoryModel(position: "TopClothes", image: .tshirt, name: "Футболка"),
            CategoryModel(position: "TopClothes", image: .shirt, name: "Рубашка"),
            CategoryModel(position: "TopClothes", image: .coat, name: "Пальто"),
            CategoryModel(position: "TopClothes", image: .raincoat, name: "Плащ"),
            
            CategoryModel(position: "BottomClothes", image: .jeans, name: "Джинсы"),
            CategoryModel(position: "BottomClothes", image: .trousers, name: "Брюки"),
            CategoryModel(position: "BottomClothes", image: .skirt, name: "Юбка")
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
        
        requests = [
            RequestModel(position: "TopClothes", imageLink: "coat1"),
            RequestModel(position: "TopClothes", imageLink: "coat2"),
            RequestModel(position: "TopClothes", imageLink: "coat3"),
            RequestModel(position: "TopClothes", imageLink: "coat4"),
            RequestModel(position: "TopClothes", imageLink: "coat5"),
            RequestModel(position: "TopClothes", imageLink: "coat6"),
            RequestModel(position: "TopClothes", imageLink: "coat7"),
            RequestModel(position: "TopClothes", imageLink: "coat8"),
            RequestModel(position: "TopClothes", imageLink: "coat9"),
            RequestModel(position: "TopClothes", imageLink: "coat10"),
            RequestModel(position: "TopClothes", imageLink: "coat11"),
            RequestModel(position: "TopClothes", imageLink: "coat12")
        ]
    }
}
