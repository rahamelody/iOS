//
//  TableViewController.swift
//  TinderLike
//
//  Created by Raha Ghassemi on 4/6/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import UIKit


class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var openTableOptions: UITableView!
  
    
    @IBAction func doneButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    var cuisines = ["Afghan", "African", "Afternoon Tea", "American", "Argentinean", "Asian", "Austrailian", "Austrian", "Bar/Lounge/Bottle Service", "Barbecue", "Basque", "Beer Garden", "Belgian", "Bistro", "Brazilian", "Brazilian Steakhouse", "Breakfast", "Brewery", "British", "Burgers", "Cafe", "Cajun", "Californian", "Canadian", "Caribbean", "Chinese", "Chinese (Sichuan)", "Colombian", "Comfort Food", "Contemporary American", "Contemporary Asian", "Contemporary European", "Contemporary French", "Contemporary French/American", "Contemporary German", "Contemporary Indian", "Contemporary Italian", "Contemporary Korean", "Contemporary Mexican", "Contemporary Southern", "Continental", "Creole", "Creole/Cajun/Southern", "Creperie", "Croatian", "Cuban", "Dessert", "Dim Sum", "Dining Bar", "Eastern European", "Ecuadorain", "Egyptian", "English", "Ethiopian", "European", "Filipino", "Fine cuts", "Fish", "Fondue", "French", "French/Japanese", "French American", "Fusion/Eclectic", "Gastro Pub", "German", "Global, International", "Greek", "Grill", "Halal", "Hawaiian", "Hibachi", "Home cooking", "Indian", "International", "Irish", "Israeli", "Italian", "Jamaican", "Japanese", "Japanese Specialty", "Kaiseki", "Korean", "Kosher", "Latin/Spanish", "Latin American", "Lebanese", "Lounge", "Low Country", "Malaysian", "Meat", "Mediterranean", "Mexican", "Mexican/Southwestern", "Middle Eastern", "Modern Australian", "Modern European", "Modern Tuscan", "Moroccan", "New Zealand", "Nordic", "Northwest", "Organic", "Oyster Bar", "Pakistani", "Pan-Asian", "Persian", "Peruvian", "Pizzeria", "Polynesian", "Portuguese", "Prime Rib", "Provencal", "Puerto Rican", "Regional Mexican", "Russian", "Scandinavian", "Scottish", "Seafood", "Sicilian", "Soul food", "South American", "South Indian", "Southeast Asian", "Southern", "Southwest", "Spanish", "Steak", "Steakhouse", "Sushi", "Swiss", "Syrian", "Tapas/Small Plates", "Tex-Mex", "Thai", "Thai French", "Traditional Mexican", "Turkish", "Ukrainian", "Uruguayan", "Vegan", "Vegetarian", "Vegetarian/Vegan", "Vietnamese", "Wild Game", "Wine Bar", "Yakitori"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return the number of rows in the section
        return cuisines.count
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//        print("selected \(indexPath.row + 1).\(cuisines[indexPath.row])")
        
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.selected {
                cell.accessoryType = .Checkmark
                cell.textLabel?.textColor = UIColor.whiteColor()
                
                
            }
        }
        
        
    }
    
    
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        print("deselected \(indexPath.row + 1).\(cuisines[indexPath.row])")
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            cell.accessoryType = .None
            cell.textLabel?.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        }
        
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)  -> UITableViewCell {
        
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 225/255, green: 153.0/255, blue: 11.0/255, alpha: 1.0)
        
        cell.selectedBackgroundView = backgroundView
        // Configure the cell...
        
        cell.tintColor = UIColor.whiteColor()
        cell.textLabel?.text = cuisines[indexPath.row]
        cell.textLabel?.textColor = UIColor(red: 73/255, green: 10.0/255, blue: 61.0/255, alpha: 1.0)
        
        
        cell.textLabel?.font = UIFont(name: "Avenir-Medium", size: 15)
        
        
        
        return cell
    }
}
