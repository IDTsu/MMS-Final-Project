//
//  ViewController.swift
//  finproMMS2
//
//  Created by prk on 11/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginButton(_ sender: Any) {
        
        if (username.text == "user" && password.text == "user") {
            self.performSegue(withIdentifier: "UserVC", sender: self)
        }
        
        else {
            let alert = UIAlertController(title: "Username/Password salah", message: "Tolong masukkan username/password dengan benar", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: NSLocalizedString("Close", comment: "Closes alert"), style: .default,
                                         handler: {_ in NSLog("The \"OK\" alert occured." )}))
            self.present(alert,animated: true, completion: nil)
        }
    }
    
    @IBAction func registerButton(_ sender: Any) {
        self.performSegue(withIdentifier: "Register", sender: self)
    }
    
    
}
