//
//  ViewController.swift
//  Working with Images
//
//  Created by Naing Lin Aung on 3/10/15.
//  Copyright (c) 2015 Naing Lin Aung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var updateFrameButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    var counter = 1
    var timer = NSTimer()

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    @IBAction func updateFrame() {
          timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "animate", userInfo: nil, repeats: true)
        
        // need to change button when it's click
    }
    
    
    func animate() {
        counter++
        
        if counter == 6 {
            counter = 1
        }
        imageView.image = UIImage(named: "frame\(counter).jpg")
    }

    
//    override func viewDidLayoutSubviews() {
//      imageView.frame = CGRectMake(200, 500, 100, 200)
//    }
//    
//    override func viewDidAppear(animated: Bool) {
//        
//        UIView.animateWithDuration(1, animations: { () -> Void in
//           self.imageView.frame = CGRectMake(200, 500, 50, 100)
//        })
//    }

}

