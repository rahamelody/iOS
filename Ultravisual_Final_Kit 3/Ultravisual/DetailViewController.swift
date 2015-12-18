//
//  DetailViewController.swift
//  Blacklisted
//
//  Created by Raha Ghassemi on 12/11/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var businessSelected:String = ""

    @IBOutlet var busName: UILabel!
    @IBOutlet var repLabel: UILabel!
    
    @IBOutlet var demLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(businessSelected)
        
        
        
        if (businessSelected == "0"){
            repLabel?.text = "$89,993"
            demLabel?.text = "$90,850"
            busName?.text = "Nike Inc."
            
        }
        if (businessSelected == "1"){
            repLabel?.text = "$13,950"
            demLabel?.text = "$60,400"
            busName?.text = "Apple Inc."
        }
        if (businessSelected == "2"){
            repLabel?.text = "no direct contributions"
            demLabel?.text = "no direct contributions"
            busName?.text = "Samsung Group"
        }
        if (businessSelected == "3"){
            repLabel?.text = "$97,200"
            demLabel?.text = "$252,757"
            busName?.text = "Sony Corp."
        }
        if (businessSelected == "4"){
            repLabel?.text = "$812,231"
            demLabel?.text = "$652,702"
            busName?.text = "Walmart Stores"
        }
        if (businessSelected == "5"){
            repLabel?.text = "$183,180"
            demLabel?.text = "$139,050"
            busName?.text = "Target Corp."
        }
        if (businessSelected == "6"){
            repLabel?.text = "$705,948"
            demLabel?.text = "$768,993"
            busName?.text = "Microsoft Corp."
            
        }
        if (businessSelected == "7"){
            repLabel?.text = "$407,781"
            demLabel?.text = "$411,977"
            busName?.text = "Coca-Cola Co"
        }
        if (businessSelected == "8"){
            repLabel?.text = "$89,993"
            demLabel?.text = "$90,850"
            busName?.text = "Jordans (Nike Inc.)"
        }
        if (businessSelected == "9"){
            repLabel?.text = "$166,200"
            demLabel?.text = "$105,247"
            busName?.text = "PepsiCo Inc"
        }
        if (businessSelected == "10"){
            repLabel?.text = "$116,525"
            demLabel?.text = "$163,921"
            busName?.text = "Amazon.com"
        }
        if (businessSelected == "11"){
            repLabel?.text = "$667,357"
            demLabel?.text = "$1,004,969"
            busName?.text = "Google Inc. (Alphabet Inc.)"
        }
        if (businessSelected == "12"){
            repLabel?.text = "$0"
            demLabel?.text = "$650"
            busName?.text = "Nintendo Co"
        }
        if (businessSelected == "13"){
            repLabel?.text = "$500"
            demLabel?.text = "$0"
            busName?.text = "Adidas AG"
        }
        if (businessSelected == "14"){
            repLabel?.text = "$72,550"
            demLabel?.text = "105,050"
            busName?.text = "Dell Inc."
        }
        if (businessSelected == "15"){
            repLabel?.text = "$44,550"
            demLabel?.text = "$36,750"
            busName?.text = "Macy's Inc."
        }
        if (businessSelected == "16"){
            repLabel?.text = "$525,458"
            demLabel?.text = "$345,750"
            busName?.text = "McDonald's Corp."
        }
        if (businessSelected == "17"){
            repLabel?.text = "not yet available"
            demLabel?.text = "not yet available"
            busName?.text = "JCP Assoc."
        }
        if (businessSelected == "18"){
            repLabel?.text = "$541,350"
            demLabel?.text = "$411,800"
            busName?.text = "Ford Motor Co."
        }
        if (businessSelected == "19"){
            repLabel?.text = "$89,993"
            demLabel?.text = "$90,850"
            busName?.text = "Converse Inc. (Nike Inc.)"
        }
        if (businessSelected == "20"){
            repLabel?.text = "$12,500"
            demLabel?.text = "$140,516"
            busName?.text = "Pizza Hut (YUM! Brands)"
        }
        if (businessSelected == "21"){
            repLabel?.text = "$6,000"
            demLabel?.text = "$10,943"
            busName?.text = "Starbucks Corp."
        }
        if (businessSelected == "22"){
            repLabel?.text = "$22,900"
            demLabel?.text = "$5,100"
            busName?.text = "Classic Chevrolet"
        }
        if (businessSelected == "23"){
            repLabel?.text = "not yet available"
            demLabel?.text = "noy yet available"
            busName?.text = "Valve Corp."
        }
        if (businessSelected == "24"){
            repLabel?.text = "$8,600"
            demLabel?.text = "$4,250"
            busName?.text = "VF Corp."
        }
        if (businessSelected == "25"){
            repLabel?.text = "$750"
            demLabel?.text = "$5,350"
            busName?.text = "Dove (Unilever)"
        }
        if (businessSelected == "26"){
            repLabel?.text = "$1,307,296"
            demLabel?.text = "$1,007,566"
            busName?.text = "Verizon Communications"
        }
        if (businessSelected == "27"){
            repLabel?.text = "$218,900"
            demLabel?.text = "$100,650"
            busName?.text = "Best Buy"
        }
        if (businessSelected == "28"){
            repLabel?.text = "$705,948"
            demLabel?.text = "$768,993"
            busName?.text = "XBOX (Microsoft Corp.)"
        }
        if (businessSelected == "29"){
            repLabel?.text = "no direct contributions"
            demLabel?.text = "no direct contributions"
            busName?.text = "Ralph Lauren Corp."
        }
        if (businessSelected == "30"){
            repLabel?.text = "$0"
            demLabel?.text = "$4,000"
            busName?.text = "Honda Motor Co."
        }
        if (businessSelected == "31"){
            repLabel?.text = "$5,050"
            demLabel?.text = "$6,500"
            busName?.text = "Colgate-Palmolive Co."
        }
        if (businessSelected == "32"){
            repLabel?.text = "$38,000"
            demLabel?.text = "$31,000"
            busName?.text = "Oreo (Mondelez Int.)"
        }
        if (businessSelected == "33"){
            repLabel?.text = "$40,750"
            demLabel?.text = "$21,700"
            busName?.text = "Nestle SA"
        }
        if (businessSelected == "34"){
            repLabel?.text = "$320,641"
            demLabel?.text = "$298,181"
            busName?.text = "Hewlett-Packard"
        }
        if (businessSelected == "35"){
            repLabel?.text = "not yet available"
            demLabel?.text = "not yet available"
            busName?.text = "Forever 21 Inc."
        }
        if (businessSelected == "36"){
            repLabel?.text = "$21,350"
            demLabel?.text = "$10,000"
            busName?.text = "Hershey Co."
        }
        if (businessSelected == "37"){
            repLabel?.text = "$181,300"
            demLabel?.text = "$58,700"
            busName?.text = "Victoria's Secret (L Brands)"
        }
        if (businessSelected == "38"){
            repLabel?.text = "$86,500"
            demLabel?.text = "$51,200"
            busName?.text = "Kellogg Co"
        }
        if (businessSelected == "39"){
            repLabel?.text = "$53,050"
            demLabel?.text = "$57,750"
            busName?.text = "Kraft Foods Group"
        }
        if (businessSelected == "40"){
            repLabel?.text = "$0"
            demLabel?.text = "$7,500"
            busName?.text = "Levi Strauss & Co."
        }
        if (businessSelected == "41"){
            repLabel?.text = "$209,585"
            demLabel?.text = "$154,600"
            busName?.text = "Sprint Comm. (SoftBank Corp.)"
        }
        if (businessSelected == "42"){
            repLabel?.text = "not yet available"
            demLabel?.text = "not yet available"
            busName?.text = "Chanel Inc."
        }
        if (businessSelected == "43"){
            repLabel?.text = "667,357"
            demLabel?.text = "1,004,969"
            busName?.text = "Android Inc. (Google Inc.)"
        }
        if (businessSelected == "44"){
            repLabel?.text = "$20,000, from 2012"
            demLabel?.text = "$7,000, from 2012"
            busName?.text = "Under Armour Inc."
        }
        if (businessSelected == "45"){
            repLabel?.text = "no direct contributions"
            demLabel?.text = "no direct contributions"
            busName?.text = "Aeropostale Inc."
        }
        if (businessSelected == "46"){
            repLabel?.text = "$234,950"
            demLabel?.text = "$18,985"
            busName?.text = "Wendy's Co."
        }
        if (businessSelected == "47"){
            repLabel?.text = "$500"
            demLabel?.text = "$0"
            busName?.text = "LG Electronics USA"
        }
        if (businessSelected == "48"){
            repLabel?.text = "not yet available"
            demLabel?.text = "not yet available"
            busName?.text = "Bethesda Softworks, LLC"
        }
        if (businessSelected == "49"){
            repLabel?.text = "not yet available"
            demLabel?.text = "not yet available"
            busName?.text = "Asus"
        }
        
    }
    
    
    
}
