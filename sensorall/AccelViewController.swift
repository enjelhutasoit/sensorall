//
//  AccelViewController.swift
//  sensorall
//
//  Created by Enjelina on 13/07/19.
//  Copyright © 2019 enjelhutasoit. All rights reserved.
//

import UIKit
import CoreMotion // Step.1

class AccelViewController: UIViewController {
    
    var motion = CMMotionManager() // Step.2
    
    @IBOutlet weak var xAccelLabel: UILabel!
    @IBOutlet weak var yAccelLabel: UILabel!
    @IBOutlet weak var zAccelLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        
        myAcceleroMeter() // Step.3
    }
    
    func myAcceleroMeter() { // Step.4
        if motion.isAccelerometerAvailable {
            motion.startAccelerometerUpdates(to: .main) {
                (data, error) in
                if let trueData = data {
                    // Step.5
                    let x = trueData.acceleration.x
                    let y = trueData.acceleration.y
                    let z = trueData.acceleration.z
                    
                    self.xAccelLabel.text = "x: \(x)"
                    self.yAccelLabel.text = "y: \(y)"
                    self.zAccelLabel.text = "z: \(z)"
                    
                    self.view.backgroundColor = UIColor.init(displayP3Red: CGFloat(x), green: CGFloat(y), blue: CGFloat(z), alpha:1)
                }
                
            }
        }
    }

}
