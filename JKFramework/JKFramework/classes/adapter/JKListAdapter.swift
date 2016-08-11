//
//  JKLabel.swift
//  JKFramework
//
//  Created by Cjj on 16/3/3.
//  Copyright © 2016年 Cjj. All rights reserved.
//

import Foundation


public class JKListAdapter : NSObject,UITableViewDataSource  {
    
    public var jklvList:JKListView?
    
    public func SetListView(jklvList:JKListView)
    {
        self.jklvList = jklvList;
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        fatalError("这个方法必须在子类中被重写");
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        fatalError("这个方法必须在子类中被重写");
    }

    /**
     刷新数据
     */
    public func notifyDataSetChanged()
    {
        jklvList?.reloadData();
    }
}
