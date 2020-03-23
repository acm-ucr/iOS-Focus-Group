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

    @IBAction func changeValue(_ sender: Any) {
        let ref = Database.database().reference()
        let Movieref = ref.child("Movie")
        let ranValue = Int(arc4random_uniform(UInt32(10)))
        Movieref.child("Street").setValue(ranValue)
    }
    @IBOutlet weak var string: UILabel!
    func pullData (){
        //Pull.enter()
        let ref = Database.database().reference()
        let Movieref = ref.child("Movie")
        Movieref.observe(.childChanged, with: {(snapshot) in
            print(snapshot.key)
            print(snapshot.value)
//            if let movieTitle = myValue["MovieName"].string{
//                self.string.text = movieTitle
//                print(movieTitle)
//            }
//            else{
//                print("null")
//            }

        })
    }
    

}

