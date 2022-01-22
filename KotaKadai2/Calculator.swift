//
//  calculator.swift
//  KotaKadai2
//
//  Created by 前田航汰 on 2022/01/20.
//

import Foundation
import CoreText

class Calculator {

    enum Calculation {
        case addition
        case subtraction
        case multiplication
        case division
    }

    func calculate(calculation: Calculation, num1: Float, num2: Float) -> String {
        switch calculation {
        case .addition:
            return plus(num1: num1, num2: num2)
        case .subtraction:
            return minus(num1: num1, num2: num2)
        case .multiplication:
            return times(num1: num1, num2: num2)
        case .division:
            return division(num1: num1, num2: num2)
        }
    }

    private func plus(num1: Float, num2: Float) -> String {
        return String(num1 + num2)
    }

    private func minus(num1: Float, num2: Float) -> String {
        return String(num1 - num2)
    }

    private func times(num1: Float, num2: Float) -> String {
        return String(num1 * num2)
    }

    private func division(num1: Float, num2: Float) -> String {
        if num2 == 0 {
            return "割る数には0以外を入力して下さい"
        } else {
            return String(num1 / num2)
        }
    }
}
