//
//  AnalizeViewController.swift
//  camera
//
//  Created by james luo on 2/27/20.
//  Copyright © 2020 james luo. All rights reserved.
//

import UIKit
import Firebase
import FirebaseMLVision
class AnalizeViewController: UIViewController {

    @IBOutlet weak var TextView: UILabel!
    var text = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TextView.text = self.text

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Analize(_ sender: UIButton) {
        
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
