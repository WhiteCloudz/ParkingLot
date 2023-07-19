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
        
    }
    
    
    
    func calculatePrice() {
        let calendar = Calendar.current
        let currentDate = Date()

        if calendar.isDateInToday(vhcCheckInTime) && vhcCheckInTime > currentDate {
            price.text = "$ 9.99"
        } else {
            let pricePerDay = 5.99
            let days = calendar.dateComponents([.day], from: calendar.startOfDay(for: currentDate), to: calendar.startOfDay(for: vhcCheckInTime)).day ?? 0
            let totalPrice = 9.99 + (pricePerDay * Double(days))
            price.text = "$ \(totalPrice)"
        }
    }
        
       
    
    @IBAction func goToPay(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "PricePay")
    }
    
}

