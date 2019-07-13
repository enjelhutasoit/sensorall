//
//  AltiViewController.swift
//  sensorall
//
//  Created by Enjelina on 13/07/19.
//  Copyright © 2019 enjelhutasoit. All rights reserved.
//

import UIKit
import CoreMotion // Step.1

class AltiViewController: UIViewController {
    var motion = CMMotionManager() // Step.2
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
    }

}
