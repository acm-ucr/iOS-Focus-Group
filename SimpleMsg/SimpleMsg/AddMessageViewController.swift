//
//  AddMessageViewController.swift
//  SimpleMsg
//
//  Created by james luo on 2/13/20.
//  Copyright © 2020 james luo. All rights reserved.
//

import UIKit
import FirebaseDatabase
class AddMessageViewController: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet weak var MessageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MessageTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
        textField.becomeFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func SendToDataBase(_ sender: UIButton) {
        let curText = MessageTextField.text
        let databaseRef = Database.database().reference()
        let ref = databaseRef.child("messages")
        let newKey = ref.childByAutoId().key ?? ""
        ref.child(newKey).setValue(curText)
        
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
