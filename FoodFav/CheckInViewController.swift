//
//  CheckInViewController.swift
//  FoodFav
//
//  Created by iMac-52 on 8/17/2560 BE.
//  Copyright © 2560 Megazy. All rights reserved.
//

import UIKit

class CheckInViewController: UIViewController {
    
    
    @IBOutlet weak var btnSetting: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if revealViewController() != nil {
            btnSetting.target = self.revealViewController()
            btnSetting.action = #selector(SWRevealViewController.revealToggle(_:))
            self.view.addGestureRecognizer(revealViewController().tapGestureRecognizer())
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
