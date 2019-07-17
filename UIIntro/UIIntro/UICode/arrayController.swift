//
//  arrayController.swift
//  UIIntro
//
//  Created by james luo on 7/17/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit

class arrayController: UIViewController {
    var myAry:[Int] = []
    @IBOutlet weak var lastNumber: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0...5{
            myAry.append(Int.random(in: 1..<100))
        }
        if let lastele = myAry.last{
            lastNumber.text = String(lastele)
        }
        else{
            lastNumber.text = "Empty"
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pop(_ sender: Any) {
        if let popEle = myAry.popLast(){
            if popEle.isMultiple(of: 3){
                lastNumber.textColor = UIColor.red
            }
            else{
                lastNumber.textColor = UIColor.black
            }
        }
        if let lastele = myAry.last{
            lastNumber.text = String(lastele)
        }
        else{
            lastNumber.text = "Empty"
        }
    }
    
    @IBAction func push(_ sender: Any) {
        let newele = Int.random(in: 1..<100)
        
            if newele.isMultiple(of: 3){
                lastNumber.textColor = UIColor.red
            }
            else{
                lastNumber.textColor = UIColor.black
            }
        myAry.append(newele)
    
        if let lastele = myAry.last{
            lastNumber.text = String(lastele)
        }
        else{
            lastNumber.text = "Empty"
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
