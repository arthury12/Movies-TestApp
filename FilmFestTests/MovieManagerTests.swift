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
        movieManager.addMovieToLibrary(movie: Movie(title: "Sci-fi Adventure"))
        XCTAssertEqual(movieManager.moviesToSeeCount, 1)
    }
    
    func testMovieAtIndex() {
        let movie = Movie(title: "Action Thriller")
        movieManager.addMovieToLibrary(movie: movie)
        
        let returnedMovieAtIndex = movieManager.movieAtIndex(index: 0)
        XCTAssertEqual(movie.title, returnedMovieAtIndex.title)
    }
    
    func 
}
