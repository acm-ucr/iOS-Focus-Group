//
//  CarViewController.swift
//  CarTable
//
//  Created by james luo on 11/7/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class CarViewController: UIViewController {
    @IBOutlet weak var GasLeft: UILabel!
    @IBOutlet weak var CarName: UILabel!
    var myCar  = 0
    override func viewDidLoad() {
        //ThreadString = "Bad"
        super.viewDidLoad()
        CarName.text = CarList[myCar].Name
        GasLeft.text = "Gas Left:" + String( CarList[myCar].RemainingFuel())
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DriveCar(_ sender: UIButton) {
        CarList[self.myCar].DriveCar(distance: 10)
        GasLeft.text = "Gas Left: " +  String(CarList[myCar].RemainingFuel())
    }
    
    @IBAction func Refuel(_ sender: Any) {
        CarList[self.myCar].FuelCar()
        GasLeft.text = "Gas Left: " + String(CarList[self.myCar].RemainingFuel())
    }
    
    // MARK: - Navigation

    @IBAction func ThreadChange(_ sender: Any) {
        ThreadString = "First"
        self.performSegue(withIdentifier: "thread", sender: self)
    }
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       ThreadString = "Last"
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
