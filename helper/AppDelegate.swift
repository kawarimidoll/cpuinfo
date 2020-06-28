//
//  AppDelegate.swift
//  helper
//
//  Created by Yusuke on 6/20/20.
//  Copyright © 2020 Yusuke Shibata. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    let bundlePath = Bundle.main.bundlePath;
    let appPath = NSURL.fileURL(withPath: bundlePath).pathComponents.dropLast(4).joined(separator: "/");
    // get to the waaay top. Goes through LoginItems, Library, Contents, Applications
    NSWorkspace.shared.launchApplication(appPath);
    NSApplication.shared.terminate(self);
  }
  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }
}

