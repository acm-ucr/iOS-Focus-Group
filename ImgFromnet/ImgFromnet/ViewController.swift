//
//  ViewController.swift
//  ImgFromnet
//
//  Created by james luo on 1/21/20.
//  Copyright © 2020 james luo. All rights reserved.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {

    @IBOutlet weak var myImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://i.redd.it/u0a8v7nss5c41.png")
       myImg.kf.setImage(with: url)
        // Do any additional setup after loading the view.
    }


}

