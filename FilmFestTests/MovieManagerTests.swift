//
//  MovieManagerTests.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/11/17.
//  Copyright © 2017 Arthur YU. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieManagerTests: XCTestCase {
    
    var movieManager: MovieManager!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        movieManager = MovieManager()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMoviesToSeeCount() {
        XCTAssertEqual(movieManager.moviesToSeeCount, 0)
    }
    
    func testMoviesSeen() {
        XCTAssertEqual(movieManager.moviesSeenCount, 0)
    }
    
    func testMoviesToSeeCountAfterAddingMovies() {
        // Given
        
        // When
        movieManager.addMovieToLibrary(movie: Movie(title: "Sci-fi Adventure"))
        
        // Then
        XCTAssertEqual(movieManager.moviesToSeeCount, 1)
    }
    
    func testMovieAtIndex() {
        // Given
        let movie = Movie(title: "Action Thriller")
        
        // When
        movieManager.addMovieToLibrary(movie: movie)
        let returnedMovieAtIndex = movieManager.movieAtIndex(index: 0)
        
        // Then
        XCTAssertEqual(movie.title, returnedMovieAtIndex.title)
    }
    
    func testFavMovie() {
        // Given
        
        // When
        movieManager.addMovieToLibrary(movie: Movie(title: "Starwars Rogue One", releaseDate: "12/30/16"))
        movieManager.favMovieAt(index: 0)
        
        // Then
        XCTAssertEqual(movieManager.moviesToSeeCount, 0)
        XCTAssertEqual(movieManager.moviesSeenCount, 1)
    }
    
    func testFavMovieUpdate() {
        // Given
        
        // When
        movieManager.addMovieToLibrary(movie: Movie(title: "Action"))
        movieManager.favMovieAt(index: 0)
        
        // Then
        XCTAssertEqual(movieManager.moviesToSeeCount, 0)
        XCTAssertEqual(movieManager.moviesSeenCount, 1)
    }
    
    func testFavMovieRemoveMovie() {
        // Given
        let movie1 = Movie(title: "Action")
        let movie2 = Movie(title: "Horror")
        
        // When
        movieManager.addMovieToLibrary(movie: movie1)
        movieManager.addMovieToLibrary(movie: movie2)
        movieManager.favMovieAt(index: 0)
        
        // Then
        XCTAssertEqual(movieManager.movieAtIndex(index: 0).title, movie2.title)
    }
    
    func testFavMovieAtIndexReturnFavMovie() {
        // Given
        let movie = Movie(title: "Moana")
        
        // When
        movieManager.addMovieToLibrary(movie: movie)
        movieManager.favMovieAt(index: 0)
        let returnedMovie = movieManager.returnFavMovieAt(index: 0)
        
        // Then
        XCTAssertEqual(movie.title, returnedMovie.title)
    }
}
