//
//  ViewController.swift
//  switchImageAnimate
//
//  Created by Kumar on 12/07/16.
//  Copyright © 2016 Kumar. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var imgView: ImageViewAnimate!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let images = ["test1.jpg", "test2.jpg", "test3.jpg"]
        let animationInfo = ImageViewAnimationObj(images:images, animateDuration: 4,frequentImageSwitch: 8, transitionType: .Push, repeats: true)
        imgView.animateImages(animationInfo)
    
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

