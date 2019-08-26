//
//  ViewController.swift
//  UIIntro
//
//  Created by james luo on 7/16/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit
import Alamofire_SwiftyJSON
import Alamofire
import SwiftyJSON
import Kingfisher
class ViewController: UIViewController {
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var myImg: UIImageView!
    var myThread = DispatchGroup()
    var LoadData: JSON?
    override func viewDidLoad() {
        //Signal for Async Process
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loadNew(_ sender: UIButton) {
        
    }
    
    

}
