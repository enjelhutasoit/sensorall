//
//  MagnetViewController.swift
//  sensorall
//
//  Created by Enjelina on 13/07/19.
//  Copyright © 2019 enjelhutasoit. All rights reserved.
//

import UIKit
import CoreMotion // Step.1

class MagnetViewController: UIViewController {
    var motion = CMMagnetometerData() // Step.2
    
    //Step.3
    @IBOutlet weak var xMagnetLabel: UILabel!
    @IBOutlet weak var yMagnetLabel: UILabel!
    @IBOutlet weak var zMagnetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        // Step.4
//        myMagnetometer()
    }
    

    // Step.5
//    myMagnetometer(){
//
//
//    }

}
