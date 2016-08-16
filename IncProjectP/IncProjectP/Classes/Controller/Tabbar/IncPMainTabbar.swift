//
//  IncPMainTabbar.swift
//  IncProjectP
//
//  Created by ymook on 16/8/11.
//  Copyright © 2016年 lmy. All rights reserved.
//

import Foundation
import JKFramework
import SwiftEventBus
import SnapKit

class IncPMainTabbar: JKBaseTabbarController {

    override internal func loadView() {
        super.loadView()
        
        //SwiftEventBus.onMainThread(self, name: "Logout") { result in
        //    self.selectedIndex = 0;
        //}
    }

}
