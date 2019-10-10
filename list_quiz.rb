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

def three_even(list)
    (list.size - 2).times do |i| # i needed to add a space between the minus sign and a 2 for some reason
        # if list[i..(i+2)] % 2 == 0  # the condensed version of the the command doesn't seem to work 
        if list[i] % 2 == 0 && list[i+1] % 2 == 0 && list[i+2] % 2 == 0 # expanding out the function helps make it work and made it more clear
            return true 
        end
    end
    return false
end

# puts three_even([2,1,3,5]) # false
# puts three_even([2,4,12,5]) # true
# puts three_even([2,1,4,6]) # false
# puts three_even([1,4,6,4]) # true
# puts three_even([]) # false



# def total(list) # since it is only two numbers, it overcomplicates the function 
#     total = 0
#     list.each do |n|
#         total += n
#     end
#     return total
# end

def bigger_two(list, list2)
    if list[0] + list[1] >= list2[0] + list2[1] # I started running the functions within the function, which makes it simpler
        return (list)
    end
    return (list2)
    if list[0] + list[1] == list2[0] + list2[1] # I can't use I becuase this is a list, so I just told it the position of the numbers. 
        return list
    end
        
end

# print bigger_two([1,2], [3,4]) # [3,4]
# print bigger_two([1,7], [4,4]) # [1,7]

def series_up(nums)# did not have time to do this function
    series = 0 # start the list at the right value
    list = [] # the list is empty at the start 
    nums.times do |seq| # Run a loop for the sequence
        n = 0# set it equal to orignal num
        nums.times do |nums|
            list[n+ series] = n + 1
            n += 1
        end

        series += seq  + 1 # exponetial growth 
    end
    return list

end

print series_up(1) # [1]
print series_up(2) # [1,1,2]
print series_up(3) # [1,1,2,1,2,3]
print series_up(4) # [1,1,2,1,2,3,1,2,3,4]