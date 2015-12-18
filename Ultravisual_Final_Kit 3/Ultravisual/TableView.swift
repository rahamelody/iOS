//
//  TableView.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 12/11/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit

class TableView: UITableView {
    var bush: [String] = ["Goldman Sachs", "Neuberger Berman LLC", "Bank of America", "Barclays", "Cushman & Wakefield", "Citigroup Inc", "Wal-Mart Stores", "Morgan Stanley", "Credit Suisse Group", "JPMorgan Chase & Co", "Tenet Healthcare", "Rooney Holdings", "DLA Piper", "NextEra Energy", "Gibson, Dunn & Crutcher","Greenberg Traurig LLP" , "Jeb 2016 (Employees)", "CSX Corp", "Xpo Logistics", "Guggenheim Partners"]
    var carson: [String] = ["Northwestern Mutual","Coca-Cola Co","Wells Fargo","Blue Ocean Enterprise","Apartment Realty Advisors","Ankom Technology","Primecap Management","West Coast Venture Capital","Trailiner Corp","Northwestern Mutual Life","Retail Planning Corp","Janus International Group","US Army","US Air Force","STI Enterprises","Eti Software Solutions","Timberlake Sale","UBS AG","Spencer's Inc"]

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bush.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = bush[indexPath.row]
        return cell
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: (NSIndexPath!)) {
        print("You selected cell #\(indexPath.row)!")
        
    }
    
    
}
