//
//  PlayFile.swift
//  True Dare or shots
//
//  Created by Diego on 07/08/18.
//  Copyright © 2018 diego. All rights reserved.
//

import UIKit

class PlayFile: UIViewController {
    @IBOutlet weak var Dare: UIButton!
    @IBOutlet weak var True: UIButton!
    @IBOutlet weak var Shot: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DareAction(_ sender: UIButton) {
    print("Dare")
    }
    
    @IBAction func TrueAction(_ sender: UIButton) {
        print("Dare")
    }
    
    @IBAction func ShotAction(_ sender: UIButton) {
        print("Shot")
    }
    
}
