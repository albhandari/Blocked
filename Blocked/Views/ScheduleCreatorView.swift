//
//  ScheduleCreatorView.swift
//  Blocked
//
//  Created by Alex on 1/29/26.
//

import SwiftUI
import Playgrounds

struct ScheduleCreatorView: View {
    
    @State var scheduleVM: ScheduleVM
    @State var textFieldString: String = ""
    
    var body: some View {
        
        Text("Paste Your JSON Format Schedule Here")
        TextEditor(text: $textFieldString)
            .frame(minHeight: 500, maxHeight: 500)
            .scrollContentBackground(.hidden)
            .padding(8)
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.quaternary)
            )
        Button("Create Schedule") {

        }
        
        Spacer()
    }
}

#Preview {
    ScheduleCreatorView(scheduleVM:ScheduleVM())
}
