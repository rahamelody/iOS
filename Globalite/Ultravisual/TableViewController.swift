//
//  UITableViewController.swift
//  Ultravisual
//
//  Created by Raha Ghassemi on 4/8/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit





class TableViewController: UITableViewController {
    
    var topicSelected:String = ""
    let data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.backgroundColor = UIColor.blackColor()
        self.tableView.rowHeight = 150.0
//        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        // Do any additional setup after loading the view.
        if topicSelected == "0" {
    }
        
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return data.places.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        let entry = data.places[indexPath.row]
        cell.publisherImage.image = UIImage(named: entry.Publisher)
        cell.headlineLabel.text = entry.Title
        cell.countryName.text = entry.Country
        cell.staffPickLabel.text = entry.Pick
        
        cell.headlineLabel.font = UIFont(name: "Georgia", size: 16)
        cell.staffPickLabel.font = UIFont(name: "GillSans", size: 14)
        
        
        return cell
    }
    
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: (NSIndexPath)) {
        print("You selected cell #\(indexPath.row)!")
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if let _ = sender as? UITableViewCell, indexPath = tableView!.indexPathForSelectedRow {
            if segue.identifier == "detail" {
                let detailVC: ArticleViewController = segue.destinationViewController as! ArticleViewController
                detailVC.articleSelected = String(indexPath.item)
            } else {
                print("error")
            }
        }
        
    }
    



}
