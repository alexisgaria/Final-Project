//
//  GPSViewController.swift
//  Final Project
//
//  Created by Alexis Garia on 4/28/20.
//  Copyright © 2020 Alexis Garia. All rights reserved.
//

import UIKit
import CoreLocation

class GPSViewController: UITabBarController , CLLocationManagerDelegate {

    

    
    
    @IBOutlet weak var SKdistance: UILabel!
    
    
    let locMan: CLLocationManager = CLLocationManager()
      var startLocation: CLLocation!
      
      let kshuLatitude: CLLocationDegrees = 27.2670
      let kshuLongitude: CLLocationDegrees = -82.5463
    
    //siesta key coordinates
    //27.2670° N, 82.5463° W
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {

        let newLocation: CLLocation=locations[0]
        NSLog("Something is happening")

        // horizontal accuracy less than than 0 means failure at gps level
        if newLocation.horizontalAccuracy >= 0 {


            let shu:CLLocation = CLLocation(latitude: kshuLatitude,longitude: kshuLongitude)

            let delta:CLLocationDistance = shu.distance(from: newLocation)

            let miles: Double = (delta * 0.000621371) + 0.5 // meters to rounded miles

            if miles < 3 {
                // Stop updating the location
                locMan.stopUpdatingLocation()
                // Congratulate the user
               SKdistance.text = "Enjoy\nSiesta Key!"
            } else {
                let commaDelimited: NumberFormatter = NumberFormatter()
                commaDelimited.numberStyle = NumberFormatter.Style.decimal

                SKdistance.text=commaDelimited.string(from: NSNumber(value: miles))!+" Miles to Siesta Key"
            }


        }
        else
        {
            // add action if error with GPS
        }
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        locMan.delegate = self
        locMan.desiredAccuracy =
        kCLLocationAccuracyThreeKilometers
          locMan.distanceFilter = 1609;
        
        locMan.requestWhenInUseAuthorization()
        
        locMan.startUpdatingLocation()
        startLocation = nil
    }

    

    
    
    
    
    
    
    
    
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


