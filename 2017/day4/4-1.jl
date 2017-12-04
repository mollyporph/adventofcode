input = """
spjb xkkak anuvk ejoklh nyerw bsjp zxuq vcwitnd xxtjmjg zfgq xkpf
juo pmiyoh xxk myphio ogfyf dovlmwm moevao qqxidn"""

count(x -> length(split(x, " ")) == length(unique(split(x, " "))), split(input,"\n"))