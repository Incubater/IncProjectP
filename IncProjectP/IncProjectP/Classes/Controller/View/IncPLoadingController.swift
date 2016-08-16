//
//  IncPLoadingController.swift
//  IncProjectP
//
//  Created by ymook on 16/8/11.
//  Copyright © 2016年 lmy. All rights reserved.
//

import Foundation
import JKFramework

class IncPLoadingController: IncPBaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        CheckUpdate()
        JKLog.e("qwer")
        JKThread().Start({NSThread.sleepForTimeInterval(1.0)},onMain: {self.GoMain()})
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    private func CheckUpdate()
    {
        
    }

    private func GoMain()
    {
        StartStoryBoard("Main",mtsAnimation:UIModalTransitionStyle.CrossDissolve)
    }
    
}
