//
//  ViewController.swift
//  MFNudityExample
//
//  Created by Mobilefirst on 11/9/17.
//  Copyright © 2017 MobileFirst. All rights reserved.
//

import UIKit
import MFNudity

class ViewController: UIViewController {
    
    
    @IBOutlet var resultLbl: UILabel!
    
    
    @IBOutlet var resultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named:"burkha.jpg")
        resultImage.image = image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func resultAction(_ sender: Any) {
        
        MFNudity.shared.checkImageNudity(image: resultImage.image!) { (error, confidence) in
            
            if error != nil
            {
                let converted = String(format: "%.2f", confidence!)
                resultLbl.text = "NSFW - \(converted) %"
            }

        }
        
        
    }
    
    

}

