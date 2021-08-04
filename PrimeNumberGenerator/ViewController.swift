//
//  ViewController.swift
//  PrimeNumberGenerator
//
//  Created by Abdurrahman Ali on 7/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    var primeNumbers = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Enter \'n\'"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let n: Int = Int(numberTextField.text ?? "") ?? 10
        updatePrimeNumbers(to: n)
        if let destination = segue.destination as? DetailsController {
            destination.primeNumbers = Array(primeNumbers[0..<n])
        }
    }

    func updatePrimeNumbers(to n: Int) {
        guard n > primeNumbers.count else { return }
        var currentPrime = 2
        var nCount = 0
        while nCount < n {
            var isNotPrime = false
            for j in 2..<currentPrime {
                if currentPrime % j == 0 {
                    isNotPrime = true
                }
            }
            if isNotPrime == false {
                primeNumbers.append(currentPrime)
                nCount += 1
            }
            currentPrime += 1
        }
    }
}
