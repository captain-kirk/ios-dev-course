//
//  ViewController.swift
//  Magic8
//
//  Created by Alicia Kirkland on 4/24/19.
//  Copyright © 2019 Alicia Kirkland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: randomBallArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()    }
}

