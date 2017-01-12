//
//  MovieManager.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/11/17.
//  Copyright © 2017 Arthur Yu. All rights reserved.
//

import Foundation

class MovieManager {
    var moviesToSeeCount = 0
    let moviesSeenCount = 0
    
    private var moviesToSeeArray = [Movie]()
    
    func addMovieToLibrary(movie: Movie) {
        moviesToSeeCount += 1
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[index]
    }
}
