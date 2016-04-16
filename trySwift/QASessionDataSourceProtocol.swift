//
//  QASessionDataSourceProtocol.swift
//  trySwift
//
//  Created by Natasha Murashev on 2/11/16.
//  Copyright © 2016 NatashaTheRobot. All rights reserved.
//

protocol QASessionDataSourceProtocol {
    var header: String { get }
    var qaSessions: [QASession] { get }
}
