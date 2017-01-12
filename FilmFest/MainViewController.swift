//
//  ViewController.swift
//  FilmFest
//
//  Created by Arthur Yu on 1/09/17.
//  Copyright © 2016 Arthur Yu. All rights reserved.
//

import UIKit
import ChameleonFramework

class MainViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = GradientColor(.radial, frame: self.view.frame, colors: [UIColor.flatSkyBlue(), UIColor.flatNavyBlue()])
    }
}

