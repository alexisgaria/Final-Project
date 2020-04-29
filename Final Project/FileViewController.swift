//
//  FileViewController.swift
//  Final Project
//
//  Created by Alexis Garia on 4/27/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit

class FileViewController: UITabBarController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var favoriteBeach: UITextField!
    @IBOutlet weak var favoriteSnow: UITextField!
    @IBOutlet weak var results: UITextView!
    
    
    
    @IBAction func saveAnswers(_ sender: Any) {
        
        let csvLine:String = "\(name.text!), \(favoriteBeach.text!), \(favoriteSnow.text!),\n"
        let paths =
            NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0]
        let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
        
        if !FileManager.default.fileExists(atPath: resultsFile){
            FileManager.default.createFile(atPath: resultsFile, contents: nil, attributes: nil)
            
        }
        
        let fileHandle: FileHandle=FileHandle(forUpdatingAtPath:resultsFile)!
        fileHandle.seekToEndOfFile()
        fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
        fileHandle.closeFile()
        
        name.text = ""
        favoriteBeach.text = ""
        favoriteSnow.text = ""
    }
    
    
    @IBAction func displayAnswers(_ sender: Any) {
           let paths =
                     NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
                 let docDir:String=paths[0] as String
            
                 let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
            
            
            if FileManager.default.fileExists(atPath: resultsFile){
                let fileHandle:FileHandle = FileHandle(forReadingAtPath:resultsFile)!
                let resultsData: String!=NSString(data: fileHandle.availableData, encoding: String.Encoding.utf8.rawValue)! as String
                fileHandle.closeFile()
                
                results?.text=resultsData
        
            }
            else
            {
                //file does not exist
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
