local bit = {}

bit.band = function(a, b)
    local result = 0
    local bitval = 1
    while a > 0 and b > 0 do
        if a % 2 == 1 and b % 2 == 1 then
            result = result + bitval
        end
        bitval = bitval * 2
        a = math.floor(a/2)
        b = math.floor(b/2)
    end
    return result
end

bit.bor = function(a, b)
    local result = 0
    local bitval = 1
    while a > 0 or b > 0 do
        if a % 2 == 1 or b % 2 == 1 then
            result = result + bitval
        end
        bitval = bitval * 2
        a = math.floor(a/2)
        b = math.floor(b/2)
    end
    return result
end

bit.bxor = function(a, b)
    local result = 0
    local bitval = 1
    while a > 0 or b > 0 do
        if (a % 2) ~= (b % 2) then
            result = result + bitval
        end
        bitval = bitval * 2
        a = math.floor(a/2)
        b = math.floor(b/2)
    end
    return result
end

bit.lshift = function(a, n)
    return a * (2 ^ n)
end

bit.rshift = function(a, n)
    return math.floor(a / (2 ^ n))
end

return bit