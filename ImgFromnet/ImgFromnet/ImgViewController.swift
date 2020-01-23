//
//  ViewController.swift
//  ImgFromnet
//
//  Created by james luo on 1/21/20.
//  Copyright © 2020 james luo. All rights reserved.
//

import UIKit
import Kingfisher
import Spring
class ImgViewController: UIViewController {
    var url = URL(string: "https://i.redd.it/u0a8v7nss5c41.png")
   var curLabel = "https://i.redd.it/u0a8v7nss5c41.png"
    //@IBOutlet weak var myLabel: UILabel!
   @IBOutlet weak var myImg: SpringImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
      //  myLabel.text = curLabel
//        self.myImg.animation = "shake"
//        self.myImg.autostart = false
            url = URL(string: curLabel)
//        self.url = URL(string: "https://i.redd.it/u0a8v7nss5c41.png")
       myImg.kf.setImage(with: url)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Animate(_ sender: UIButton) {
        self.myImg.animate()
        self.myImg.animation = "shake"
        self.myImg.animateTo()
//
//
//
    }
    

}

