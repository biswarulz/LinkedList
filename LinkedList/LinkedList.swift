//
//  LinkedList.swift
//  LinkedList
//
//  Created by Biswajyoti Sahu on 17/01/21.
//

import Foundation

struct LinkedList<Value> {
    
    var head: Node<Value>?
    var tail: Node<Value>?
    
    init() { }
    
    func isEmpty() -> Bool {
        
        head == nil
    }
}

extension LinkedList: CustomStringConvertible {
    
    var description: String {
        
        guard let head = head else {
            
            return "empty list"
        }
        return String(describing: head)
    }
}

extension LinkedList {
    
    mutating func push(value: Value) {
        
        head = Node(value: value, next: head)
        if tail == nil {
            
            tail = head
        }
    }
    
    mutating func append(value: Value) {
        
        guard !isEmpty() else {
            
            push(value: value)
            return
        }
        tail?.next = Node(value: value, next: nil)
        tail = tail?.next
    }
    
    mutating func insert(after index: Int) -> Node<Value>? {
        
        var currentNode = head
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            
            currentNode = currentNode?.next
            currentIndex += 1
        }
        
        return currentNode
    }
    
    @discardableResult
    mutating func insert(value: Value, after node: Node<Value>) -> Node<Value>? {
        
        let newNode = Node(value: value, next: node.next)
        node.next = newNode
        
        if node === tail {
            
            tail = newNode
        }
        
        return newNode
    }
}

extension LinkedList {
    
    mutating func pop() {
        
        guard !isEmpty() else {
            
            return
        }
        if head?.next == nil {
            
            head = head?.next
        }
        head = head?.next
    }
    
    mutating func removeLast() {
        
        guard !isEmpty() else {
            
            return
        }
        if head === tail {
            
            pop()
        }
        var prevNode = head
        var currNode = prevNode
        
        while currNode?.next != nil {
            
            prevNode = currNode
            currNode = currNode?.next
        }
        
        prevNode?.next = currNode?.next
        tail = prevNode
    }
    
    @discardableResult
    mutating func remove(at index: Int) -> Node<Value>? {
        
        var currentNode = head
        var prevNode = currentNode
        var currentIndex = 0
        
        while currentNode != nil && currentIndex < index {
            
            prevNode = currentNode
            currentNode = currentNode?.next
            currentIndex += 1
        }
        prevNode?.next = currentNode?.next
        if tail === currentNode {
            
            tail = prevNode
        } else if head === currentNode {
            
            head = currentNode?.next
        }
        return currentNode
    }
    
    mutating func reverse() {
        
        var currentNode = head
        var nextNode = currentNode?.next
        var previousNode: Node<Value>?
        
        while nextNode != nil {
            
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
            nextNode = currentNode?.next
        }
        currentNode?.next = previousNode
        head = currentNode
    }
}
