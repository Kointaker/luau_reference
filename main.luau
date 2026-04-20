-- Luau Practice File





-- Basics
print("\n\nBasics:\n")
local x = 10
local y = 10

-- 10 plus 10
print(x + y)

-- String concatenation
local one = "one"
local two = "two"
print(one .. two)

-- substring
local value = "Hello World!"
print(string.sub(value, 1, 5)) -- Output: Hello

-- Assigning a variable without a value
--Defaults to nil
local importantvariable
print(importantvariable) -- Output: nil

print("\nBooleans and Comparisons:\n")
-- Booleans, and comparing values within variables
local booleanValue = true
print(booleanValue) -- Output: true
local booleancomparision = 7 < 1
print(booleancomparision) -- Output: false

-- is 7 not equal to eight
local numvar = 7 ~= 8
print(numvar) -- Output: true






print("\nIf Statements and Functions:\n")
-- if statements
if true then
    print("This will always print")
    print("Because the condition is always true")
end
-- if statements need end statements to close them

if 1 > 2 then
    print("This will never print")

else
    print("This will always print because the condition is false")
end

if 1 > 2 then
    print("This will never print")
elseif 2 > 1 then 
    print("2 is greater than 1")
else
    print("that's false")
end

-- Operators: and, or, not

-- <=, >=, <, > can only compare numbers and strings
-- ==, ~= can compare all data types






print("\nFunctions:\n")
-- Functions
local function makeup()
    print("I made this up")

end

makeup()

local mandela = function()
    print("I feel it")
end
mandela()

local function adding(a, b)
    return a + b
end
print(adding(5, 3))
local result = adding(10, 20)
print(result) -- Output: 30

function example()
    return 20
end

local num1, num2 = example()
print(num1, num2)






print("\nTables:\n")
-- Tables
-- Luau starts from 1 instead of 0 like most programming languages
local ourTable = {12, "text"}
print(ourTable[2])
print(ourTable)
print(ourTable[3])
ourTable[3] = "new value"
print(ourTable[3])

-- Turning Table value into nil
ourTable[2] = nil
print(ourTable[2]) -- Output: nil

-- Removing values from table completely
table.remove(ourTable, 2)
print(ourTable[2]) -- Output: nil

-- Removing last value from the table
-- Printing #NameOfTable will print the number of values in the table
print(#ourTable) -- Output: 2
local newTable = {10, "text", false}
newTable[#newTable] = nil
print(newTable[3]) -- Output: nil


print("\nTables: Continued\n")
-- Index can also be replaced with keys
local table = {12, "text", false}
table["UniqueKey"] = "New Item!"
print(table["UniqueKey"])
print(#table) -- Output: 3  
-- The length operator only counts indexed values, not key-value pairs
-- OR
table.NewKey = "Woah"
print(table.NewKey)

local example1 = {12, UniqueKey = "Hi", }
-- OR
local example2 = {
    12,
    ["UniqueKey"] = "Hi"
}
-- Removing Key-value pairs: Table[key] = nil






print("\nLoops:\n")
-- Loops


-- For Loops
-- Numbers: Start, Stop, Step (i = 1, when i >= 10 stop, every time loop is done, i += 1)
for i = 1, 10, 1 do
    print("Loop")
end

for i = 1, 10, 2 do
    print(i)
end

-- Printing contents of table:
local ourTable = {
    "string",
    12,
    7,
    10,
    false
}

for i, item in ourTable do
    print(item)
end

print("\n")
-- Printing tables with key-values
local table = {
    UniqueKey = "New Item!",

    12,
    "text",
    false
}

for i, item in table do
    print(i)
end
-- i prints the keys last, after the indexes
print("\n")
for i, item in ipairs(table) do
    print(i)
end
-- Only prints indexed values, not key-value pairs in a table






print("\nWhile Loops:\n")
-- While Loops

-- while true do
--     print("This is an infinite loop")
-- end

local count = 6

while count > 1 do
    print("This is looping!")
    count = count - 1
end


print("\nRepeat Loops:\n")
-- Repeat loops
-- repeat
--     print("This will always run at least once")
-- until true
-- This is an infinite loop

-- repeat loops: Condition is checked at the end of each iteration
-- print, then check
-- Loop breaks when condition becomes true

-- While Loops: Condition is checked at the beginning of each iteraion
-- Check, then if applicable print
-- Loop breaks when condition becomes false






print("\nRecursion:\n")
-- Recursion
-- local function recursion()
--     print("This is a recursive function")
--     recursion()
-- end

-- recursion()
-- Infinite Loop

local function countdown(n)
    print(n)
    if n > 1 then
        countdown(n - 1)
    end

end

countdown(8)
-- Calls countown in of itself while the number n goes down






print("\n DFS and BFS (Traversing Nested Tables):\n")
-- Depth First Search & Breadth First Search (Traversing nested tables in general)

local data = {1, 2, {3, 4, {5, 6}}, 7}

local function printNumbers(value)
    if typeof(value) == "table" then
        for i, item in value do
            printNumbers(item)
        end
    else
        print(value)
    end
end

printNumbers(data)

-- print(coroutine.status(co1)) Returns Suspended (Hasn't resumed yet)
-- coroutine.resume(co1)
-- print(coroutine.status(co1)) Returns Dead (Has already run and finished (if co1 is only called once))

local co1 = coroutine.create(function()
print("Hello World!")
  end)


