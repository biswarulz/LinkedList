//
//  Node.swift
//  LinkedList
//
//  Created by Biswajyoti Sahu on 17/01/21.
//

import Foundation

class Node<Value> {
    
    let value: Value
    var next: Node?
    
    init(value: Value, next: Node? = nil) {
        
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    
    var description: String {
        
        guard let next = next else {
            
            return "\(value)"
        }
        
        return "\(value) ->" + String(describing: next) + " "
    }
}
