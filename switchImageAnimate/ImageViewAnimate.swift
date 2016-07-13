//
//  ImageViewAnimate.swift
//  switchImageAnimate
//
//  Created by Kumar on 12/07/16.
//  Copyright © 2016 Kumar. All rights reserved.
//

import UIKit


struct ImageViewAnimationObj {
    var images:[String]!// = ["test1.jpg", "test2.jpg", "test3.jpg"]
    var animateDuration: Double
    var frequentImageSwitch : Double{
        didSet (newfrequentImageSwitch){
            if newfrequentImageSwitch < animateDuration {
                frequentImageSwitch = animateDuration
            }
        }
    }
    
    var transitionType: animationType
    var repeats: Bool
    
    init(images:[String], animateDuration: Double, frequentImageSwitch: Double , transitionType: animationType, repeats: Bool){
        self.images = images
        self.animateDuration = animateDuration
        self.frequentImageSwitch = frequentImageSwitch
        self.transitionType = transitionType
        self.repeats = repeats
        // closure invokes didSet
        ({ self.frequentImageSwitch = frequentImageSwitch })()//just to ensure the Image switch duration should be greater than animate duration
    }
}
let transition: CATransition = CATransition()

enum animationType {
    case Fade
    case Push
    case MoveIn
    case Reveal
    case FromRight
    case FromLeft
    case FromTop
    case FromBottom
    
    
    func getAnimateType() -> String {
        switch self {
        case .Push:
            return kCATransitionPush
        case .Fade:
            return kCATransitionFade
        case .MoveIn:
            return kCATransitionMoveIn
        case .Reveal:
            return kCATransitionReveal
        case .FromRight:
            return kCATransitionFromRight
            
        case .FromLeft:
            return kCATransitionFromLeft
            
        case .FromTop:
            return kCATransitionFromTop
            
        case .FromBottom:
            return kCATransitionFromBottom
      
      }
    }
}

class ImageViewAnimate: UIImageView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
   private var  animationInfo: ImageViewAnimationObj!
   private var imageCount: Int = 0

    func animateImages(animateInfo: ImageViewAnimationObj)  {
        animationInfo = animateInfo
            NSTimer.scheduledTimerWithTimeInterval(animationInfo.frequentImageSwitch, target: self, selector: #selector(setImage), userInfo: nil, repeats: animationInfo.repeats)
    }
    
    
    @objc private func setImage()  {
        if imageCount == animationInfo.images.count {
            imageCount = 0
        }
        
        let transition: CATransition = CATransition()
        transition.type = animationType.getAnimateType(animationInfo.transitionType)()

        transition.duration = animationInfo.animateDuration
        self.layer.addAnimation(transition, forKey: nil)
        //  var currentImage: UIImage = self.image!
        //  var index: Int = self.images.indexOfObject(currentImage)
        //   index = (index + 1) % self.images.count
        self.image = UIImage(named:animationInfo.images[imageCount])
        self.imageCount += 1
        
    }
    
}
