//
//  numberGame.swift
//  UIIntro
//
//  Created by james luo on 7/17/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class numberGame: UIViewController {
    @IBOutlet weak var myNumber: UILabel!
    var numberCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        myNumber.text = String(numberCount)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func addNumber(_ sender: UIButton) {
        numberCount += 1
        myNumber.text = String(numberCount)
        if numberCount == 10{
            self.performSegue(withIdentifier: "arrayScreen", sender: self)
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
