//
//  GyroViewController.swift
//  sensorall
//
//  Created by Enjelina on 13/07/19.
//  Copyright © 2019 enjelhutasoit. All rights reserved.
//

import UIKit
import CoreMotion // Step.1

class GyroViewController: UIViewController {
    var motion = CMMotionManager() // Step.2
    // Step.3
    @IBOutlet weak var xGyroLabel: UILabel!
    @IBOutlet weak var yGyroLabel: UILabel!
    @IBOutlet weak var zGyroLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        // Step.4
        myGyroscape()
    }
    
    func myGyroscape(){ // Step.5
        if motion.isGyroAvailable{
            motion.startGyroUpdates(to: .main) { (data, error) in
                if let trueData = data {
                    let x = trueData.rotationRate.x
                    let y = trueData.rotationRate.y
                    let z = trueData.rotationRate.z
                    
                    self.xGyroLabel.text = "x: \(x)"
                    self.yGyroLabel.text = "y: \(y)"
                    self.zGyroLabel.text = "z: \(z)"
                    
                    self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(x/3), green: CGFloat(y/3), blue: CGFloat(z/3), alpha: 1)
                }
            }
        }
    }
}
