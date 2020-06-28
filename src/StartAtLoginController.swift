//
//  StartAtLoginController.swift
//  cpuinfo
//
//  Created by Yusuke on 6/20/20.
//  Copyright © 2020 Yusuke Shibata. All rights reserved.
//

import Cocoa
import ServiceManagement

class StartAtLoginController: NSObject {
  var enabled: Bool!
  let identifier: String;
  
  init(_identifier: String) {
    identifier = _identifier;
    super.init();
    updateEnabled();
  }
  private func updateEnabled() {
    enabled = NSWorkspace.shared.runningApplications.contains {
      $0.bundleIdentifier == identifier
    }
  }
  func setEnabled(enabled: Bool) {
    SMLoginItemSetEnabled(identifier as CFString, enabled);
    updateEnabled();
  }
}
