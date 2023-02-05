//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 권정근 on 2023/02/06.
//

// 반복적으로 사용될 라벨 스타일 지정


import SwiftUI

// 커스텀마이즈가 싫으면 기존에 제공되는 걸 사용해되 됨
struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self {
        Self()
    }
}
