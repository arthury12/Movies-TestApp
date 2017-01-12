//
//  MovieManager.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/09/17.
//  Copyright © 2017 Arthur Yu. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    let title: String
    let releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}

func == (lhs: Movie, rhs: Movie) -> Bool {
    if (lhs.title != rhs.title) {
        return false
    }
    
    if let releaseDate1 = lhs.releaseDate {
        if let releaseDate2 = rhs.releaseDate {
            return releaseDate1 == releaseDate2
        }
    }
    return true
}
