//
//  ViewController.swift
//  FoodFav
//
//  Created by iMac-52 on 8/15/2560 BE.
//  Copyright © 2560 Megazy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    d8289c41342595ef3118b8d60b5d72d1 
    
    
    @IBOutlet weak var setting: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if revealViewController() != nil {
            setting.target = self.revealViewController()
            setting.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

