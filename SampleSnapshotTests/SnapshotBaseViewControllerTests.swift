//
//  SnapshotBaseViewControllerTests.swift
//  SampleSnapshotTests
//
//  Created by Jun Morita on 2020/09/05.
//  Copyright © 2020 Jun Morita. All rights reserved.
//

import XCTest
@testable import SampleSnapshot
import FBSnapshotTestCase

class SnapshotBaseViewControllerTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        self.recordMode = true
        folderName = String(describing: type(of: self)).replacingOccurrences(of: "Tests", with: "")
        
        // NOTE: deviceオプションは"iPhone"としか取れなかったので却下
        fileNameOptions = [.screenSize, .screenScale]
    }

    func snapshot(with view: UIView) {
        FBSnapshotVerifyView(view)
    }

}
