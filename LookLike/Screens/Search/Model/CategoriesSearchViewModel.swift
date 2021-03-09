//
//  CategoriesSearchViewModel.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 09.03.2021.
//

import UIKit

struct Item {
    let tag: String
    let image: UIImage
    let name: String
}

class CategoriesSearchViewModel {
    
    var title = ""
    var categoriesImages: [Item] = []
    
    func loadData() {
        
        categoriesImages = [
            
            Item(tag: "TopClothes", image: .blazer, name: "Жакет"),
            Item(tag: "TopClothes", image: .jacket, name: "Куртка"),
            Item(tag: "TopClothes", image: .tshirt, name: "Футболка"),
            Item(tag: "TopClothes", image: .shirt, name: "Рубашка"),
            Item(tag: "TopClothes", image: .coat, name: "Пальто"),
            Item(tag: "TopClothes", image: .raincoat, name: "Плащ"),
            
            //            Item(tag: "BottomClothes", image: .jeans, name: "Джинсы"),
            //            Item(tag: "BottomClothes", image: .trousers, name: "Брюки"),
            //            Item(tag: "BottomClothes", image: .skirt, name: "Юбка")
            
        ]
    }
}
