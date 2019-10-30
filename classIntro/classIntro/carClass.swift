//
//  carClass.swift
//  classIntro
//
//  Created by james luo on 10/30/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import Foundation
class Car {
    private var speed: Int
    private var gasMax : Int
    private var curGas = 0
    init(speed: Int, gasMax: Int) {
        self.speed = speed
        self.gasMax = gasMax
    }
    func fillGas(){
        self.curGas = gasMax
    }
    func remainingGas() -> Int{
        return self.curGas
    }
}
