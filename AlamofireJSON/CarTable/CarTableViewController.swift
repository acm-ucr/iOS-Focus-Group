//
//  CarTableViewController.swift
//  CarTable
//
//  Created by james luo on 11/7/19.
//  Copyright © 2019 james luo. All rights reserved.
//

import UIKit
import Alamofire_SwiftyJSON
import Alamofire
import SwiftyJSON
class CarTableViewController: UITableViewController {
    var newCarList = [String]()
    var webSiteList = [String]()
    var LoadData :JSON?
    let MyThread = DispatchGroup()
    var curCarsite = ""
    var curCar = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.MyThread.enter()
        self.AlamoPrepare()
        self.MyThread.notify(queue: .main){
            self.JsonParser()
        }
//        if shouldReload{
//            newCarList = [Bugatti,Tesla,FalconHeavy,lexis]
//        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newCarList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarID", for: indexPath) as! CarViewCell
        cell.CarName.text = newCarList[indexPath.row]
        // Configure the cell...

        return cell
    }
    func AlamoPrepare(){
           Alamofire.request("https://www.reddit.com/r/cars/.json").responseSwiftyJSON{dataResponse in
               //print(dataResponse.value as Any)
               self.LoadData = JSON(dataResponse.value!)
               print("done")
               self.MyThread.leave()
        }
    }
           
    func JsonParser(){
        //self.myImg.kf.setImage(with: url)
        var title = ""
        if self.LoadData != nil{
            for topic in self.LoadData?["data"]["children"].arrayValue ?? []{
                title = topic["data"]["title"].stringValue
                var site = topic["data"]["url"].stringValue
                
                self.newCarList.append(title)
                self.webSiteList.append(site)
            }
        }
        self.tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.curCarsite = self.webSiteList[indexPath.row]
        self.performSegue(withIdentifier: "ThreadInfo", sender: self)

    }
    
    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ThreadInfo"{
            if let nextView = segue.destination as? ThreadInfoViewController{
                nextView.CurSite = self.curCarsite
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
