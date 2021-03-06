//
//  LiteChartInterface.swift
//  LiteChart
//
//  Created by 刘洋 on 2020/10/9.
//  Copyright © 2020 刘洋. All rights reserved.
//

import Foundation

/// Protocol that all chart interface files should meet.
public protocol LiteChartInterface {
    var parametersProcesser: LiteChartParametersProcesser { get }
}
