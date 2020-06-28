//
//  AppDelegate.swift
//  cpuinfo
//
//  Created by Yusuke on 6/20/20.
//  Copyright © 2020 Yusuke Shibata. All rights reserved.
//

import Cocoa

@NSApplicationMain
class CpuinfoDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet var statusMenu: NSMenu!
  @IBOutlet var mi_updateInterval: NSMenuItem!
  @IBOutlet var mi_theme: NSMenuItem!
  
  var startAtLogin: Bool
  var showCoresIndividually: Bool
  var showImage: Bool
  var showText: Bool
  
  override init() {
    self.startAtLogin = false;
    self.showCoresIndividually = false;
    self.showImage = true;
    self.showText = true;
  }
  
  @IBAction func updateUpdateInterval(sender: Any) {
  }
  @IBAction func updateTheme(sender: Any) {
  }
  @IBAction func updateShowImage(sender: Any) {
  }
  @IBAction func updateShowText(sender: Any) {
  }
  @IBAction func updateStartAtLogin(sender: Any) {
  }
  @IBAction func launchActivityMonitor(sender: Any) {
  }  
  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
  }
  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }
}

