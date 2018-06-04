//
//  SettingsVC.swift
//  KitchenSink
//
//  Created by M.Sean Bonner on 6/4/18.
//  Copyright © 2018 Bonnerventure, Inc. All rights reserved.
//

import Foundation
import UIKit

class SettingsVC: UIViewController {
    
    // class properties
    
    // instance properties
    
    // IB outlets
    
    
    // IB actions
    @IBAction func done(_ sender: Any) {
        navigationController?.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Settings"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
