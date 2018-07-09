//
//  ViewController.swift
//  RadioButton
//
//  Created by dohien on 7/5/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var checkButton : Bool  = false
    @IBOutlet weak var nameButton: UIButton!
    @IBOutlet weak var nuButton: UIButton!
    @IBOutlet weak var bedeButton: UIButton!
    
    @IBAction func nameButton(_ sender: UIButton) {
            nameButton.isSelected = true
            nuButton.isSelected = false
            bedeButton.isSelected = false
    }
    @IBAction func nuButton(_ sender: UIButton) {
        nameButton.isSelected = false
        nuButton.isSelected = true
        bedeButton.isSelected = false
    }
    @IBAction func bedeButton(_ sender: UIButton) {
        nameButton.isSelected = false
        nuButton.isSelected = false
        bedeButton.isSelected = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

