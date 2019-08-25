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
            self.myThread.enter()
            AlamoPrepare()
            let parse = DispatchWorkItem{
                //
                self.JsonParser()
            }
        
            myThread.notify(queue: .main, work: parse)
//        myThread.notify(queue: .main){
//            self.JsonParser()
//        }
        print("mainThread")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loadNew(_ sender: UIButton) {
        self.JsonParser()
    }
    
    func AlamoPrepare(){
        Alamofire.request("https://www.reddit.com/.json").responseSwiftyJSON{dataResponse in
            //print(dataResponse.value as Any)
            self.LoadData = JSON(dataResponse.value!)
            print("done")
            self.myThread.leave()
        }
        
    
    }
    func JsonParser(){
        Alamofire.request("https://api.nasa.gov/planetary/apod?api_key=i4WERS5Lp8YotCxpWV7l07nsblcJ0vm69nauMGcK").responseSwiftyJSON(completionHandler: {nasaInfo in
            print(nasaInfo)
        }
        
        )
        let url = URL(string: "https://api.tronalddump.io/random/meme")
        //self.myImg.kf.setImage(with: url)
        var title = ""
        let dispatchGroup = DispatchGroup()
        dispatchGroup.enter()
        DispatchQueue.main.async {
            if self.LoadData != nil{
                let size = self.LoadData?["data"]["children"].arrayValue
                
                var target = size?.count ?? 0
                target = Int.random(in: 0 ... target - 1)
                title = self.LoadData?["data"]["children"][target]["data"]["title"].stringValue ?? "empty"
                
              //  print(title)
                dispatchGroup.leave()
        }
            let cache = ImageCache.default
            dispatchGroup.wait()
            self.text.text = title
            self.myImg.kf.setImage(with: url)
            cache.clearMemoryCache()
        }
    }

}
