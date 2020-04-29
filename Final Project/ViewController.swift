//
//  ViewController.swift
//  Final Project
//
//  Created by Alexis Garia on 4/27/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sunVotes: UILabel!
    @IBOutlet weak var snowVotes: UILabel!
    @IBOutlet weak var mostFavorable: UILabel!
    
    override func viewWillAppear(_ animated: Bool){
      
        
        sunVotes.text = String((parent as! TBViewController).sun)
        snowVotes.text = String((parent as! TBViewController).snow)
          
          
          if (parent as! TBViewController).sun > (parent as! TBViewController).snow
          
          {
              mostFavorable.text = "Siesta Key, Florida!"
          } else{
              mostFavorable.text = "Boulder, Colorado!"
          }
          
      }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

