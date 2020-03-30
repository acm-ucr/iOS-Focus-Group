//
//  Car.swift
//  CarClass
//
//  Created by james luo on 10/31/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import Foundation
struct Engine {
    var EType = "V4"
}
class Car{
    var Name : String
    var CarEngine = Engine()
    var FuelMax : Int
    private var CurFuel = 0
    init(name: String, FuelMax : Int) {
        if name == "Camery"{
            CarEngine.EType = "V6"
        }
        self.Name = name
        self.FuelMax = FuelMax
    }
    func FuelCar(){
        self.CurFuel = self.FuelMax
    }
    func RemainingFuel() -> Int{
        return self.CurFuel
    }
    func DriveCar(distance: Int){
        if distance > self.CurFuel{
            self.CurFuel = 0
        }
        else{
            self.CurFuel -= distance
        }
    }
    //func funcName)(params) -> return Type
}
