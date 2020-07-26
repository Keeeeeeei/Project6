//
//  ViewController.swift
//  Project6
//
//  Created by Kei on 2020/07/21.
//  Copyright © 2020 Kei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var num = arc4random_uniform(100)
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "\(num)"
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(self, action: #selector(sliderDidChangeValue(_:)), for: .valueChanged)
        view.addSubview(slider)
       
        }
    
       
    @IBAction func answer(_ sender: UIButton) {
        let numSlider:Int = Int(slider.value)
            number = numSlider
        
        if num == number {
            alert1(title:"結果", message:"あたり\nあなたの値：\(num)\n")
        }else{
            alert2(title:"結果", message:"ハズレ\nあなたの値：\(number)\n" )
        }
       
    
    }
    
    @objc func sliderDidChangeValue(_ sender: UISlider) {
                let roundValue = roundf(sender.value)
    //                sender.value = roundValue
                      print(roundValue)
               }
    
    func alert1(title:String, message:String) {
            let alert: UIAlertController = UIAlertController(title: "結果", message: "あたり\nあなたの値：\(num)\n", preferredStyle:  UIAlertController.Style.alert)
            let defaultAction: UIAlertAction = UIAlertAction(title: "再挑戦", style: UIAlertAction.Style.default, handler:{
            (action: UIAlertAction!) -> Void in
            print("再挑戦")
            })
            
            alert.addAction(defaultAction)
            present(alert, animated: true, completion: nil)
    }
    
    func alert2(title:String, message:String){
    let alert: UIAlertController = UIAlertController(title: "結果", message: "ハズレ\nあなたの値：\(number)\n", preferredStyle:  UIAlertController.Style.alert)
               let defaultAction: UIAlertAction = UIAlertAction(title: "再挑戦", style: UIAlertAction.Style.default, handler:{
               (action: UIAlertAction!) -> Void in
               print("再挑戦")
               })
               
               alert.addAction(defaultAction)
               present(alert, animated: true, completion: nil)
       }
    
   
    
        
    }
    
    




