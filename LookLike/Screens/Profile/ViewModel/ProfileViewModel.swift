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
  //  var myLooks: [MyLooksModel] = []
    
    func loadData() {
        
        favoriteBrands = [
        
            FavoriteBrandsModel(imageLink: "jacketNoBackground", brand: "The North Face", price: 27000),
            FavoriteBrandsModel(imageLink: "raincoatLegless", brand: "Karen Millen", price: 32000)
            
        ]

//        myLooks = [
        
        
//        ]
        
    }
}
