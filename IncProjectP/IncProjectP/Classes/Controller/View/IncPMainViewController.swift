//
//  IncPMainViewController.swift
//  IncProjectP
//
//  Created by ymook on 16/8/17.
//  Copyright © 2016年 lmy. All rights reserved.
//

import Foundation
import JKFramework
import CVCalendar
import pop


class IncPMainViewController: IncPBaseController {
    
    @IBOutlet weak var test123: UIView!
    
    @IBAction func testBtnDown(sender: AnyObject) {
        let scaleAnimation2 = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
        scaleAnimation2.toValue = 4*M_PI
        scaleAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        scaleAnimation2.beginTime = CACurrentMediaTime()
        scaleAnimation2.duration = 3.0
        test123.layer.pop_addAnimation(scaleAnimation2, forKey: "scaleAnimation2")
    }
    override func viewDidLoad() {
//        let scaleAnimation2 = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
//        scaleAnimation2.toValue = 0
//        scaleAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
//        scaleAnimation2.beginTime = CACurrentMediaTime()
//        scaleAnimation2.duration = 1.0
        
        
        let scaleAnimation = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
        scaleAnimation.toValue = 2*M_PI
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        scaleAnimation.beginTime = CACurrentMediaTime()+1
        scaleAnimation.duration = 3.0
//        scaleAnimation.completionBlock = {(animation,finished) in
//            if(finished){
//                self.test123.layer.pop_addAnimation(scaleAnimation2, forKey: "scaleAnimation2")}
//            }
        test123.layer.pop_addAnimation(scaleAnimation, forKey: "scaleAnimation")
        
//        let scaleAnimation2 = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
//        scaleAnimation2.toValue = 0
//        scaleAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
//        scaleAnimation2.beginTime = CACurrentMediaTime()+0.7
//        scaleAnimation2.duration = 1.0
//        test123.layer.pop_addAnimation(scaleAnimation2, forKey: "scaleAnimation2")
        
//        let scaleAnimation3 = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
//        scaleAnimation3.toValue = 4*M_PI
//        scaleAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
//        scaleAnimation3.beginTime = CACurrentMediaTime()+2.0
//        scaleAnimation3.duration = 4.0
//        test123.layer.pop_addAnimation(scaleAnimation3, forKey: "scaleAnimation3")
        
        
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
}

