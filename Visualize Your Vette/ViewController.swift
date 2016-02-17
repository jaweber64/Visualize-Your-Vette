//
//  ViewController.swift
//  Visualize Your Vette
//
//  Created by Janet Weber on 2/11/16.
//  Copyright © 2016 Weber Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lastSender = 5          // initilized state, nothing selected from segmented controll
    
    let coupe = UIImage(named: "coupe")
    let convertible = UIImage(named: "convertible")
    let stingray = UIImage(named: "stingray")
    let z06 = UIImage(named: "Z06")
    
    var row = [UIImage]()
    var ZCV = [[UIImage]]()
    var ZCP = [[UIImage]]()
    var SCP = [[UIImage]]()
    var SCV = [[UIImage]]()
    var ImArr = [[UIImage]]()
    
    var bodyType = 0    // 0->Coupe 1->Convertible
    var modelType = 1   // 0->Stingray 1->Z06
    var colorNum = 2    // 0->white, 1->red, 2->gray, 3->black, 4->silver
    var wheel = 0       // four wheel types, left to right.

    @IBOutlet weak var quote1: UILabel!
    @IBOutlet weak var quote2: UILabel!
    @IBOutlet weak var quote3: UILabel!
    
    @IBOutlet weak var ModType1: UIButton! // Left ModelOrType button
    @IBOutlet weak var ModType2: UIButton! // Right "  "
    @IBOutlet weak var MTLabel1: UILabel!  // Label "Coupe"
    @IBOutlet weak var MTLabel2: UILabel!  // Label "Convertible"
    @IBOutlet weak var MTLabel3: UILabel!  // Label "Stingray"
    @IBOutlet weak var MTLabel4: UILabel!  // Label "Z06"
    
    @IBOutlet weak var white: UIButton!     // Color buttons
    @IBOutlet weak var red: UIButton!    
    @IBOutlet weak var gray: UIButton!
    @IBOutlet weak var black: UIButton!
    @IBOutlet weak var silver: UIButton!
    @IBOutlet weak var colorLabel: UILabel! // Label for color buttons
    
    @IBOutlet weak var wheel1: UIButton!
    @IBOutlet weak var wheel2: UIButton!
    @IBOutlet weak var wheel3: UIButton!
    @IBOutlet weak var wheel4: UIButton!
    @IBOutlet weak var wheelLabel: UILabel!
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var carBckGrnd: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        row.removeAll()
        row.append(UIImage(named: "WhiteZCP1")!)
        row.append(UIImage(named: "WhiteZCP2")!)
        row.append(UIImage(named: "WhiteZCP3")!)
        row.append(UIImage(named: "WhiteZCP4")!)
        ZCP.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "WhiteZCV1")!)
        row.append(UIImage(named: "WhiteZCV2")!)
        row.append(UIImage(named: "WhiteZCV3")!)
        row.append(UIImage(named: "WhiteZCV4")!)
        ZCV.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "RedZCP1")!)
        row.append(UIImage(named: "RedZCP2")!)
        row.append(UIImage(named: "RedZCP3")!)
        row.append(UIImage(named: "RedZCP4")!)
        ZCP.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "RedZCV1")!)
        row.append(UIImage(named: "RedZCV2")!)
        row.append(UIImage(named: "RedZCV3")!)
        row.append(UIImage(named: "RedZCV4")!)
        ZCV.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "GrayZCP1")!)
        row.append(UIImage(named: "GrayZCP2")!)
        row.append(UIImage(named: "GrayZCP3")!)
        row.append(UIImage(named: "GrayZCP4")!)
        ZCP.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "GrayZCV1")!)
        row.append(UIImage(named: "GrayZCV2")!)
        row.append(UIImage(named: "GrayZCV3")!)
        row.append(UIImage(named: "GrayZCV4")!)
        ZCV.append(row)

        row.removeAll()
        row.append(UIImage(named: "BlackZCP1")!)
        row.append(UIImage(named: "BlackZCP2")!)
        row.append(UIImage(named: "BlackZCP3")!)
        row.append(UIImage(named: "BlackZCP4")!)
        ZCP.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "BlackZCV1")!)
        row.append(UIImage(named: "BlackZCV2")!)
        row.append(UIImage(named: "BlackZCV3")!)
        row.append(UIImage(named: "BlackZCV4")!)
        ZCV.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "SilverZCP1")!)
        row.append(UIImage(named: "SilverZCP2")!)
        row.append(UIImage(named: "SilverZCP3")!)
        row.append(UIImage(named: "SilverZCP4")!)
        ZCP.append(row)
        
        row.removeAll()
        row.append(UIImage(named: "SilverZCV1")!)
        row.append(UIImage(named: "SilverZCV2")!)
        row.append(UIImage(named: "SilverZCV3")!)
        row.append(UIImage(named: "SilverZCV4")!)
        ZCV.append(row)
     
        // make sure initial screen is all set
        quote1.hidden = false
        quote2.hidden = false
        quote3.hidden = false
        carBckGrnd.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func PickOption(sender: UISegmentedControl) {
        switch (lastSender) {
        case 0: MTLabel3.hidden = true
            MTLabel4.hidden = true
            ModType2.hidden = true
            ModType1.hidden = true
        case 1: MTLabel2.hidden = true
            MTLabel1.hidden = true
            ModType2.hidden = true
            ModType1.hidden = true
        case 2: colorLabel.hidden = true
            white.hidden = true
            red.hidden = true
            gray.hidden = true
            black.hidden = true
            silver.hidden = true
        case 3: wheelLabel.hidden = true
            wheel1.hidden = true
            wheel2.hidden = true
            wheel3.hidden = true
            wheel4.hidden = true
        case 4,5: // initial settings
            quote1.hidden = true
            quote2.hidden = true
            quote3.hidden = true
        default: print("default switch")
        } // end switch
        
        switch (sender.selectedSegmentIndex) {
        case 0:  // Choose Model
            MTLabel3.hidden = false
            MTLabel4.hidden = false
            ModType2.setBackgroundImage(z06, forState: .Normal)
            ModType2.hidden = false
            ModType1.setBackgroundImage(stingray, forState: .Normal)
            ModType1.hidden = false
            lastSender = 0
            
        case 1: // Choose Body Type
            MTLabel2.hidden = false
            MTLabel1.hidden = false
            ModType2.setBackgroundImage(convertible, forState: .Normal)
            ModType2.hidden = false
            ModType1.setBackgroundImage(coupe, forState: .Normal)
            ModType1.hidden = false
            lastSender = 1
           
        case 2:
            colorLabel.hidden = false
            white.hidden = false
            red.hidden = false
            gray.hidden = false
            black.hidden = false
            silver.hidden = false
            lastSender = 2
            
        case 3:
            wheelLabel.hidden = false
            wheel1.hidden = false
            wheel2.hidden = false
            wheel3.hidden = false
            wheel4.hidden = false
            lastSender = 3
            
        case 4:
            lastSender = 4

        default: print("default switch")
        } // end switch
    }// end PickOption function
    
    @IBAction func DisplayCarImage(sender: UIButton) {
        // modify setting button indicates
        switch (sender.tag) {
        case 0: if (MTLabel1.hidden == false) {bodyType = 0}
                else {modelType = 0}
        case 1: if (MTLabel2.hidden == false) {bodyType = 1}
                else {modelType = 1}
        case 2: colorNum = 0
        case 3: colorNum = 1
        case 4: colorNum = 2
        case 5: colorNum = 3
        case 6: colorNum = 4
        case 7: wheel = 0
        case 8: wheel = 1
        case 9: wheel = 2
        case 10: wheel = 3
        default: print("default switch")
        }
    
        // Figure out which array of images we will be using
        //  Currenty only have images for Z06 so
        if (modelType == 0) {       // Stingray
            if (bodyType == 0) {      // Coupe
                //ImArr = SCP
                ImArr = ZCP
            }else {                   // Convertible
                //ImArr = SCV
                ImArr = ZCV
            }
        } else {                    // Z06
            if (bodyType == 0) {      // Coupe
                ImArr = ZCP
            } else {                  // Convertible
                ImArr = ZCV
            }
        }
        
        carBckGrnd.hidden = false
        mainImage.image = ImArr[colorNum][wheel]
        
    }// end DisplayCarImage function
    
} // end ViewController.swift

