//
//  ColorsTableViewController.swift
//  RandomColors
//
//  Created by luis armendariz on 2/25/23.
//

import UIKit

class ColorsTableViewController: UIViewController {
    var colors: [UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            return performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
