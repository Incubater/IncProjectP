//
//  IncPCalendarController.swift
//  IncProjectP
//
//  Created by ymook on 16/8/22.
//  Copyright © 2016年 lmy. All rights reserved.
//

import Foundation
import JKFramework
import CVCalendar

class IncPCalendarController: IncPBaseController {
    @IBOutlet weak var menuView: CVCalendarMenuView!
    
    @IBOutlet weak var calendarView: CVCalendarView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
    }
}

extension IncPCalendarController: CVCalendarViewDelegate, CVCalendarMenuViewDelegate {
    
    /// Required method to implement!
    func presentationMode() -> CalendarMode {
        return .MonthView
    }
    
    /// Required method to implement!
    func firstWeekday() -> Weekday {
        return .Sunday
    }
    
}
