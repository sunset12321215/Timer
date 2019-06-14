//
//  SecondViewController.swift
//  Timer
//
//  Created by CuongVX-D1 on 6/14/19.
//  Copyright © 2019 CuongVX-D1. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet private weak var progresslabel: UILabel!
    
    var progress: String? {
        didSet {
            progresslabel.text = progress
        }
    }
}

