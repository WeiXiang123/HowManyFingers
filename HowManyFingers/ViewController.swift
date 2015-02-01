//
//  ViewController.swift
//  HowManyFingers
//
//  Created by WeiXiang on 15/2/1.
//  Copyright (c) 2015年 WeiXiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!

    @IBOutlet weak var resultLable: UILabel!

    @IBAction func guessButton(sender: UIButton) {  


        var randomNum:Int = Int(arc4random_uniform(6))
        var guessNum = guess.text.toInt()
        if let guessNum = guessNum {
            if randomNum == guessNum  {
                resultLable.text = "Correct!"
            }else {
                resultLable.text = "Nope! it was \(randomNum)"
            }
        }else {
            resultLable.text = "enter 0~5"
        }
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

