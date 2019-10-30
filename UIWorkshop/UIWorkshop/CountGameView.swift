//
//  CountGameView.swift
//  UIWorkshop
//
//  Created by james luo on 10/24/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class CountGameView: UIViewController {
    var count = 0

    @IBOutlet weak var CountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        CountLabel.text = String(count)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(_ sender: UIButton) {
        count += 1
        CountLabel.text = String(count)
    }
    @IBAction func minus(_ sender: UIButton) {
        count -= 1
        CountLabel.text = String(count)
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
