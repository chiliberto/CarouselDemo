//
//  SignInViewController.swift
//  CarouselDemo
//
//  Created by Gilbert Guerrero on 9/23/15.
//  Copyright © 2015 Gilbert Guerrero. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var EmailField: UITextField!
    @IBOutlet weak var PasswordField: UITextField!
    
    @IBOutlet weak var FormView: UIView!
    @IBOutlet weak var SignInButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnBackButton(sender: AnyObject) {
        
        navigationController!.popViewControllerAnimated(true)
        
    }
    
    @IBAction func onFieldTouch(sender: AnyObject) {
    
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            self.FormView.center.y = -38 + self.FormView.frame.size.height/2
            
        })
        
        UIView.animateWithDuration(0.2, animations: {
            // This causes first view to fade in and second view to fade out
            
            self.SignInButtonView.center.y = 210 + self.SignInButtonView.frame.size.height/2
        })
    }

    
    @IBAction func OnSignInButton(sender: AnyObject) {
        
        view.endEditing(true)
        
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            self.FormView.center.y = 64 + self.FormView.frame.size.height/2
            
        })
        
        UIView.animateWithDuration(0.2, animations: {
            // This causes first view to fade in and second view to fade out
            
            self.SignInButtonView.center.y = 360 + self.SignInButtonView.frame.size.height/2
        })
        
        if EmailField.text!.isEmpty {
    
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address.", preferredStyle: .Alert)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)

            
            presentViewController(alertController, animated: true) {
                // optional code for what happens after the alert controller has finished presenting
            }
            
        } else {
        
        
        // Delay for 2 seconds, then run the code between the braces.
        delay(2) {
            
            if self.EmailField.text == "gg@gg.com" && self.PasswordField.text == "password" {
            
                
                
            } else {
                
                
                let alertController = UIAlertController(title: "Sign In Failed", message: "Incorrect email or password.", preferredStyle: .Alert)
                
                // create an OK action
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // handle response here.
                }
                // add the OK action to the alert controller
                alertController.addAction(OKAction)
                
                
                self.presentViewController(alertController, animated: true) {
                    // optional code for what happens after the alert controller has finished presenting
                }
                
                
            } //end if
            
            
        } //end delay
            
        }//end if
        
    
    } //end OnSignInButton

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
