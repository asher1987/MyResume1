//
//  ViewController.swift
//  modified lesson 2.8 Resume App
//
//  Created by admin on 10/25/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IB Outlets
    
    
    //MARK: - Instance Properties
    let phoneNumber = "3166771321"
    
    //MARK: - VDL
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
//MARK: IB Actions
    
    
    @IBAction func CallMeButtonTapped(_ sender: Any) {
        if let url = NSURL(string: "tel://\(phoneNumber)") {  //this is called a URL scheme
            UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
            // next line of code demonstrates that the call button will work on a physical device. This is inserted to demo functionality.
            //since the Simulator cannot make a phone call, the next line will print a string to the console.
            print("A physical device would be calling my number. Voicemail will be automatically invoked.")
        }
       
    }
    //MARK: - Instance Methods

}

