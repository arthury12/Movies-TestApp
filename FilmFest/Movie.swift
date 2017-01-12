//
//  MovieManager.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/09/17.
//  Copyright © 2017 Arthur Yu. All rights reserved.
//

import Foundation

struct Movie {
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
