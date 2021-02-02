//
//  main.swift
//  LinkedList
//
//  Created by Biswajyoti Sahu on 17/01/21.
//

import Foundation


// Node creation
let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

print(node1)

// Linked List push and append
var list = LinkedList<Int>()
list.push(value: 1)
list.push(value: 2)
list.push(value: 3)
list.append(value: 4)
print("Push & append --- \(list)")

// Linked list insert
var insertList = LinkedList<Int>()
insertList.push(value: 3)
insertList.push(value: 2)
insertList.push(value: 1)

if let nodePosToInsert = insertList.insert(after: 1) {
    
    for _ in 0...3 {
        
        insertList.insert(value: 4, after: nodePosToInsert)
    }
    print("Insert ---- \(insertList)")
}

// Linked list pop
var popList = LinkedList<Int>()
popList.push(value: 3)
popList.push(value: 2)
popList.push(value: 1)
popList.pop()
print("pop list---- \(popList)")

// Linked list remove last
var removeLastList = LinkedList<Int>()
removeLastList.push(value: 3)
removeLastList.push(value: 2)
removeLastList.push(value: 1)
removeLastList.removeLast()
print("remove last list---- \(removeLastList)")

// Linked list remove at index
var removeAtIndexList = LinkedList<Int>()
removeAtIndexList.push(value: 3)
removeAtIndexList.push(value: 2)
removeAtIndexList.push(value: 1)
removeAtIndexList.remove(at: 2)
print("remove at index list---- \(removeAtIndexList)")

// reverse Linked list
var reverseLinkedList = LinkedList<Int>()
reverseLinkedList.push(value: 3)
reverseLinkedList.push(value: 2)
reverseLinkedList.push(value: 1)
reverseLinkedList.reverse()
print("reverse linked list---- \(reverseLinkedList.head)")
