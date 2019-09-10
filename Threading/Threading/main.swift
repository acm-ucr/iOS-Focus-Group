//
//  main.swift
//  Threading
//
//  Created by james luo on 8/26/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import Foundation

import Alamofire
import SwiftyJSON
import Alamofire_SwiftyJSON

func parseData() -> JSON {
    var data: JSON?
    let lock = DispatchGroup()
    lock.enter()
    Alamofire.request("https://api.nasa.gov/planetary/apod?api_key=i4WERS5Lp8YotCxpWV7l07nsblcJ0vm69nauMGcK").responseSwiftyJSON{ dataRecived in
        data = JSON(dataRecived.value as Any)
        lock.leave()
    }
    lock.wait()
    return data ?? nil
}

print(parseData())

