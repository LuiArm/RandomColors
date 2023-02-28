//
//  ColorsTableViewController.swift
//  RandomColors
//
//  Created by luis armendariz on 2/25/23.
//

import UIKit

class ColorsTableViewController: UIViewController {
    
    enum Cells {
        static let ColorCell = "ColorCell"
    }
    
    enum Segues {
        static let ToDetail = "ToColorsDetailVC"
    }
    
    var colors: [UIColor] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()

    }
    
    func addRandomColors() {
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailViewController
        destVC.color = sender as? UIColor   
    }
}

extension ColorsTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.ColorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        return performSegue(withIdentifier: Segues.ToDetail , sender: color )
    }
}
