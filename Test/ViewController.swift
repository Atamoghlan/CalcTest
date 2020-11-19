//
//  ViewController.swift
//  Test
//
//  Created by student on 18.11.2020.
//

import UIKit

class ViewController: UIViewController {
    var Counter:Double = 0;
    var FirstNumber:Double = 0;
    var Operation:Int = 0;
    var MathSign:Bool = false;
    @IBOutlet weak var Result: UILabel!
    @IBAction func Digits(_ sender: UIButton) {
        if MathSign == true {
            Result.text = String(sender.tag)
            MathSign = false
        }
        else{
            Result.text = Result.text! + String(sender.tag)
        }
        if Double(Result.text!) != nil {
            Counter = Double(Result.text!)!
        }
        
    }
    @IBAction func Buttons(_ sender: UIButton)
    {
        if Result.text != "" && sender.tag != 10 && sender.tag != 11 && sender.tag != 16
        {
        FirstNumber = Double(Result.text!)!
            
            if sender.tag == 12 //pribavleniye
                {
                Result.text = "+"
                }
            else if sender.tag == 13 //vichitaniye
                {
                Result.text = "-"
                }
            else if sender.tag == 14 //umnojeniye
                {
                Result.text = "x"
                }
            else if sender.tag == 15 //deleniye
                {
                Result.text = "/"
                }
        Operation = sender.tag
            MathSign = true
        }
        else if sender.tag == 11
        { //znak ravno
            if Operation == 15
            {
            Result.text = String(FirstNumber/Counter)
            }
            else if Operation == 14
            {
            Result.text = String(FirstNumber*Counter)
            }
            else if Operation == 13
            {
            Result.text = String(FirstNumber-Counter)
            }
            else if Operation == 12
            {
            Result.text = String(FirstNumber+Counter)
            }
        }
        else if sender.tag == 16
        {
            Result.text = ""
            FirstNumber = 0
            Counter = 0
            Operation = 0
            
        }
        else if sender.tag == 10
    }
    
    
        
      
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        Result.text = ""
        // Do any additional setup after loading the view.
    }
    
}



