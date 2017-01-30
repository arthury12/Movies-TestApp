//
//  MovieLibraryDataServiceTests.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/29/17.
//  Copyright © 2017 Harrison Ferrone. All rights reserved.
//

import XCTest

@testable import FilmFest
class MovieLibraryDataServiceTests: XCTestCase {
    
    var movieLibDataService: MovieLibraryDataService!
    var tableView: UITableView!
    
    override func setUp() {
        super.setUp()
        movieLibDataService = MovieLibraryDataService()
        movieLibDataService.movieManager = MovieManager()
        tableView = UITableView()
        
        tableView.dataSource = movieLibDataService
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTableViewSectionCount() {
        let sectionCount = tableView.numberOfSections
        
        XCTAssertEqual(sectionCount, 2)
    }
    
    func testRowCountInSectionOne() {
        movieLibDataService.movieManager?.addMovieToLibrary(movie: Movie(title: "The Godfather"))
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
        
        movieLibDataService.movieManager?.addMovieToLibrary(movie: Movie(title: "American Gangster"))
        tableView.reloadData()
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
    }
}
