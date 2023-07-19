//
//  Utility.swift
//  ParkingLot
//
//  Created by Fatih Akbulut on 7/17/23.
//

import UIKit

extension UIViewController{
    
    func cornerRadius(buttonName:UIButton){
            buttonName.layer.cornerRadius = buttonName.bounds.height / 2
            buttonName.layer.masksToBounds = true
        }
    func returnHome(storyboardName: String, ViewControllarStringName: String) {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let homeVC = storyboard.instantiateViewController(withIdentifier: ViewControllarStringName)
        homeVC.modalPresentationStyle = .fullScreen
        self.present(homeVC, animated: true, completion: nil)
    }
    
    func ScrollerSetup(name:UIScrollView, Height:Int){
        name.isScrollEnabled = true
        let desiredHeight: CGFloat =  CGFloat(Height)
        name.contentSize = CGSize(width: name.frame.size.width, height: desiredHeight)
    }
    
    func ScrollHorizental (name:UIScrollView, Width:Int){
        name.isScrollEnabled = true
        let desiredWidth: CGFloat =  CGFloat(Width)
        name.contentSize = CGSize(width: desiredWidth, height: name.frame.size.height)
    }
    
    func cornerRadius2(ViewName:UIView){
        ViewName.layer.cornerRadius = ViewName.bounds.height / 8
        ViewName.layer.masksToBounds = true
 
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField, text:String) {
           textField.placeholder = text
       }

       func textFieldDidEndEditing(_ textField: UITextField) {
           textField.placeholder = ""
       }
}
