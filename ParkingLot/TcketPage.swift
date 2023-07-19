//
//  TcketPage.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//

import UIKit

protocol isEmptyProtocol{
    func resultIsEmpty(plate:String)
}

class TicketPage: UIViewController {
    
    @IBOutlet weak var leable: UILabel!
    @IBOutlet weak var viewTable: UIView!
    @IBOutlet weak var ShowMistakeMessage: UILabel!
    @IBOutlet weak var checkInTime: UITextField!
    @IBOutlet weak var plateNumber: UITextField!
    @IBOutlet weak var vehicleSize: UITextField!
    
    var vehiclePlate:String?
    var vhcCheckInTime = Date()
    var vhcSize:String?
    var mistageMessage:String?
    var delegate:isEmptyProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShowMistakeMessage.text = mistageMessage
        checkInTime.text = String(describing: vhcCheckInTime)
        plateNumber.text = vehiclePlate
        vehicleSize.text = vhcSize
        viewTable.isHidden = false
        leable.isHidden = false
        delegate?.resultIsEmpty(plate: vehiclePlate!)
        cornerRadius2(ViewName: viewTable)
        
    }
    
    @IBAction func Exit(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
    }
    
    @IBAction func showPopup(_ sender: UIButton) {
        guard let plate = plateNumber.text, !plate.isEmpty else {
            ShowMistakeMessage.text = "License plate not found."
            return}
        let popupVC = CustomPopupViewController()
        popupVC.modalPresentationStyle = .overCurrentContext
        popupVC.modalTransitionStyle = .crossDissolve
        present(popupVC, animated: true, completion: nil)
        viewTable.isHidden = true
        leable.isHidden = true
        
        
    }
    
}

 class CustomPopupViewController: UIViewController, isEmptyProtocol {
    func resultIsEmpty(plate: String) {
        let plateValue = plate
        resultValue = plateValue
    }
    
    var resultValue:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Popup görünümünü oluşturun
        
        let popupView = UIView(frame: CGRect(x: 0, y: 20, width: 300, height: 300))
        popupView.backgroundColor = .white
        popupView.backgroundColor = .lightGray
        
        // Mesaj etiketi oluşturun
        let messageLabel = UILabel(frame: CGRect(x: 10, y: 45, width: 270, height: 100))
        
        if resultValue?.count == 0 {
            messageLabel.text = "No value to be saved found."
        }else{
            messageLabel.text = "Your pass card has been successfully added to your widget."
        }
        
        messageLabel.numberOfLines = 2
        messageLabel.textAlignment = .center
        popupView.addSubview(messageLabel)
        
        // "Ana Sayfaya Dön" butonunu oluşturun
        let backButton = UIButton(type: .system)
        backButton.frame = CGRect(x: 100, y: 200, width: 100, height: 40)
        backButton.tintColor = .red
        backButton.setTitle("Close", for: .normal)
        backButton.addTarget(self, action: #selector(backToHomePage), for: .touchUpInside)
        popupView.addSubview(backButton)
        
        // Popup görünümünü ana görünüme ekleyin
        view.addSubview(popupView)
        
        // Popup görünümünü sayfanın tam ortasında konumlandırın
        popupView.center = view.center
    }
    
    @objc func backToHomePage() {
       returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
    }
    
    
    
}
