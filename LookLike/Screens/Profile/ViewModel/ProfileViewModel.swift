//
//  ProfileViewModel.swift
//  LookLike
//
//  Created by Татьяна Севостьянова on 10.03.2021.
//


import UIKit


class ProfileViewModel {
    
    var title = ""
    var favoriteBrands: [FavoriteBrandsModel] = []
    var myLooks: [MyLooksModel] = []
    
    func loadData() {
        
        favoriteBrands = [
            
            FavoriteBrandsModel(imageLink: "jacketNoBackground", brand: "The North Facehe North Face", price: "127 000 руб."),
            FavoriteBrandsModel(imageLink: "raincoatLegless", brand: "Karen Millen", price: "32 000 руб."),
            FavoriteBrandsModel(imageLink: "Shoes", brand: "Prada", price: "43 000 руб.")
            
        ]
        
        myLooks = [ // пока String, но возможно массивы, если по картинкам решим сохранять
            
            MyLooksModel(position: "TopClothes", imageLink: "look1"),
            MyLooksModel(position: "TopClothes", imageLink: "look2")
            
        ]
    }
}
