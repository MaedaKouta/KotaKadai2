//
//  calculator.swift
//  KotaKadai2
//
//  Created by 前田航汰 on 2022/01/20.
//

import Foundation
import CoreText

class Calculate {

    func calculate(index: Int, num1: Float, num2: Float) -> String {
        if index == 0 {
            return plus(num1: num1, num2: num2)
        } else if index == 1 {
            return minus(num1: num1, num2: num2)
        } else if index == 2 {
            return times(num1: num1, num2: num2)
        } else {
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
