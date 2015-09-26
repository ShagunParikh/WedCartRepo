//
//  SWRevealView_MainViewController.swift
//  WedCart
//
//  Created by Karan on 25/07/15.
//  Copyright (c) 2015 Promact Infotech. All rights reserved.
//

import UIKit

class SWRevealView_MainViewController: UIViewController{

    @IBOutlet weak var NavLeftButton: UIBarButtonItem!

    override func viewDidLoad() {
       super.viewDidLoad()

       if self.revealViewController() != nil {
          
            NavLeftButton.target = self.revealViewController()
            NavLeftButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
}
   

}
