# def three_even(list)
#     count = 0
#     (list.size -2).times.do|n|
#         if i % 2
#             count += 1
#         end
#     if count == 3
#         return true
#     end
#     return false
# end

# def three_even(list)
#     (list.size -2).times do|n|
#         if list[i..(i+2)] % 2
#             return true
#         else 
#             return false 
#         end
#     end
# end

# three_even([2,4,12,5])



def total(list)
    total = 0
    list.each do |n|
        total += n
    end
    return total
end

def bigger_two(list, list2)
    if total(list) > total(list2)
        return list
    else
        return list2
    end
end

bigger_two([1,2], [3,4])

# def series_up

# end