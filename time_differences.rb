####PHASE 1
## O n^2



# def my_min(arr)

#     result = arr.first  # 0

#     arr.each do |ele| #ele is 0

#         arr.each do |el|
#             result = el if el < ele && result > el
#             # ele < el ? result = ele : result = ele
#         end


#     end
#     result
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p  my_min(list)  # =>  -5


#PHASE 2

def my_min(arr)

    arr.inject {|acc, num|  num < acc ? num : acc }

end



def largest_contiguous_subsum_1(list)
    subs = []

    (0...list.length).each do |i1|
        (0...list.length).each do |i2|
            subs << list[i1..i2] if i2 >= i1
        end
    end
    subs.map(&:sum).max
end


def largest_contiguous_subsum(list)
    current_sum = 0
    max_sum = 0

    return list.max if list.all?{|num| num < 0} 

    list.each do |num|
        current_sum + num > 0 ? current_sum += num : current_sum = 0
        max_sum = current_sum if current_sum > max_sum
    end

    max_sum
end

list_1 = [5, 3, -7]
p largest_contiguous_subsum(list_1) # => 8

list_2 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list_2) # => 8 (from [7, -6, 7])

list_3 = [-5, -1, -3]
p largest_contiguous_subsum(list_3) # => -1 (from [-1])

list_4 = [54, -16, -1, 20, 56]
p largest_contiguous_subsum(list_4) # => -1 (from [-1])
