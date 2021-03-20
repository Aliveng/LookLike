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
    var products: [ProductModel] = []
    
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
        
        products = [
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat1",
                  name: "",
                  price: 1),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat2",
                  name: "",
                  price: 2),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat3",
                  name: "",
                  price: 3),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat4",
                  name: "",
                  price: 4),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat5",
                  name: "",
                  price: 5),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat6",
                  name: "",
                  price: 6),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat7",
                  name: "",
                  price: 7),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat8",
                  name: "",
                  price: 8),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat9",
                  name: "",
                  price: 9),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat10",
                  name: "",
                  price: 10),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat11",
                  name: "",
                  price: 11),
            .init(category: CategoryModel(position: "", image: .blazer, name: ""),
                  brand: BrandModel(imageLink: ""),
                  imageLink: "coat12",
                  name: "",
                  price: 12)
        ]
    }
}
