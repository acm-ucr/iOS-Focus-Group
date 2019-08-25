//
//  ViewController.swift
//  Database
//
//  Created by james luo on 8/4/19.
//  Copyright © 2019 james luo. All rights reserved.
//
import SwiftyJSON
import UIKit
import Firebase
class ViewController: UIViewController {
var Count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        build()
        pullData()
        print("main Thread")
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var string: UILabel!
    func pullData (){
        //Pull.enter()
        let ref = Database.database().reference()
        let Movieref = ref.child("Movie")
        Movieref.observe(.childAdded, with: {(snapshot) in
            let myValue = JSON(snapshot.value as Any)
            print(myValue)
            if let movieTitle = myValue["MovieName"].string{
                self.string.text = movieTitle
            }
            else{
                print("null")
            }

        })
    }

}

