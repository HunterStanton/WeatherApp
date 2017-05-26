//
//  AlertHelper.swift
//  Convert Master
//
//  Created by Hunter Stanton on 10/5/16.
//  Copyright © 2016 Hunter Stanton. All rights reserved.
//
//  A class that assists in creating Alert Views.
//

import UIKit

class AlertHelper{
    
    
    /// Generates Alert Controllers for the purpose of displaying information
    ///
    /// - parameter view:        The View Controller that will be spawn the Alert.
    /// - parameter title:       The title of the Alert that will be displayed.
    /// - parameter description: The description of the Alert that will be displayed.
    class func ShowInfoView(view: UIViewController, description: String)
    {
        // Create our alert view
        let alertController = UIAlertController(title: NSLocalizedString("info_title", comment: "Info Title"), message: description, preferredStyle: UIAlertControllerStyle.alert)
        
        // Create the OK button action
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("User selected OK.")
        }
        
        // Add it to the alert
        alertController.addAction(okAction)
        
        // Present the alert
        view.present(alertController, animated: true, completion: nil)
    }
    
    /// Generates Alert Controllers for the purpose of displaying information after a purchase
    ///
    /// - parameter view:        The View Controller that will be spawn the Alert.
    /// - parameter title:       The title of the Alert that will be displayed.
    /// - parameter description: The description of the Alert that will be displayed.
    class func ShowInfoViewPurchase(view: UIViewController, description: String)
    {
        // Create our alert view
        let alertController = UIAlertController(title: "Purchase Successful", message: description, preferredStyle: UIAlertControllerStyle.alert)
        
        // Create the OK button action
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("User selected OK.")
        }
        
        // Add it to the alert
        alertController.addAction(okAction)
        
        // Present the alert
        view.present(alertController, animated: true, completion: nil)
    }
    
    /// Generates Alert Controllers for the purpose of displaying information after a purchase
    ///
    /// - parameter view:        The View Controller that will be spawn the Alert.
    /// - parameter title:       The title of the Alert that will be displayed.
    /// - parameter description: The description of the Alert that will be displayed.
    class func ShowInfoViewRestorePurchase(view: UIViewController, description: String)
    {
        // Create our alert view
        let alertController = UIAlertController(title: "Purchase Restored", message: description, preferredStyle: UIAlertControllerStyle.alert)
        
        // Create the OK button action
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("User selected OK.")
        }
        
        // Add it to the alert
        alertController.addAction(okAction)
        
        // Present the alert
        view.present(alertController, animated: true, completion: nil)
    }
    
    /// Generates Alert Controllers for the purpose of displaying information after an error
    ///
    /// - parameter view:        The View Controller that will be spawn the Alert.
    /// - parameter title:       The title of the Alert that will be displayed.
    /// - parameter description: The description of the Alert that will be displayed.
    class func ShowError(view: UIViewController, description: String)
    {
        // Create our alert view
        let alertController = UIAlertController(title: "Error", message: description, preferredStyle: UIAlertControllerStyle.alert)
        
        // Create the OK button action
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
            print("User selected OK.")
        }
        
        // Add it to the alert
        alertController.addAction(okAction)
        
        // Present the alert
        view.present(alertController, animated: true, completion: nil)
    }
}
