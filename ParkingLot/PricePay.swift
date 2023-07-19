//
//  PricePay.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/18/23.
//
import UIKit

class PricePay: UIViewController{
    
    
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var zipCode: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var mailingAddress: UITextField!
    @IBOutlet weak var secureCod: UITextField!
    @IBOutlet weak var expirationDate: UITextField!
    @IBOutlet weak var cardNumber: UITextField!
    @IBOutlet weak var cardHolder: UITextField!
    @IBOutlet weak var showMessage: UILabel!
    
    var price:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumber.placeholder = "Phone Number"
        zipCode.placeholder = "Zip Code"
        state.placeholder = "State"
        City.placeholder = "City"
        mailingAddress.placeholder = "Mailing Adress"
        secureCod.placeholder = "Secure Cod"
        expirationDate.placeholder = "Expiration Date"
        cardNumber.placeholder = "Card Number"
        cardHolder.placeholder = "Card Holder"
        
    }
    
    
    @IBAction func openQrCode(_ sender: Any) {
       returnHome(storyboardName: "Main", ViewControllarStringName: "ViewController")
       
    }
    

    
    @IBAction func writeInformation(_ sender: Any) {
        phoneNumber.text = "510 224 4567"
        zipCode.text = "97123"
        state.text = "CA"
        City.text = "San Jose"
        mailingAddress.text = "12896 Raspberry Av "
        secureCod.text = "945"
        expirationDate.text = "03 / 2027"
        cardNumber.text = "4532 6754 1865 2346"
        cardHolder.text = "Fatih Whitecloud"
        
    }
}


