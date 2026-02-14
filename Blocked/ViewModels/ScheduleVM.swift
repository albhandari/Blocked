//
//  ScheduleVM.swift
//  Blocked
//
//  Created by Alex on 2/14/26.
//

import Foundation
import Observation
import Playgrounds

@Observable
class ScheduleVM{
    
    var jsonString: String = ""
    var tasks: [Task] = []
    
    
    
    func JSONtoScheduleObj(){
        guard let jsonData = jsonString.data(using: .utf8) else {
            fatalError("Invalid JSON string")
        }
        
        if let tasks = try? JSONDecoder().decode([Task].self, from:jsonData){
            self.tasks = tasks
        }
        else{
            fatalError("Error converting to [Task] Object")
        }
        
    }
    
}

#Playground {
    
    let vm = ScheduleVM()
    vm.jsonString = """
    [
      {
        "id": "A1E8B6A4-3B8E-4F1A-9D0E-001A1C001001",
        "title": "Play Guitar",
        "type": "regulation",
        "description": "Regulate nervous system and enter presence",
        "duration": {
          "min": 15,
          "max": 30
        },
        "depends_on": []
      },
      {
        "id": "A1E8B6A4-3B8E-4F1A-9D0E-001A1C001002",
        "title": "Walk Outside",
        "type": "presence",
        "description": "Anchor attention in the environment",
        "duration": {
          "min": 10,
          "max": 30
        },
        "depends_on": []
      }
    ]
    """
    
    vm.JSONtoScheduleObj()
    print(vm.tasks)
}



