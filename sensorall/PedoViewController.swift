//
//  PedoViewController.swift
//  sensorall
//
//  Created by Enjelina on 13/07/19.
//  Copyright © 2019 enjelhutasoit. All rights reserved.
//

import UIKit
import CoreMotion // Step.1

class PedoViewController: UIViewController {
    var motion = CMPedometer() // Step.2
    // Step.3
    @IBOutlet weak var xPedoLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        myPedometer() //Step.4
    }
    // Step.5
    func myPedometer(){ // Step.4
        if CMPedometer.isStepCountingAvailable(){
            motion.startUpdates(from: Date()) { (data, error) in
                DispatchQueue.main.async {
                    self.xPedoLabel.text = data?.numberOfSteps.stringValue
                    
                    
                }
            }
        }
    }

}
