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

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p  my_min(list)  # =>  -5



