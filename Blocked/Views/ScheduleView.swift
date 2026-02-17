//
//  ScheduleView.swift
//  Blocked
//
//  Created by Alex on 2/16/26.
//

import SwiftUI

struct ScheduleView: View {
    
    @State private var addSchedule = false
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Tasks")
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
            Text("Testing")
        }
        
        
        
        
    }
}

#Preview {
    ScheduleView()
}
