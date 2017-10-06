# print (1..255).find_all { |i| i%2==1 }


# sum = 0
# (1..255).each { |i| puts sum += i }


# x = [1,3,5,7,9,13]
# x.each { |i| puts i }


# x = [1,3,5,-7,9,13]
# sum = 0
# x.each { |i| sum += i } 
# avg = sum/x.length
# puts avg

# p y = (1..255).find_all { |i| i%2==1 }


# y = 3
# arr = [1,3,5,7,9,-2,-4]
# p arr.find_all { |i| i>y }.length


# arr = [1,3,5,7,9,-2,-4]
# p arr.collect { |i| i*i }


# arr = [1,3,-5,7,9,-2,-4]
# p arr.find_all { |i| i>0 }


# arr = [1,3,-5,7,9,-2,4]
# max=arr[0]
# min=arr[0]
# avg=arr[0]
# sum=0
# arr.each { |i| 
# if i>max then max=i
# elsif i<min then min=i end
# if i then sum+=i end }
# p max,min, sum.to_f/arr.length


# arr = [1,3,-5,7,9,-2,4]
# for i in (0).upto(arr.length-1)
#     arr[i]=arr[i+1]
#     if arr[i] == nil
#         then arr[i]=0
#     end
# end
# p arr


# arr = [1,3,-5,7,9,-2,4]
# for i in (0).upto(arr.length-1)
#     if arr[i]<0
#         then arr[i]="Dojo"
#     end
# end
# p arr

arr = [1,3,-5,7,9,-2,4]
(0..arr.length-1).each { |i| if arr[i]<0 then arr[i]="Dojo" end }
p arr