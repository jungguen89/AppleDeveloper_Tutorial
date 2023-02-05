//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 권정근 on 2023/02/05.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            // VoiceOver 라는 기능은 systemImage 를 그대로 읽는 것을 무시하도록 함
            .accessibilityElement(children: .ignore)
            // 공통으로 설명할 수 있는 문구 지정
            .accessibilityLabel("Time remaining")
            // 남은 시간 지정
            .accessibilityValue("10 minuties")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
