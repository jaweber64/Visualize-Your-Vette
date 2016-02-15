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
    
    var ZCV = [[UIImage]]()
    var ZCP = [[UIImage]]()
    var SCP = [[UIImage]]()
    var SCV = [[UIImage]]()
    var ImArr = [[UIImage]]()
    
    var bodyType = 0    // 0->Coupe 1->Convertible
    var modelType = 0   // 0->Stingray 1->Z06
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*
        let wht1 = UIImage(named: "WhiteZCP1")
        let wht2 = UIImage(named: "WhiteZCP2")
        let wht3 = UIImage(named: "WhiteZCP3")
        let wht4 = UIImage(named: "WhiteZCP4")
        ZCP[0].append(wht1!)
        ZCP[0].append(wht2!)
        ZCP[0].append(wht3!)
        ZCP[0].append(wht4!)
        
        let wht5 = UIImage(named: "WhiteZCV1")
        let wht6 = UIImage(named: "WhiteZCV2")
        let wht7 = UIImage(named: "WhiteZCV3")
        let wht8 = UIImage(named: "WhiteZCV4")
        ZCV[0].append(wht5!)
        ZCV[0].append(wht6!)
        ZCV[0].append(wht7!)
        ZCV[0].append(wht8!)
        
        let red1 = UIImage(named: "RedZCP1")
        let red2 = UIImage(named: "RedZCP2")
        let red3 = UIImage(named: "RedZCP3")
        let red4 = UIImage(named: "RedZCP4")
        ZCP[1].append(red1!)
        ZCP[1].append(red2!)
        ZCP[1].append(red3!)
        ZCP[1].append(red4!)
        
        let red5 = UIImage(named: "RedZCV1")
        let red6 = UIImage(named: "RedZCV2")
        let red7 = UIImage(named: "RedZCV3")
        let red8 = UIImage(named: "RedZCV4")
        ZCV[1].append(red5!)
        ZCV[1].append(red6!)
        ZCV[1].append(red7!)
        ZCV[1].append(red8!)
        
        let gray1 = UIImage(named: "GrayZCP1")
        let gray2 = UIImage(named: "GrayZCP2")
        let gray3 = UIImage(named: "GrayZCP3")
        let gray4 = UIImage(named: "GrayZCP4")
        ZCP[2].append(gray1!)
        ZCP[2].append(gray2!)
        ZCP[2].append(gray3!)
        ZCP[2].append(gray4!)
        
        let gray5 = UIImage(named: "GrayZCV1")
        let gray6 = UIImage(named: "GrayZCV2")
        let gray7 = UIImage(named: "GrayZCV3")
        let gray8 = UIImage(named: "GrayZCV4")
        ZCV[2].append(gray5!)
        ZCV[2].append(gray6!)
        ZCV[2].append(gray7!)
        ZCV[2].append(gray8!)

        let blk1 = UIImage(named: "BlackZCP1")
        let blk2 = UIImage(named: "BlackZCP2")
        let blk3 = UIImage(named: "BlackZCP3")
        let blk4 = UIImage(named: "BlackZCP4")
        ZCP[3].append(blk1!)
        ZCP[3].append(blk2!)
        ZCP[3].append(blk3!)
        ZCP[3].append(blk4!)
        
        let blk5 = UIImage(named: "BlackZCV1")
        let blk6 = UIImage(named: "BlackZCV2")
        let blk7 = UIImage(named: "BlackZCV3")
        let blk8 = UIImage(named: "BlackZCV4")
        ZCV[3].append(blk5!)
        ZCV[3].append(blk6!)
        ZCV[3].append(blk7!)
        ZCV[3].append(blk8!)
        
        let sil1 = UIImage(named: "SilverZCP1")
        let sil2 = UIImage(named: "SilverZCP2")
        let sil3 = UIImage(named: "SilverZCP3")
        let sil4 = UIImage(named: "SilverZCP4")
        ZCP[4].append(sil1!)
        ZCP[4].append(sil2!)
        ZCP[4].append(sil3!)
        ZCP[4].append(sil4!)
        
        let sil5 = UIImage(named: "SilverZCV1")
        let sil6 = UIImage(named: "SilverZCV2")
        let sil7 = UIImage(named: "SilverZCV3")
        let sil8 = UIImage(named: "SilverZCV4")
        ZCV[4].append(sil5!)
        ZCV[4].append(sil6!)
        ZCV[4].append(sil7!)
        ZCV[4].append(sil8!)
     */
        // make sure initial screen is all set
        quote1.hidden = false
        quote2.hidden = false
        quote3.hidden = false
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
        case 5: // initial settings
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
        print (sender.tag)
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
        
        if (modelType == 0) {       // Stingray
            if (bodyType == 0) {      // Coupe
                ImArr = SCP
            }else {                   // Convertible
                ImArr = SCV
            }
        } else {                    // Z06
            if (bodyType == 0) {      // Coupe
                ImArr = ZCP
            } else {                  // Convertible
                ImArr = ZCV
            }
        }
        
           // mainImage.image = ImArr[colorNum][wheel]
        let blk1 = UIImage(named: "BlackZCP1")
        mainImage.image = blk1
        
        

        
    }// end DisplayCarImage function
    
} // end ViewController.swift

