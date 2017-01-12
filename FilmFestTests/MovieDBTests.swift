//
//  MovieStructTests.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/09/17.
//  Copyright © 2016 Arthur Yu. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieStructTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSetMovieTitle() {
        // Given
        let movie = Movie(title: "Starwars: Rogue One")
        
        // Then
        XCTAssertEqual(movie.title, "Starwars: Rogue One")
    }
    
    func testCompareMoviesEqual() {
        // Given 
        let movie1 = Movie(title: "Starwars")
        let movie2 = Movie(title: "Starwars")
        
        // Then
        XCTAssert(movie1 == movie2)
    }
    
    func testCompareMoviesNotEqual() {
        // Given
        let movie1 = Movie(title: "Starwars")
        let movie2 = Movie(title: "Noob")
        
        // Then 
        XCTAssert(movie1 != movie2)
    }
    
    func testCompareMoviesReleaseDateNotEqual() {
        // Given
        let movie1 = Movie(title: "Starwars", releaseDate: "11/12/16")
        let movie2 = Movie(title: "Starwars", releaseDate: "12/12/16")
        
        // Then 
        XCTAssert(movie1 != movie2)
    }
}
