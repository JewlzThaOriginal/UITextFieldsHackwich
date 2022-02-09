//
//  ViewController.swift
//  UITextFieldsHackwich
//
//  Created by Aiden Martinez on 2/8/22.
//

import UIKit
// Corner Radius Extension For The Button
@IBDesignable extension UIButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}
class ViewController: UIViewController
{
    @IBOutlet weak var TextIn: UITextField!
    @IBOutlet weak var LabelDisplay: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func UsingButton(_ sender: Any)
    {
        
        LabelDisplay.text = TextIn.text
        
    }
    
}

