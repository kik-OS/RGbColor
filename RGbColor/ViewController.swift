//
//  ViewController.swift
//  RGbColor
//
//  Created by Никита Гвоздиков on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var vIewOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vIewOutlet.backgroundColor = UIColor(red: 0, green: 10, blue: 0, alpha: 1)
    }


}

