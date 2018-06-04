//
//  OopsVC.swift
//  KitchenSink
//
//  Created by M.Sean Bonner on 6/4/18.
//  Copyright © 2018 Bonnerventure, Inc. All rights reserved.
//

import Foundation
import UIKit

class OopsVC: UIViewController {
    
    // class properties
    
    // instance properties
    // comment out for
    /*
     [<KitchenSink.OopsVC 0x7fd1f0c23410> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key saveButton.
 */
    @IBOutlet var saveButton: UIButton!
    
    // IB outlets
    
    
    // IB actions
    // comment out for "unrecognized selector" runtime exception
    @IBAction func doIt(_ sender: Any) {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
