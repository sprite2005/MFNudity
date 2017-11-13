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
       
        setDidLoadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(true)
    }
    
    func setDidLoadData()
    {
        let image = UIImage(named:"burkha.jpg")
        
        resultImage.image = image
    }
    
    
    @IBAction func resultAction(_ sender: Any) {
        
        
        //Test burkha image
        
        
        MFNudity.shared.checkImageNudity(image: resultImage.image!) { (error, confidence) in
            
            if error != nil
            {
                let converted = String(format: "%.2f", confidence!)
                resultLbl.text = "NSFW - \(converted) %"
            }

        }
        
        
        
        // To Test more nudity image uncomment below code and comment above code
        
        
        
        
        
        
    /*
         let image = UIImage(named:"model")
         MFNudity.shared.checkImageNudity(image: resultImage.image!) { (error, confidence) in
            
            if error != nil
            {
                let converted = String(format: "%.2f", confidence!)
                resultLbl.text = "NSFW - \(converted) %"
            }
            
        }
 */
        
        
        
    }
    
    

}

