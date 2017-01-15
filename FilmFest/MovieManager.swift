//
//  MovieManager.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/11/17.
//  Copyright © 2017 Arthur Yu. All rights reserved.
//

import Foundation

class MovieManager {
    var moviesToSeeCount: Int { return moviesToSeeArray.count }
    var moviesSeenCount: Int { return moviesSeenArray.count }
    
    private var moviesToSeeArray = [Movie]()
    private var moviesSeenArray = [Movie]()
    
    func addMovieToLibrary(movie: Movie) {
        moviesToSeeArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToSeeArray[index]
    }
    
    func favMovieAt(index: Int) {
        guard index < moviesToSeeCount else {return}
        
        let favoritedMovie = moviesToSeeArray.remove(at: index)
        moviesSeenArray.append(favoritedMovie)
    }
    
    func returnFavMovieAt(index: Int) -> Movie {
        return moviesSeenArray[index]
    }

    func clearMovies() {
        moviesSeenArray.removeAll()
        moviesToSeeArray.removeAll()
    }
}
