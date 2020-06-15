//
//  ViewController.swift
//  LiteChart
//
//  Created by 刘洋 on 2020/6/5.
//  Copyright © 2020 刘洋. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var configure = LiteChartViewParameters(inputDatas: .bar(inputDatas: [(.init(lightColor: .blueViolet), [1, 1, 2, 2]), (.init(lightColor: .hotPink), [1, 1, 2, 2])], coupleTitle: ["橘子", "苹果", "香蕉", "李子"]))
        configure.isShowValueDividingLine = true
        configure.isShowCoupleDividingLine = true
        configure.direction = .leftToRight
        configure.inputLegendTitles = ["山东", "湖北"]
        configure.titleString = "水果产量"
        configure.unitString = "单位:t/h"
        
        do {
            let backgroundView = try LiteChartView(configure: configure)
            self.view.addSubview(backgroundView)
            
            backgroundView.snp.makeConstraints{
                make in
                make.center.equalToSuperview()
                make.width.equalTo(400)
                make.height.equalTo(400)
            }
        } catch(let error) {
            print(error.localizedDescription)
        }
        
    }


}

