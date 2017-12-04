input = "123"
mapreduce((x) -> parse(Int, x.captures[1]), +, 0, collect(eachmatch(r"(\d)\1", input * input[1:1], true)))