# https://leetcode.com/explore/learn/card/linked-list/209/singly-linked-list/1290/

class MyLinkedList

    =begin
        Initialize your data structure here.
    =end
        def initialize()
            @head = nil
        end
    
    
    =begin
        Get the value of the index-th node in the linked list. If the index is invalid, return -1.
        :type index: Integer
        :rtype: Integer
    =end
        def get(index)
            i = 0
            head = @head
            
            while !head.nil? && i < index
                if head.nil?
                    return -1
                else
                    head = head.next
                    i += 1
                end
            end
            
            if head.nil?
                return -1
            else
                return head.val
            end
        end
    
    
    =begin
        Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
        :type val: Integer
        :rtype: Void
    =end
        def add_at_head(val)
            new_head = ListNode.new(val)
            new_head.next = @head
            @head = new_head
        end
    
    
    =begin
        Append a node of value val to the last element of the linked list.
        :type val: Integer
        :rtype: Void
    =end
        def add_at_tail(val)
            new_tail = ListNode.new(val)
            head = @head
            
            if @head.nil?
                @head = new_tail
            else
                while !head.next.nil?
                    head = head.next
                end
                head.next = new_tail
            end
        end
    
    
    =begin
        Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
        :type index: Integer
        :type val: Integer
        :rtype: Void
    =end
        def add_at_index(index, val)
            node = ListNode.new(val)
            if index == 0
                node.next = @head
                @head = node
            else
                i = 0
                head = @head
                while i < index-1
                    if head.nil?
                        return
                    end
                    head = head.next
                    i += 1
                end
                if head.nil?
                    return
                end
                node.next = head.next
                head.next = node
            end
        end
    
    
    =begin
        Delete the index-th node in the linked list, if the index is valid.
        :type index: Integer
        :rtype: Void
    =end
        def delete_at_index(index)
            if @head.nil?
                return
            end
            if index == 0
                @head = @head.next
            else
                i = 0
                head = @head
                while i < index -1
                    if head.nil?
                        return
                    end
                    head = head.next
                    i += 1
                end
                if head.next.nil?
                    return
                end
                head.next = head.next.next
            end
        end
    
    
    end
    
    class ListNode
        attr_accessor :val, :next
        def initialize(val)
            @val = val
            @next = nil
        end
    end
    # Your MyLinkedList object will be instantiated and called as such:
    # obj = MyLinkedList.new()
    # param_1 = obj.get(index)
    # obj.add_at_head(val)
    # obj.add_at_tail(val)
    # obj.add_at_index(index, val)
    # obj.delete_at_index(index)