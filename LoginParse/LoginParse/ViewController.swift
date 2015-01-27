//
//  ViewController.swift
//  LoginParse
//
//  Created by User on 1/27/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    
    @IBAction func loginButton(sender: AnyObject) {
        
        var fieldValues: [String] = [usernameField.text,emailField.text,passwordField.text]
        
        if find(fieldValues, "") != nil {
            
            
            var alertViewController = UIAlertController(title: "You Suck!", message: "All fields must be filled in Idiot!", preferredStyle: UIAlertControllerStyle.Alert)
            
            var defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertViewController.addAction(defaultAction)
            presentViewController(alertViewController, animated: true, completion: nil)
            
            
        } else {
    
            println("You are logged in")
            
            var userQuery = PFUser.query()
            
            userQuery.whereKey("username", equalTo: usernameField.text)
            userQuery.findObjectsInBackgroundWithBlock({ (objects, error) -> Void in
                
                if objects.count > 0 {
                    
                    self.login()
                    
                }else{
                    
                    self.signUp()
                }
                
            })
         
            //signUp()
        
        }
        
        
    }

    func login() {
        
        PFUser.logInWithUsernameInBackground(usernameField.text, password:passwordField.text) {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                
                println("Logged in as \(user)")
                // Do stuff after successful login.
            } else {
                // The login failed. Check error to see why.
            }
        }
    }
    
    
    func signUp() {
        
        var user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        user.email = emailField.text
        // other fields can be set just like with PFObject
        //user["phone"] = "415-392-0202"
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                
                println(user)
                
                self.usernameField.text = ""
                self.passwordField.text = ""
                self.emailField.text = ""
                
                
                // Hooray! Let them use the app now.
            } else {
                let errorString = error.userInfo?["error"] as NSString
                // Show the errorString somewhere and let the user try again.
            }
        }
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

