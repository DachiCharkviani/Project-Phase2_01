def convert(temp, measure='F')
    if measure != "C" then
        return "Temperature must be an integer" if temp.class != Integer
        return "Temperature is below absolute zero" if below_absolute_zero?(temp, measure)
        tempCelsius = (temp - 32) * 5.0 / 9.0
        return tempCelsius
    else
        return "Temperature must be an integer" if temp.class != Integer
        return "Temperature is below absolute zero" if below_absolute_zero?(temp, measure)
        tempFahrenheit = ((temp * 9.0) / 5.0) + 32
        return tempFahrenheit
    end
end

def below_absolute_zero?(temp, measure)
    if measure != "C" then
        if temp < -474 then 
            return true
        else 
            return false
        end
    else
        if temp < -273.15 then 
            return true 
        else 
            return false end
        end
    end

puts convert(32)
puts convert(50)
puts convert(212)
puts convert("zero")
puts convert(-500)

puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")
