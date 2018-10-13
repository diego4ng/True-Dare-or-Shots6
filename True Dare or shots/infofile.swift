//
//  infofile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit

class infofile: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func seguirdiego(_ sender: UIButton) {
        
        let twUrl: NSURL = NSURL(string: "twitter://user?screen_name=Diego4ng")!
        let twUrlWeb: NSURL = NSURL(string: "https://twitter.com/Diego4ng")!
        
        if(UIApplication.shared.canOpenURL(twUrl as URL)) {
            // If user twitter installed
            UIApplication.shared.open(twUrl as URL, options: [:], completionHandler: nil)
        } else {
            // If user does not have twitter installed
            UIApplication.shared.open(twUrlWeb as URL, options: [:], completionHandler: nil)
        }
        
    }

    
    
    @IBAction func seguirjoel(_ sender: UIButton) {
        let twUrl: NSURL = NSURL(string: "twitter://user?screen_name=joel_lozanoA")!
        let twUrlWeb: NSURL = NSURL(string: "https://twitter.com/joel_lozanoA")!
        
        if(UIApplication.shared.canOpenURL(twUrl as URL)) {
            // If user twitter installed
            UIApplication.shared.open(twUrl as URL, options: [:], completionHandler: nil)
        } else {
            // If user does not have twitter installed
            UIApplication.shared.open(twUrlWeb as URL, options: [:], completionHandler: nil)
        }
        
        
    }
    
}
