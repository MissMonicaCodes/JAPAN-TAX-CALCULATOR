//
//  ViewController.swift
//  JAPAN TAX CALCULATOR
//
//  Created by 林淑微 on 2017/3/3.
//  Copyright © 2017年 Monicalin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var taxTextField: UITextField!
    
    
    @IBOutlet weak var numberTextFIELD: UITextField!
    
    @IBOutlet weak var yenCalResult: UILabel!
    
    
    @IBOutlet weak var yen: UILabel!
    
    
    //calculate yen
    @IBAction func yenButtonPress(_ sender: Any) {
        if (priceTextField.text == ""||taxTextField.text == "")
        {
            yenCalResult.isHidden=false
            yenCalResult.text="No price"
            //yen.isHidden=false
        
        }
        else{
            yenCalResult.isHidden=false
            let tip=round(Double(priceTextField.text!)!*Double(taxTextField.text!)!/100)
            yenCalResult.text=String(tip)
        
        
        
        
        }
      
            
        
    }
    //calculate NT
    @IBAction func ntButtonPress(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

