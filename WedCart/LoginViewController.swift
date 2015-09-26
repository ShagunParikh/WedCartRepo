//
//  ViewController.swift
//  WedCart
//
//  Created by Karan on 27/06/15.
//  Copyright (c) 2015 Promact Infotech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TagLineLabel: UILabel!
    @IBOutlet weak var BackgroundImageView: UIImageView!
    @IBOutlet weak var FacebookButton: UIButton!

    @IBOutlet weak var GoogleButton: UIButton!

    @IBOutlet weak var VendorButton: UIButton!

    @IBOutlet weak var TitleView: UIView!
    @IBOutlet weak var ButtonView: UIView!

    @IBOutlet weak var OverLayView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        FacebookButton.layer.cornerRadius = 5
        GoogleButton.layer.cornerRadius = 5
        VendorButton.layer.cornerRadius = 5
//
//        self.OverLayView.backgroundColor = UIColor.clearColor()
//        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = self.view.bounds
//        self.OverLayView.addSubview(blurEffectView)

self.OverLayView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)

        animateImage(1)


    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func FacebookAction(sender: AnyObject) {
        self.performSegueWithIdentifier("segue_to_wall", sender: self)
    }


    @IBAction func GoogleAction(sender: AnyObject) {
        self.performSegueWithIdentifier("segue_to_wall", sender: self)

    }

    func animateImage(no:Int)
    {
        var imgNumber:Int = no
        let t:NSTimeInterval = 1;
        let t1:NSTimeInterval = 0;
        var name:String = "splash_background_\(imgNumber)"


        UIView.transitionWithView(self.BackgroundImageView,
            duration:3,
            options: UIViewAnimationOptions.TransitionCrossDissolve,
            animations: { self.BackgroundImageView.image = UIImage(named:name) },

                  completion: {(Bool) in
                       imgNumber++;
                       if imgNumber>6  //only for 6 image
                       {
                          imgNumber = 1
                        }
                        self.animateImage(imgNumber);
                })


    }


}

