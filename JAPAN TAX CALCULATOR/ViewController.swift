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
    
    
    @IBOutlet weak var nt: UILabel!
    @IBOutlet weak var yen: UILabel!
    @IBOutlet weak var rateTextField: UITextField!
    
    
    
    
    
    
    
    
    //calculate yen
    @IBAction func yenButtonPress(_ sender: Any) {
        if (priceTextField.text == ""||taxTextField.text == ""||numberTextFIELD.text == "")
        {
            yenCalResult.isHidden=false
            yenCalResult.text="輸入有問題喔"
            yen.isHidden=true
            nt.isHidden=true
        
        }
        else{
            yenCalResult.isHidden=false
            let tax=Double(priceTextField.text!)!*(1+Double(taxTextField.text!)!/100)
            let taxResult=Double(tax)/Double(numberTextFIELD.text!)!
            //let answer=Double(taxResult)*Double(rateTextField.text!)!
            yenCalResult.text=String(taxResult)
            yen.isHidden=false
            nt.isHidden=true

        }
      
            
        
    }
    //calculate NT
    @IBAction func ntButtonPress(_ sender: Any) {
        nt.isHidden=false
        yen.isHidden=true
        let tax=Double(priceTextField.text!)!*(1+Double(taxTextField.text!)!/100)
        let taxResult=Double(tax)/Double(numberTextFIELD.text!)!
        let answer=Double(taxResult)*Double(rateTextField.text!)!
        yenCalResult.text=String(answer)
        
        
    }
    
    
    //點一下把鍵盤收起來
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    func dismissKeyboard() {
        view.endEditing(true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.hideKeyboardWhenTappedAround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

