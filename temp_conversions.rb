def convert(tempFahrenheit)
    tempCelsius = (tempFahrenheit - 32) * 5.0 / 9.0
    return tempCelsius
end

puts convert(32)
puts convert(50)
puts convert(212)