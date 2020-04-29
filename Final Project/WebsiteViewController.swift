//
//  WebsiteViewController.swift
//  Final Project
//
//  Created by Alexis Garia on 4/27/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit
import WebKit

class WebsiteViewController: UITabBarController {
    
    
    @IBOutlet weak var SKwebView: WKWebView!
    @IBAction func SKwebsite(_ sender: Any) {
        if let url = URL (string: "https://www.visitsarasota.com/siesta-key"){
                   UIApplication.shared.open(url, options: [:])
    }
    }
    @IBOutlet weak var BoulderwebView: WKWebView!
    @IBAction func BoulderWebsite(_ sender: Any) {
        if let url = URL (string: "https://bouldercolorado.gov/"){
                   UIApplication.shared.open(url, options: [:])
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL (string: "https://www.visitsarasota.com/siesta-key")
              let myRequest = URLRequest(url : myURL!)
              SKwebView.load(myRequest)
       
        _ = URL (string: "https://bouldercolorado.gov/")
        _ = URLRequest (url : myURL!)
              BoulderwebView.load(myRequest)
        
        
    }
    
}
