//
//  TaskModel.swift
//  Blocked
//
//  Created by Alex on 1/29/26.
//

import Foundation


struct Task: Identifiable, Codable{
    
    let id: UUID
    let title: String
    let type: String
    let description: String
    let duration: DurationRange
    let depends_on: [String]
    
}

struct DurationRange: Codable{
    
    let min: Int
    let max: Int
}
