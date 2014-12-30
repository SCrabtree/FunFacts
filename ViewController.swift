//
//  ViewController.swift
//  FunFacts
//
//  Created by Sean Crabtree on 12/18/14.
//  Copyright (c) 2014 Sean Crabtree. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!

    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func showFunFact() { // IB = Interface Builder; target action method
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }
}