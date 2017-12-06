
inputString = "10 3 15 10 5 15 5 15 9 2 5 8 5 2 3 6"
inputArr = map(x -> parse(Int, x), split(inputString))
l = length(inputArr)
state = []
while(length(unique(state)) == length(state))
    s = sort(map(x -> (x, inputArr[x]), eachindex(inputArr)), by= x -> (x[2], -x[1]), rev=true)[1]
    inc = fill(floor(Int, s[2]/l),l)
    inc[map(x -> mod1(x,l),collect(s[1]+1:s[1]+mod(s[2], l)))]+=1
    inputArr[s[1]] = 0
    inputArr += inc
    push!(state, copy(inputArr))
end


#part 1
println(length(state))

#part 2
println(abs(reduce(-, find(x -> x == state[end], state))))



# explanation:
# while(no duplicates)
# sort the banks by value desc, then by index asc, map them as (index, value) tuples, take the first one
# build an array as long as our input, spread the value from the selected bank across all the indexes
# if we have any remainders, spread them out beginning from current index +1 (s[1]+1) to index (value % lengthOfInput)#
# [mod1 mapping ensures we don't index out of bounds, [3,4,5,6,7] for 4-length input gets converted to [3,4,1,2,3] julia is 1-indexed]
# we then set the current value of the current bank to 0 (inputArr[s[1]] = 0)
# then we add our inc-array to our inputArr (julia does by-index addition for n-dim vectors)
# then we push the current state to the state-array for duplicate checking on next cycle
#part 2
# find all the indexes matching the last value in our state array, reduce them with subtraction and take the abs value (1 - 5 -> 4)

