//
//  ViewController.swift
//  SampleSnapshot
//
//  Created by Jun Morita on 2020/09/05.
//  Copyright © 2020 Jun Morita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var colorButton: UIButton! {
        didSet {
            colorButton.setTitle(R.string.localizable.hello(), for: .normal)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

