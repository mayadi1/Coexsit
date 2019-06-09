
//
//  PaymentViewController.swift
//  Roomates
//
//  Created by Mohamed Ayadi on 6/8/19.
//  Copyright © 2019 Mohamed Ayadi. All rights reserved.
//

import UIKit


class PaymentViewController: BaseViewController {
    
    @IBOutlet weak var firstPay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Payment"
        firstPay.becomeFirstResponder()
    }
    
}

