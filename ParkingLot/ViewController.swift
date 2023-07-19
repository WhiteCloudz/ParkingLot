//
//  ViewController.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goToHome(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
    }
}

