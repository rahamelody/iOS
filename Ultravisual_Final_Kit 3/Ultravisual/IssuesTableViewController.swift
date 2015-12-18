//
//  IssuesTableViewController.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 12/10/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit

var currentIndex1: Int = 0
var detailVC: DetailViewController?
var VC: IssuesTableViewController?

var items: [String] = ["Nike", "Apple", "Samsung", "Sony", "Walmart", "Target", "Microsoft", "Coca-Cola", "Jordans", "Pepsi", "Amazon.com", "Google", "Nintendo", "Adidas", "Dell","Macy's", "McDonald's", "JCPenney", "Ford", "Converse", "Pizza Hut", "Starbucks", "Chevorlet", "Valve", "Vans", "Dove", "Verizon", "Best Buy", "XBOX", "Ralph Lauren", "Honda", "Colgate", "Oreo", "Nestle", "HP", "Forever21", "Hershey's", "Victoria's Secret", "Kellogg's", "Kraft", "Levi's", "Sprint", "Chanel", "Android", "Under Armour", "Aeropostale", "Wendy's", "LG", "Bethesda", "Asus"]


class IssuesTableViewController: UITableViewController {
    
    @IBOutlet var busImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = UIColor.blackColor()

    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        cell.textLabel?.text = items[indexPath.row]
        cell.backgroundColor = UIColor.blackColor()
        cell.textLabel?.textColor = UIColor.whiteColor()
        cell.textLabel?.font = UIFont(name: "Avenir Next", size: 20)
        
        return cell
    }
  
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: (NSIndexPath!)) {
        print("You selected cell #\(indexPath.row)!")

}
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if let row = sender as? UITableViewCell, indexPath = tableView!.indexPathForSelectedRow {
        if segue.identifier == "segue" {
            let detailVC: DetailViewController = segue.destinationViewController as! DetailViewController
            detailVC.businessSelected = String(indexPath.item)
        } else {
            print("error")
            }
        }
        
           }

}