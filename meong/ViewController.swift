//
//  ViewController.swift
//  meong
//
//  Created by IOS on 3/2/17.
//  Copyright © 2017 IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var m_name: UILabel!
    
    @IBOutlet weak var login_button: UIButton!
    
    @IBOutlet weak var m_username: UITextField!
    
    @IBOutlet weak var m_password: UITextField!
    
    @IBOutlet weak var m_text_view: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button_kepencet(_ sender: Any) {
        if(m_username.text?.characters.count == 0){
            let alertVC = UIAlertController(title: "Alert", message: "All Field Must Have Value", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default, handler: { (alertAction) in
                print("OK Kepencet")
            })
            alertVC.addAction(okButton)
            self.show(alertVC, sender: nil)
            return
        }
        let alertVC = UIAlertController(title: "You Are", message: "Username : \(m_username.text!) and Password : \(m_password.text!), Saved", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: { (alertAction) in
            print("OK Kepencet")
        })
            
        alertVC.addAction(okButton)
        self.show(alertVC, sender: nil)
        m_text_view.text = "\(m_text_view.text!)  \(m_username.text!)"
    }

}

