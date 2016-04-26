//
//  WebTwoViewController.swift
//  Spice Rack
//
//  Created by Raha Ghassemi on 4/25/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import UIKit

class WebTwoViewController: UIViewController {

    
    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
            let URL = NSURL (string:"https://doodle.com/?home")
            
            let requestObj = NSURLRequest(URL: URL!)
            
            
            webView.loadRequest(requestObj)
            
        

    }

   
}
