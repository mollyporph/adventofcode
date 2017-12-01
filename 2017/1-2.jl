input = "123"
mapreduce(x -> parse(Int, x), +, 0, input[filter(x -> input[x] === (input * input)[(x + trunc(Int,length(input) / 2)) % end], eachindex(split(input, "")))])