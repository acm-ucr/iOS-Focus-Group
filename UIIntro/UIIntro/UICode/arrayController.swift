//
//  arrayController.swift
//  UIIntro
//
//  Created by james luo on 7/17/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class arrayController: UIViewController, UITextFieldDelegate {
    var myAry:[String] = []
    @IBOutlet weak var lastString: UILabel!
    @IBOutlet weak var MyText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        MyText.delegate = self
        if let lastele = myAry.last{
            lastString.text = String(lastele)
        }
        else{
            lastString.text = "Empty"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pop(_ sender: Any) {
        myAry.popLast()
        if let lastele = myAry.last{
            lastString.text = String(lastele)
        }
        else{
            lastString.text = "Empty"
        }
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        MyText.becomeFirstResponder()
        MyText.text = ""
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        MyText.resignFirstResponder()
        return true
    }

    @IBAction func push(_ sender: Any) {
        
        myAry.append(MyText.text ?? "")
        if let lastele = myAry.last{
            lastString.text = String(lastele)
        }
        else{
            lastString.text = "Empty"
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
