//
//  ScheduleCreatorView.swift
//  Blocked
//
//  Created by Alex on 1/29/26.
//

import SwiftUI

struct ScheduleCreatorView: View {
    
    @State var jsonSchedule: String = ""
    
    var body: some View {
        
        Text("Paste Your JSON Format Schedule Here")
        TextEditor(text: $jsonSchedule)
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
    ScheduleCreatorView()
}
