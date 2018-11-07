# Determine whether a doubly linked list is a palindrome. What if it’s singly linked?
# For example, 1 -> 4 -> 3 -> 4 -> 1 returns true while 1 -> 4 returns false.

# O(N/2)
def doubly_palindrome(doubly_linked_list)
  left_item = doubly_linked_list.first
  right_itme = doubly_linked_list.last
  comparison_count = doubly_linked_list.length / 2

  return true if comparison_count < 1

  comparison_count.times do
    return false if left_item.value != right_item.value
    right_item = right_item.next
    left_item = left_item.previous
  end

  return true
end

# O(N)
def singly_palindrome(singly_linked_list)
  comparison_count = doubly_linked_list.length / 2
  item = singly_linked_list.first
  value_stack = []

  return true if comparison_count < 1

  comparison_count.times do
    value_stack.push(item.value)
    item = item.next
  end

  item = item.next if doubly_linked_list.length.odd?

  comparison_count.times do
    left_value = value_stack.pop()
    return false if left_value != item.value
    item = item.next
  end

  return true
end
