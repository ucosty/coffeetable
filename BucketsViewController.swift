//
//  BucketsController.swift
//  coffeetable
//
//  Created by Matthew Costa on 2/02/2016.
//  Copyright © 2016 Matthew Costa. All rights reserved.
//

import Foundation
import Cocoa

class BucketsViewController: NSViewController {
    var bucketListItems = [String]()
    
    @IBOutlet weak var bucketList: NSTableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addItemToBucketList(sender: NSButton) {
        let itemNumber = bucketListItems.count + 1;
        bucketListItems.append("Bucket " + String(itemNumber))
        bucketList.reloadData();
    }
}

extension BucketsViewController: NSTableViewDataSource {
    func numberOfRowsInTableView(aTableView: NSTableView) -> Int {
        return self.bucketListItems.count
    }
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView?
    {
        let cellView: NSTableCellView = tableView.makeViewWithIdentifier(tableColumn!.identifier, owner: self) as! NSTableCellView
        cellView.textField!.stringValue = bucketListItems[row]
        return cellView
    }
}

extension BucketsViewController: NSTableViewDelegate {
    func tableViewSelectionDidChange(notification: NSNotification) {
    }
}
