//
//  ViewController.swift
//  KotaKadai2
//
//  Created by 前田航汰 on 2022/01/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var imputNumTextField1: UITextField!
    @IBOutlet private weak var imputNumTextField2: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultTextField: UILabel!

    private let calculate = Calculator()

    @IBAction func didTapButton(_ sender: Any) {
        let num1 = Float(imputNumTextField1.text ?? "") ?? 0
        let num2 = Float(imputNumTextField2.text ?? "") ?? 0

        let calculation: Calculator.Calculation

                 switch segmentedControl.selectedSegmentIndex {
                 case 0:
                     calculation = .addition
                 case 1:
                     calculation = .subtraction
                 case 2:
                     calculation = .multiplication
                 case 3:
                     calculation = .division
                 default:
                     return
                 }

                 resultTextField.text = calculate.calculate(calculation: calculation, num1: num1, num2: num2)
    }

}
