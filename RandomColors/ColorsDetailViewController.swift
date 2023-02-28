//
//  ColorsDetailViewController.swift
//  RandomColors
//
//  Created by luis armendariz on 2/25/23.
//

import UIKit

class ColorsDetailViewController: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .blue
    }

}
