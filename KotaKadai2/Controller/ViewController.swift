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
    let calculate = Calculate()

    @IBAction func didTapButton(_ sender: Any) {
        let num1 = Float(imputNumTextField1.text ?? "") ?? 0
        let num2 = Float(imputNumTextField2.text ?? "") ?? 0

        resultTextField.text = calculate.calculate(index: segmentedControl.selectedSegmentIndex, num1: num1, num2: num2)
    }

}
