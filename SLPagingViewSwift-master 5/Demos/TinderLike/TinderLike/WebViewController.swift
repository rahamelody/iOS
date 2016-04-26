//
//  WebViewController.swift
//  Spice Rack
//
//  Created by Raha Ghassemi on 4/25/16.
//  Copyright © 2016 Stefan Lage. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    var webSelected:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let URL = NSURL (string:"https://www.opentable.com/start/home")
        
        let requestObj = NSURLRequest(URL: URL!)
        
        
        webView.loadRequest(requestObj)
        
           }

  

}
