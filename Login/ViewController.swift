//
//  ViewController.swift
//  Login
//
//  Created by AE on 1/24/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgotUserNameButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "loginViewSegue", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "loginViewSegue", sender: forgotPasswordButton)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.title = userName.text
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {    segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
                userName.text
        }
        
    }

}
