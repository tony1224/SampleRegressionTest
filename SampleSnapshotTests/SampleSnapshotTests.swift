//
//  SampleSnapshotTests.swift
//  SampleSnapshotTests
//
//  Created by Jun Morita on 2020/09/05.
//  Copyright © 2020 Jun Morita. All rights reserved.
//

import XCTest
@testable import SampleSnapshot
import FBSnapshotTestCase

class SampleSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        self.recordMode = true
        folderName = "SampleSnapshotTests"
        // NOTE: deviceオプションは"iPhone"としか取れなかったので却下
        fileNameOptions = [.screenSize]
    }
    
    func testSimpleView() {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = sb.instantiateInitialViewController() as! ViewController
        FBSnapshotVerifyView(vc.view)
    }

}
