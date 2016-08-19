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
    
    override func viewDidLoad() {
        let scaleAnimation = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
        scaleAnimation.toValue = M_PI_2
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        scaleAnimation.beginTime = CACurrentMediaTime()
        scaleAnimation.duration = 1.0
        test123.layer.pop_addAnimation(scaleAnimation, forKey: "scaleAnimation")
        
        let scaleAnimation2 = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
        scaleAnimation2.toValue = 0
        scaleAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        scaleAnimation2.beginTime = CACurrentMediaTime()+0.5
        scaleAnimation2.duration = 1.0
        test123.layer.pop_addAnimation(scaleAnimation2, forKey: "scaleAnimation2")
        
        let scaleAnimation3 = POPBasicAnimation(propertyNamed:kPOPLayerRotation)
        scaleAnimation3.toValue = 4*M_PI
        scaleAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        scaleAnimation3.beginTime = CACurrentMediaTime()+2.0
        scaleAnimation3.duration = 4.0
        test123.layer.pop_addAnimation(scaleAnimation3, forKey: "scaleAnimation3")
        
        
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
}

