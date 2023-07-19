//
//  HomePage.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//
import UIKit

class HomePage: UIViewController {

    @IBOutlet weak var exit: UIButton!
    @IBOutlet weak var check: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       cornerRadius(buttonName: check)
        cornerRadius(buttonName: exit)
    }


    @IBAction func goToParkSite(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "CheckInPark")
    }
    
    @IBAction func goToExit(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "ExitPark")
    }
}

