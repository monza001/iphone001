//
//  ViewController.swift
//  LoveFinder
//
//  Created by liyuan on 14-10-3.
//  Copyright (c) 2014年 tn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var sex: UISegmentedControl!
    
    @IBOutlet weak var birthday: UIDatePicker!
    
    @IBOutlet weak var height: UISlider!
    
    @IBOutlet weak var heightLable: UILabel!
    
    @IBOutlet weak var house: UISwitch!
    
    @IBOutlet weak var result: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        name.delegate = self  //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func heightChanged(sender: AnyObject) {
        var slider = sender as UISlider
        var i = Int(slider.value)
        slider.value = Float(i)
        
        heightLable.text = "\(Int(slider.value))"
    }
    
    
    @IBAction func okDown(sender: AnyObject) {
    }
    
    //UITextFieldDelegate 委托
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        //测试
        return true
    }
    
    


}

