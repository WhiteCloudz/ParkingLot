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
    
    @IBAction func showPopup(_ sender: UIButton) {
        let popupVC = CustomPopupViewController()
        popupVC.modalPresentationStyle = .overCurrentContext
        popupVC.modalTransitionStyle = .crossDissolve
        present(popupVC, animated: true, completion: nil)
        
        
        
    }
}


    class CustomPopup: UIViewController{
        func resultIsEmpty(plate: String) {
            let plateValue = plate
            resultValue = plateValue
        }
        
        var resultValue:String?
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let popupView = UIView(frame: CGRect(x: 0, y: 20, width: 300, height: 300))
            popupView.backgroundColor = .white
            popupView.backgroundColor = .lightGray
            
            let messageLabel = UILabel(frame: CGRect(x: 10, y: 45, width: 270, height: 100))
            messageLabel.numberOfLines = 2
            messageLabel.textAlignment = .center
            popupView.addSubview(messageLabel)
            
            let backButton = UIButton(type: .system)
            backButton.frame = CGRect(x: 100, y: 200, width: 100, height: 40)
            backButton.tintColor = .red
            backButton.setTitle("Close", for: .normal)
            backButton.addTarget(self, action: #selector(backToHomePage), for: .touchUpInside)
            popupView.addSubview(backButton)
            
            view.addSubview(popupView)
            
            popupView.center = view.center
        }
        @objc func backToHomePage() {
            returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
        }
}
