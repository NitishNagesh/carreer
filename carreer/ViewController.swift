//
//  ViewController.swift
//  carreer
//
//  Created by nitish nayak n on 23/10/18.
//  Copyright © 2018 nitish nayak n. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customerSupportButton: UIButton!
    @IBOutlet weak var backendOperationButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        customerSupportButton.isHidden = true
        backendOperationButton.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fullTimePressed(_ sender: UIButton) {
        
          customerSupportButton.isHidden = !customerSupportButton.isHidden
        backendOperationButton.isHidden = !backendOperationButton.isHidden
        }
  
    @IBAction func customerSupportpressed(_ sender: UIButton) {
    }
    
    @IBAction func backendOperationPressed(_ sender: UIButton) {
    }
    
}


