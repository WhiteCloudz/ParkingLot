//
//  CheckInPark.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//

import UIKit
import CoreData

class CheckInPark: UIViewController {
    
    @IBOutlet weak var plateNumber: UITextField!
    @IBOutlet weak var vehicleSize: UIButton!
    
    let dateFormatter = DateFormatter()
    var context: NSManagedObjectContext!
    var chcTime = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius(buttonName: vehicleSize)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        context = appDelegate.persistentContainer.viewContext
    }

    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate = sender.date
        chcTime = selectedDate
       
    }
    
    
    @IBAction func goToHome(_ sender: Any) {
        returnHome(storyboardName: "Main", ViewControllarStringName: "HomePage")
    }
    
    
    @IBAction func popUp(_ sender: Any) {
        let alertController = UIAlertController(title: "Options", message: "Select Vehicle Size", preferredStyle: .actionSheet)
                 
               alertController.addAction(UIAlertAction(title: "Bus", style: .default, handler: { (_) in
                  
                   if let goTicket = self.storyboard?.instantiateViewController(withIdentifier: "TicketPage") as? TicketPage {
                       
                       guard let vcPlate = self.plateNumber.text else { return }
                       let veri = Vehicle(context: self.context)
                       veri.vehiclesize = "Bus"
                       veri.plate = vcPlate
                       veri.checkintime = self.chcTime
                       do {
                           try self.context.save()
                           self.plateNumber.text = ""
                       } catch {
                          
                       }
                       if let checkinTime = veri.checkintime {
                           goTicket.vhcCheckInTime = checkinTime
                           goTicket.vhcSize = veri.vehiclesize
                           goTicket.vehiclePlate = veri.plate
                           goTicket.modalPresentationStyle = .fullScreen
                           self.present(goTicket, animated: true, completion: nil)
                       } else {
                          
                       }
                   }
               }))
               
                 alertController.addAction(UIAlertAction(title: "Car", style: .default, handler: { (_) in
                    
                     if let goTicket = self.storyboard?.instantiateViewController(withIdentifier: "TicketPage") as? TicketPage {
                         
                         guard let vcPlate = self.plateNumber.text else { return }
                         let veri = Vehicle(context: self.context)
                         veri.vehiclesize = "Car"
                         veri.plate = vcPlate
                         veri.checkintime = self.chcTime
                         do {
                             try self.context.save()
                             self.plateNumber.text = ""
                         } catch {
                             
                         }
                         if let checkinTime = veri.checkintime {
                             goTicket.vhcCheckInTime = checkinTime
                             goTicket.vhcSize = veri.vehiclesize
                             goTicket.vehiclePlate = veri.plate
                             goTicket.modalPresentationStyle = .fullScreen
                             self.present(goTicket, animated: true, completion: nil)
                         } else {
                             print("Hata: checkinTime değeri nil.")
                         }
                     }
                 }))
               
               alertController.addAction(UIAlertAction(title: "Bicycle", style: .default, handler: { (_) in
                   
                   if let goTicket = self.storyboard?.instantiateViewController(withIdentifier: "TicketPage") as? TicketPage {
                       
                       guard let vcPlate = self.plateNumber.text else { return }
                       let veri = Vehicle(context: self.context)
                       veri.vehiclesize = "Bicycle"
                       veri.plate = vcPlate
                       veri.checkintime = self.chcTime
                       do {
                           try self.context.save()
                           self.plateNumber.text = ""
                       } catch {
                          
                       }
                       if let checkinTime = veri.checkintime {
                           goTicket.vhcCheckInTime = checkinTime
                           goTicket.vhcSize = veri.vehiclesize
                           goTicket.vehiclePlate = veri.plate
                           goTicket.modalPresentationStyle = .fullScreen
                           self.present(goTicket, animated: true, completion: nil)
                       } else {
                           
                       }
                   }
               }))
               
               alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
               present(alertController, animated: true, completion: nil)
           }
    
    }
                                                
                                                
    
                    
