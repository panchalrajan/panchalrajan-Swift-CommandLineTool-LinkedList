class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
}

class LinkedList<T> {
    var head : Node<T>?
    
    func addNodeAtLast(_ value: T) {
        if head == nil {
            head = Node(value)
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = Node(value)
        }
    }
    
    func addNodeAtFirst(_ value: T) {
        let newNode = Node(value)
        if head == nil {
            head = newNode
        } else {
            newNode.next = head
            head = newNode
        }
    }

    func printList() {
        var current = head
        while current != nil {
            print(current!.value, terminator: "")
            current = current?.next
            if current != nil {
                print("->", terminator: "")
            }
        }
        print()
    }
    
    func printSize() {
        var current = head
        var length = 0
        while current != nil {
            current = current?.next
            length += 1
        }
        print(length)
    }
    
    func printMiddle() {
        if (head == nil || head?.next == nil) {
            print(head?.value as Any)
            return
        }
        var slow = head
        var fast = head
        while (fast?.next != nil || fast?.next?.next != nil) {
            slow = slow?.next
            fast = fast?.next?.next
        }
        print(slow?.value as Any)
    }
}
