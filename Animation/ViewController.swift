//
//  ViewController.swift
//  Animation
//
//  Created by Advait on 22/06/17.
//  Copyright © 2017 Advait. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myTimer = Timer()
    
    var counter = 1
    
    @IBOutlet weak var scoobyImage: UIImageView!
    
    func startFunction(){
        scoobyImage.image = UIImage(named: "frame\(counter).gif")
        
        counter = counter + 1
        
        if counter == 11{
            counter = 1
        }
    }
    

    @IBAction func startButtonPressed(_ sender: Any) {
        
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.startFunction), userInfo: nil, repeats: true)
        
    }
    @IBAction func stopButtonPressed(_ sender: Any) {
        
        myTimer.invalidate()
        
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

