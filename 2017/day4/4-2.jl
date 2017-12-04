input = """
cbok koumkad otpozb pqcs emilpe wpcyvxd bock
spjb xkkak anuvk ejoklh nyerw bsjp zxuq vcwitnd xxtjmjg zfgq xkpf
juo pmiyoh xxk myphio ogfyf dovlmwm moevao qqxidn"""

count(x -> length(x) == length(unique(x)), map(x2 -> map(x3 -> convert(String, sort(convert(Array{Char,1},x3))), x2), map(x -> split(x, " "), split(input,"\n"))))
