//
//  AppDelegate.swift
//  coffeetable
//
//  Created by Matthew Costa on 1/02/2016.
//  Copyright © 2016 Matthew Costa. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var menuView: NSView!
    
    var bucketsViewController: BucketsViewController!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        bucketsViewController = BucketsViewController(nibName: "BucketsViewController", bundle: nil)
        
        menuView.autoresizesSubviews = true
        bucketsViewController.view.autoresizesSubviews = true
                
        menuView.addSubview(bucketsViewController.view)
        bucketsViewController.view.frame = menuView.bounds
        
        bucketsViewController.view.layer?.backgroundColor = CGColorCreateGenericRGB(1.0, 0.0, 0.0, 0.0)

    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
}

