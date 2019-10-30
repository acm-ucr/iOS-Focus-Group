//
//  ViewController.swift
//  UIWorkshop
//
//  Created by james luo on 10/24/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScreenText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func ChangeText(_ sender: UIButton) {
        self.ScreenText.text = "Clicked"
    }
}

