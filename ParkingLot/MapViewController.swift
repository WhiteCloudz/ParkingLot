//
//  ParkingSite.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//

import UIKit

class MapViewController: UIViewController{
  
    
    @IBOutlet weak var B1: UIButton!
    @IBOutlet weak var B2: UIButton!
    @IBOutlet weak var B3: UIButton!
    @IBOutlet weak var B4: UIButton!
    @IBOutlet weak var B5: UIButton!
    @IBOutlet weak var B6: UIButton!
    @IBOutlet weak var B7: UIButton!
    @IBOutlet weak var A17: UIButton!
    @IBOutlet weak var A16: UIButton!
    @IBOutlet weak var A15: UIButton!
    @IBOutlet weak var A14: UIButton!
    @IBOutlet weak var A13: UIButton!
    @IBOutlet weak var A12: UIButton!
    @IBOutlet weak var A11: UIButton!
    @IBOutlet weak var A8: UIButton!
    @IBOutlet weak var A7: UIButton!
    @IBOutlet weak var A6: UIButton!
    @IBOutlet weak var A5: UIButton!
    @IBOutlet weak var A4: UIButton!
    @IBOutlet weak var A3: UIButton!
    @IBOutlet weak var A2: UIButton!
    @IBOutlet weak var A1: UIButton!
    
    @IBOutlet weak var B9: UIButton!
    @IBOutlet weak var B8: UIButton!
    @IBOutlet weak var A10: UIButton!
    @IBOutlet weak var A9: UIButton!
    
    @IBOutlet weak var B16: UIButton!
    @IBOutlet weak var B15: UIButton!
    @IBOutlet weak var B14: UIButton!
    @IBOutlet weak var B13: UIButton!
    @IBOutlet weak var B12: UIButton!
    @IBOutlet weak var B11: UIButton!
    @IBOutlet weak var B10: UIButton!
    
    @IBOutlet weak var dd: UILabel!
    
   
    var ParkingLot:String?
    var notAvalible:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        switch ParkingLot {
                    case "B1":
                        B1.backgroundColor = .darkGray
                    case "B2":
                        B2.backgroundColor = .darkGray
                    case "B3":
                        B3.backgroundColor = .darkGray
                    case "B4":
                        B4.backgroundColor = .darkGray
                    case "B5":
                        B5.backgroundColor = .darkGray
                    case "B6":
                        B6.backgroundColor = .darkGray
                    case "B7":
                        B7.backgroundColor = .darkGray
                    case "B8":
                        B8.backgroundColor = .darkGray
                    case "B9":
                        B9.backgroundColor = .darkGray
                    case "B10":
                        B10.backgroundColor = .darkGray
                    case "B11":
                        B11.backgroundColor = .darkGray
                    case "B12":
                        B12.backgroundColor = .darkGray
                    case "B13":
                        B13.backgroundColor = .darkGray
                    case "B14":
                        B14.backgroundColor = .darkGray
                    case "B15":
                        B15.backgroundColor = .darkGray
                    case "B16":
                        B16.backgroundColor = .darkGray
                    case "A1":
                        A1.backgroundColor = .darkGray
                    case "A2":
                        A2.backgroundColor = .darkGray
                    case "A3":
                        A3.backgroundColor = .darkGray
                    case "A4":
                        A4.backgroundColor = .darkGray
                    case "A5":
                        A5.backgroundColor = .darkGray
                    case "A6":
                        A6.backgroundColor = .darkGray
                    case "A7":
                        A7.backgroundColor = .darkGray
                    case "A8":
                        A8.backgroundColor = .darkGray
                    case "A9":
                        A9.backgroundColor = .darkGray
                    case "A10":
                        A10.backgroundColor = .darkGray
                    case "A11":
                        A11.backgroundColor = .darkGray
                    case "A12":
                        A12.backgroundColor = .darkGray
                    case "A13":
                        A13.backgroundColor = .darkGray
                    case "A14":
                        A14.backgroundColor = .darkGray
                    case "A15":
                        A15.backgroundColor = .darkGray
                    case "A16":
                        A16.backgroundColor = .darkGray
                    case "A17":
                        A17.backgroundColor = .darkGray
                    default:
                        break
                    }
        switch notAvalible {
                    case "B1":
                        B1.tintColor = .clear
                    case "B2":
                        B2.tintColor = .clear
                    case "B3":
                        B3.tintColor = .clear
                    case "B4":
                        B4.tintColor = .clear
                    case "B5":
                        B5.tintColor = .clear
                    case "B6":
                        B6.tintColor = .clear
                    case "B7":
                        B7.tintColor = .clear
                    case "B8":
                        B8.tintColor = .clear
                    case "B9":
                        B9.tintColor = .clear
                    case "B10":
                        B10.tintColor = .clear
                    case "B11":
                        B11.tintColor = .clear
                    case "B12":
                        B12.tintColor = .clear
                    case "B13":
                        B13.tintColor = .clear
                    case "B14":
                        B14.tintColor = .clear
                    case "B15":
                        B15.tintColor = .clear
                    case "B16":
                        B16.tintColor = .clear
                    case "A1":
                        A1.tintColor = .clear
                    case "A2":
                        A2.tintColor = .clear
                    case "A3":
                        A3.tintColor = .clear
                    case "A4":
                        A4.tintColor = .clear
                    case "A5":
                        A5.tintColor = .clear
                    case "A6":
                        A6.tintColor = .clear
                    case "A7":
                        A7.tintColor = .clear
                    case "A8":
                        A8.tintColor = .clear
                    case "A9":
                        A9.tintColor = .clear
                    case "A10":
                        A10.tintColor = .clear
                    case "A11":
                        A11.tintColor = .clear
                    case "A12":
                        A12.tintColor = .clear
                    case "A13":
                        A13.tintColor = .clear
                    case "A14":
                        A14.tintColor = .clear
                    case "A15":
                        A15.tintColor = .clear
                    case "A16":
                        A16.tintColor = .clear
                    case "A17":
                        A17.tintColor = .clear
                    default:
                        break
                    }
    }
    
    
    @IBAction func goToHome(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
    }
    
}

