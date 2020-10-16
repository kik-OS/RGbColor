//
//  ViewController.swift
//  RGbColor
//
//  Created by Никита Гвоздиков on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var vIewOutlet: UIView!
    
    @IBOutlet var redLabelOutlet: UILabel!
    @IBOutlet var greenLabelOutlet: UILabel!
    @IBOutlet var blueLabelOutlet: UILabel!
    
    private var valueOfColors: (red: Float,
                                green: Float,
                                blue: Float) = (0, 0, 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func redSliderAction(_ sender: UISlider)  {
        valueOfColors.red = sender.value
        redLabelOutlet.text = (String(format: "%.2f", sender.value))
        switchColor()
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        valueOfColors.green = sender.value
        greenLabelOutlet.text = (String(format: "%.2f", sender.value))
        switchColor()
    }
    @IBAction func blueSliderAction(_ sender: UISlider) {
        valueOfColors.blue = sender.value
        blueLabelOutlet.text = (String(format: "%.2f", sender.value))
        switchColor()
    }
    
   private func switchColor() {
        vIewOutlet.backgroundColor = UIColor(red: CGFloat(valueOfColors.red),
                                             green: CGFloat(valueOfColors.green),
                                             blue: CGFloat(valueOfColors.blue),
                                             alpha: 1)
    }
}
