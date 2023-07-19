//
//  CheckInPark.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//

import UIKit
import CoreData


class CheckInPark: UIViewController{
    
    
 
    
    @IBOutlet weak var plateNumber: UITextField!
    @IBOutlet weak var vehicleSize: UIButton!
    
    let dateFormatter = DateFormatter()
    var context: NSManagedObjectContext!
    var chcTime = Date()
    var compactArray:[String] = ["A1","A2","A3","A4","A5","A6","A7","A8","A11","A12","A13","A14","A15","A16","A17","B1","B2","B3","B4","B5","B6","B7" ]
    var mycArray:[String] = ["A9","A10","B8","B9"]
    var longArray:[String] = ["B10","B11","B12","B13","B14","B15","B16"]
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        cornerRadius(buttonName: vehicleSize)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        context = appDelegate.persistentContainer.viewContext
    }

    
    @IBAction func cgangeButtonColor(_ sender: Any) {
        if let sendMap = self.storyboard?.instantiateViewController(withIdentifier: "MapViewController") as? MapViewController {
            sendMap.ParkingLot = "A1"
            sendMap.notAvalible = "B12"
            sendMap.modalPresentationStyle = .fullScreen
            self.present(sendMap, animated: true, completion: nil)
        }
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
                                                
                                                
    
                    
