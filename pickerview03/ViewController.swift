//
//  ViewController.swift
//  pickerview03
//
//  Created by D7703_22 on 2019. 4. 18..
//  Copyright © 2019년 fb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
 
    var myColor = ["red", "bule","green"]
    //
    @IBOutlet weak var outlbl: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.dataSource = self
        myPickerView.delegate = self
        
        outlbl.text = myColor[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myColor.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("component = \(component)")
        print("row = \(row)")
        print("------------")
        return myColor[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        outlbl.text = myColor[row]
        
    }
    
}

