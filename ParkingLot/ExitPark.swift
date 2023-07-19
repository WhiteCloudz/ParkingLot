//
//  ExitPark.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//
import UIKit
import CoreData

class ExitPark: UIViewController {
    
    @IBOutlet weak var plateNumber: UITextField!
    @IBOutlet weak var showMessage: UILabel!
   
    var selectedDate: Date?
    var context: NSManagedObjectContext!
    let dateFormatter = DateFormatter()
    var selam:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        context = appDelegate.persistentContainer.viewContext
    }
    
    
    @IBAction func exitParking(_ sender: Any) {
        guard let plate = plateNumber.text, !plate.isEmpty else {
            showMessage.text = "Please enter your license plate number."
            return
        }
        
        if let showTicket = self.storyboard?.instantiateViewController(withIdentifier: "ExitShowPage") as? ExitShowPage {
            let fetchRequest: NSFetchRequest<Vehicle> = Vehicle.fetchRequest()
            fetchRequest.predicate = NSPredicate(format: "plate == %@", plate)
            
            do {
                let result = try context.fetch(fetchRequest)
                if let vehicle = result.first {
                    let vehicleSize = vehicle.vehiclesize
                    guard let chkInTime = vehicle.checkintime else {return}
                    let vehiclePlate = vehicle.plate
                    
                    showTicket.vhcCheckInTime = chkInTime
                    showTicket.vhcSize = vehicleSize
                    showTicket.vehiclePlate = vehiclePlate
                    showTicket.vhcExitTime = Date()
                } else {
                    showTicket.mistageMessage = "License plate not found."
                }
            } catch {
                showTicket.mistageMessage = "Dara Error"
            }
            
            showTicket.modalPresentationStyle = .fullScreen
            self.present(showTicket, animated: true, completion: nil)
        }
    }

    
    @IBAction func goToExit(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
    }
    
}
