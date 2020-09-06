//
//  HogeViewControllerTests.swift
//  SampleSnapshotTests
//
//  Created by Jun Morita on 2020/09/05.
//  Copyright © 2020 Jun Morita. All rights reserved.
//

import XCTest
@testable import SampleSnapshot

class HogeViewControllerTests: SnapshotBaseViewControllerTests {

    func testSimpleView() {
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = sb.instantiateInitialViewController() as! ViewController

        snapshot(with: vc.view)
    }

}
