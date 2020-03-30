//
//  main.swift
//  CarClass
//
//  Created by james luo on 10/31/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import Foundation

var newCar = Car(name: "Toyta",FuelMax: 100)
var oldCar = Car(name: "Old Man", FuelMax: 25)
var CarCollection = [newCar,oldCar]
for car in CarCollection{
    car.FuelCar()
}
for car in CarCollection{
    print(car.RemainingFuel())
}
