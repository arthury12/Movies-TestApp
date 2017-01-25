//
//  MainViewControllerTests.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/24/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import XCTest
@testable import FilmFest

class MainViewControllerTests: XCTestCase {
    
    var movieLibVC: MovieLibraryViewController!
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        
        movieLibVC = storyboard.instantiateViewController(withIdentifier: "MovieLibraryVC") as! MovieLibraryViewController
        _ = movieLibVC.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMovieLibraryVC_TableNotNil() {
        XCTAssertNotNil(movieLibVC.movieTableView)
    }
    
}
