//
//  Award.swift
//  CustomGridSUI
//
//  Created by Nikita Batrakov on 09.02.2022.
//

import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 150, height: 150)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView().frame(width: 150, height: 150)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 150, height: 150)),
                title: "Curves View",
                awarded: true
            ),
            Award(
                awardView: AnyView(SunView().frame(width: 150, height: 150)),
                title: "Sun View",
                awarded: false
            )
        ]
    }
}
