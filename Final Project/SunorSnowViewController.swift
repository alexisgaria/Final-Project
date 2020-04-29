//
//  SunorSnowViewController.swift
//  Final Project
//
//  Created by Alexis Garia on 4/27/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit

class SunorSnowViewController: UIViewController {

    
    @IBAction func sun(_ sender: Any) {
        (parent as! TBViewController).sun+=1
    }
    
    @IBAction func snow(_ sender: Any) {
        (parent as! TBViewController).snow+=1
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
