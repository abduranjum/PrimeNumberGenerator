//
//  ViewController.swift
//  PrimeNumberGenerator
//
//  Created by Abdurrahman Ali on 7/14/21.
//

import UIKit

class DetailsController: UITableViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    var primeNumbers: [Int]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Prime Numbers"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return primeNumbers?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // create a new cell if needed or reuse an old one
        let cellIdentifier =  "cell"
        var cell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCell.CellStyle.value1, reuseIdentifier: cellIdentifier)
        }

        let n = indexPath.row + 1
        let primeNumber = primeNumbers?[n - 1]
        cell?.textLabel?.text = "\(primeNumber!)"
        cell?.detailTextLabel?.text = "n=\(n)"

        return cell!
    }
}
