//
//  IncPEventCategory.swift
//  IncProjectP
//
//  Created by ymook on 16/8/24.
//  Copyright © 2016年 lmy. All rights reserved.
//

import Foundation

public struct IncPEventCategory{
    enum EventCategory{
        enum Game{
            case WoW
            case Lushi
            case Dota2
            case OW
            case SC2
            case PS4
            case PSV
        }
        enum Daily {
            case Clean
            case Replace
            case Sport
            case Buy
        }
    }
}