import ArgumentParser

struct LinkedListTool: ParsableCommand {
    @Argument(help: "Add a value to the linked list")
    var values: [Int]
    @Flag(name: .short, help: "Normal Order") var normalOrder = false
    @Flag(name: .short, help: "Reverse Order") var reverseOrder = false
    @Flag(name: .short, help: "Size of LinkedList") var size = false
    @Flag(name: .short, help: "Middle of LinkedList") var middle = false
    
    mutating func run() throws {
        let list = LinkedList<Int>()
        if normalOrder {
            for value in values {
                list.addNodeAtLast(value)
            }
            list.printList()
        }
        if reverseOrder {
            for value in values {
                list.addNodeAtFirst(value)
            }
            list.printList()
        }
        if size {
            for value in values {
                list.addNodeAtLast(value)
            }
            list.printSize()
        }
        if middle {
            for value in values {
                list.addNodeAtLast(value)
            }
            list.printMiddle()
        }
        
        
    }
}

LinkedListTool.main()
