//
//  SunView.swift
//  Lesson#6SwiftUI
//
//  Created by Nikita Batrakov on 07.02.2022.
//

import SwiftUI

struct SunView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            
            RadialGradient(
                gradient: Gradient(
                    colors: [
                        .white,
                        .yellow,
                        .orange,
                        .red
                    ]
                ),
                center: UnitPoint(x: 0.5, y: 0.9),
                startRadius: middle,
                endRadius: height * 0.9
            )
            Path { path in
                path.addArc(
                    center: CGPoint(x: width / 2, y: height * 0.95),
                    radius: middle * 0.95,
                    startAngle: .zero,
                    endAngle: .degrees(180),
                    clockwise: true)
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.yellow, .orange, .red]),
                    center: UnitPoint(x: 0.5, y: 1),
                    startRadius: .zero,
                    endRadius: 150
                )
            )
            Path { path in
                path.move(to: CGPoint(x: 0, y: height * 0.95))
                
                for x in stride(from: 0, to: Double(width), by: 1) {
                    let y = (sin(x / (Double(width) / Double(width) * 4.25))) * 5 + Double(height * 1.9) / 2
                    path.addLine(to: CGPoint(x: x, y: y))
                }
            }
            .stroke(
                LinearGradient(
                    colors: [
                        .gray,
                        .red,
                        .orange,
                        .yellow,
                        .orange,
                        .red,
                        .gray
                    ],
                    startPoint: UnitPoint(x: 0, y: 0.8),
                    endPoint: UnitPoint(x: 1, y: 0.8)
                ),
                lineWidth: 10
            )
        }
    }
}

struct SunView_Previews: PreviewProvider {
    static var previews: some View {
        SunView()
            .frame(width: 200, height: 200)
            .previewDevice("iPhone 11")
    }
}
