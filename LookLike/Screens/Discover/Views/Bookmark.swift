//
//  Bookmark.swift
//  VideoTracker
//
//  Created by Татьяна Севостьянова on 20.07.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//


import UIKit


class Bookmark: UIButton {
    var bookmarkMade: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        setImage(.bookmarkImg, for: .normal)
        addTarget(self, action: #selector(didTap), for: .touchUpInside)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTap() {
        bookmarkMade = !bookmarkMade
        if bookmarkMade {
            setImage(.bookmarkMakedImg, for: .normal)
        } else {
            setImage(.bookmarkImg, for: .normal)
            tintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        print(bookmarkMade)
    }
}
