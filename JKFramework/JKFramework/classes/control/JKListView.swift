//
//  JKLabel.swift
//  JKFramework
//
//  Created by Cjj on 16/3/3.
//  Copyright © 2016年 Cjj. All rights reserved.
//

import Foundation

//@IBDesignable
public  class JKListView : UITableView,UITableViewDataSource,UITableViewDelegate {

    
    /// 适配器
    private var adapter:JKListAdapter?;
    
    public override func awakeFromNib()
    {        
        super.awakeFromNib();

        self.delegate = self;
        self.dataSource = self;
        self.separatorStyle = UITableViewCellSeparatorStyle.None;
        
        self.tableFooterView = UIStackView.init(frame: CGRectZero)
    }
    
    /**
     设置视图适配器
     
     - parameter adapter: 适配器对象
     */
    public func SetAdapter(adapter:JKListAdapter,tNib:String?)
    {
        self.adapter = adapter;
        if (tNib == nil)
        {
            self.registerClass(JKListHolder.classForCoder(), forCellReuseIdentifier: "JKListHolder");
        }
        else {
            self.registerNib(UINib(nibName: tNib!, bundle: nil), forCellReuseIdentifier: tNib!);
        }
        self.estimatedRowHeight = 44;
        self.rowHeight = UITableViewAutomaticDimension
        self.adapter!.SetListView(self);
        self.reloadData()
    }

    public func AddItemDecoration(ucColor:UIColor,ueiMargin:UIEdgeInsets)
    {
        self.separatorStyle = UITableViewCellSeparatorStyle.SingleLine;
        self.separatorInset = ueiMargin;
        self.separatorColor = ucColor;
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if (self.adapter == nil)
        {
            return 0;
        }
        else {
            let nCount = self.adapter!.tableView(tableView,numberOfRowsInSection : section);
            return nCount
        }
    }

    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.adapter!.tableView(tableView,cellForRowAtIndexPath : indexPath);
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.layoutMargins = UIEdgeInsetsZero
        return cell
    }
    
    class JKListHolder : UITableViewCell {
        
    }
}
