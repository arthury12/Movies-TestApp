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
        let movie = Movie(title: "Starwars: Rogue One")
        XCTAssertEqual(movie.title, "Starwars: Rogue One")
    }
}
