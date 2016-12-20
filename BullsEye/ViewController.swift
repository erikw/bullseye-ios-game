//
//  ViewController.swift
//  BullsEye
//
//  Created by Erik Westrup on 20/12/2016.
//  Copyright © 2016 Erik Westrup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message: String = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello world",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
//        print("The value of the slider is now: \(slider.value)")
        currentValue = lroundf(slider.value)
    }
}

