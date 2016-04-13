//
//  ViewController.swift
//  TwelveAnimals
//
//  Created by guoweidong on 4/12/16.
//  Copyright © 2016 guoweidong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var year: UITextField!
    
    @IBOutlet weak var image: UIImageView!

    @IBAction func enter() {
        year.resignFirstResponder()
        if let yearNumber = Int(year.text!) {
            let imageIndex = (yearNumber - 4) % 12
            image.image = UIImage(named: "\(imageIndex)")
        }
        else {
            print("你输的是啥啊")
        }
    }
    // 点击window其他任意位置，键盘消失
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        year.resignFirstResponder()
    }
    
    

}

