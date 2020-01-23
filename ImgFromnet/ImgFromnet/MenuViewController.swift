//
//  MenuViewController.swift
//  ImgFromnet
//
//  Created by james luo on 1/23/20.
//  Copyright © 2020 james luo. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    var curChar = "https://www.handletheheat.com/wp-content/uploads/2015/03/Best-Birthday-Cake-with-milk-chocolate-buttercream-SQUARE.jpg"
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Car(_ sender: UIButton) {
        self.myLabel.text = "Car"
        curChar = "https://f1.media.brightcove.com/8/1078702682/1078702682_6004950245001_6004956161001-vs.jpg?pubId=1078702682&videoId=6004956161001"
        
    }
    @IBAction func nextButton(_ sender: Any) {
        self.performSegue(withIdentifier: "userSelect", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "userSelect"{
            if let nextView = segue.destination as? ImgViewController{
                nextView.curLabel = self.curChar
            }
        }
    }
    

}
