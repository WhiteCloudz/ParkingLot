//
//  ExitShowPage.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/18/23.
//
import UIKit
import Foundation


class ExitShowPage: UIViewController {
    
    @IBOutlet weak var plateNumber: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var exitTime: UILabel!
    @IBOutlet weak var parkingLot: UILabel!
    @IBOutlet weak var vehicleSize: UILabel!
    @IBOutlet weak var checkInTime: UILabel!
    @IBOutlet weak var showMessage: UILabel!
    
   
    var vehiclePlate:String?
    var vhcCheckInTime = Date()
    var vhcExitTime = Date()
    var vhcSize:String?
    var mistageMessage:String?
    var vhcParkingLot:String?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plateNumber.text = vehiclePlate
        exitTime.text = String(describing: vhcExitTime)
        parkingLot.text = vhcParkingLot
        vehicleSize.text = vhcSize
        checkInTime.text = String(describing: vhcCheckInTime)
        showMessage.text = mistageMessage
        calculatePrice()
    }
    
    
    
    func calculatePrice() {
        let calendar = Calendar.current
        let currentDate = Date()
        
        let dateComponents = calendar.dateComponents([.day], from: vhcCheckInTime, to: currentDate)

        guard let days = dateComponents.day else {return}

        if days == 0{
            price.text = "$ 9.99"
        } else {
            let totalDays = Double(days)
            let pricePerDay = 5.99
            let totalPrice = 9.99 + (pricePerDay * totalDays)
            price.text = String(format: "$ %.2f", totalPrice)
        }
    }
    
    @IBAction func goToPay(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "PricePay")
    }
    
}

