//
//  DetailViewController.swift
//  Blog Reader
//
//  Created by Naing Lin Aung on 3/24/15.
//  Copyright (c) 2015 Naing Lin Aung. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    @IBOutlet weak var webView: UIWebView!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
       
        webView.loadHTMLString(activeItem, baseURL: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

