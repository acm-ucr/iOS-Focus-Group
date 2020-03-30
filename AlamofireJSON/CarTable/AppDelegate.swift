//
//  AppDelegate.swift
//  CarTable
//
//  Created by james luo on 11/6/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit
var CarList = [Car] ()
var ThreadString = "Bad Thread"
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        var Bugatti = Car(name: "Bugatti", FuelMax: 100)
        var Tesla = Car(name: "Tesla", FuelMax: 250)
        var FalconHeavy = Car(name: "Falcon", FuelMax: 10)
        var lexis = Car(name: "lexi", FuelMax: 40)
        CarList = [Bugatti,Tesla,FalconHeavy,lexis]
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

