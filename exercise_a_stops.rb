stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# 1. Add `"Edinburgh Waverley"` to the end of the array
stops.push("Edinburgh Waverley")
p stops

# 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")
p stops

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4, "Polmont")
p stops

# 4. Work out the index position of `"Linlithgow"`

# Hard way
# linlithgow_index = 0
# for stop in stops
#   if stop == "Linlithgow"
#     break
#   else
#     linlithgow_index += 1
#   end
# end
#
# p "Index position of Linlithgow is " + linlithgow_index.to_s()

#Easy way
p "Index position of Linlithgow is " + stops.index("Linlithgow").to_s()



# 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")
p stops

# 6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(2)
p stops

# 7. How many stops there are in the array?
p "Total stops are " + stops.length().to_s

# 8. How many ways can we return `"Falkirk High"` from the array?
p stops[2] + " returned by positive index"
p stops[-5] + " returned by negative index"
p stops.at(2) + " returned by using .at method"
p stops[2..2].to_s()  + " returned by index range"
p stops[2..-5].to_s() + " returned by another index range"
p stops[2, 1].to_s() + " returned by yet another index range"


# 9. Reverse the positions of the stops in the array
p stops.reverse!
#p stops

# 10. Print out all the stops using a for loop
for stop in stops
  p stop
end
