input = 368078
ordinal = abs(isqrt(input) / 2)
offset = (input - (2 * ordinal -1)^ 2) %(2 * ordinal)
manhattan = num + abs(offset - ordinal)