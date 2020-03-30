//
//  ThreadInfoViewController.swift
//  CarTable
//
//  Created by james luo on 2/4/20.
//  Copyright © 2020 james luo. All rights reserved.
//

import UIKit
import Alamofire_SwiftyJSON
import Alamofire
import SwiftyJSON
class ThreadInfoViewController: UIViewController {
    var CurSite = "https://www.reddit.com/r/cars/comments/ey5mi7/weekly_what_car_should_i_buy_megathread/.json"
    var MyJSONData: JSON?
    let MyThread = DispatchGroup()
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.CurSite == ""{
            return
        }
        self.MyThread.enter()
        self.LoadFromNetwork()
        self.MyThread.notify(queue: .main){
            self.ParseJSON()
        }
        // Do any additional setup after loading the view.
    }
    func LoadFromNetwork(){
        Alamofire.request(self.CurSite + ".json").responseSwiftyJSON{dataResponse in
        //print(dataResponse.value as Any)
            self.MyJSONData = JSON(dataResponse.value ?? nil)
            print("done")
            self.MyThread.leave()
            
        }
    }
    func ParseJSON(){
        
        if self.MyJSONData?.arrayValue.count == 0{
            if let url = URL(string: self.CurSite) {
                UIApplication.shared.open(url)
            }
            return
        }
        let title = MyJSONData?.arrayValue[0]["data"]["children"][0]["data"]["title"].stringValue
        print(title as Any)
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
