//
//  ScheduleView.swift
//  Blocked
//
//  Created by Alex on 2/16/26.
//

import SwiftUI
import Combine
struct ScheduleView: View {
    
    @State private var addSchedule: Bool = false
    
    @State var scheduleVM = ScheduleVM()
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Tasks")
                Text(scheduleVM.jsonString)
                Spacer()
                Button("+"){
                    addSchedule.toggle()
                }
            }
            .font(.largeTitle)
            .padding(.horizontal)
        
            Spacer()
        }
        .sheet(isPresented: $addSchedule) {
            ScheduleCreatorView(scheduleVM: scheduleVM)
        }
        
        
        
        
    }
}

#Preview {
    ScheduleView()
}
