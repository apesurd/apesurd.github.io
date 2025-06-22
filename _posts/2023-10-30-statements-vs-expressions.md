---
title: Statements vs Expressions
---

> "The difference between the right word and almost the right word is the difference between lightning and a lightening bug." - Mark Twain

Although there should be no ambiguity between statements and expressions in literal terms but, as simple and different it is, I remained ignorant about their implication in the context of programming for a long time. Recently while reading an article about, a recently introduced, walrus operator in python I identified this major blind spot in my understanding of the programming languages. 

Both of these are fundamental concepts in programming languages, and represent different ideas: 
- **Expression**: Combination of values, variables, operators, and function calls that can be evaluated to produce a single value. 
    - Often have a return value, which can be used in other parts of the program. 
    - Examples: 
        - `78 / 2` (evaluates to 39)  
        - `var * 3` (evaluates value of var multiplied by 3)
        - `func(var)` (evaluates to the return value of the `func` with the argument `var`)
- **Statement**: Line of code that performs an action or a sequence of actions in a program. 
    - Are typically instructions that the computer should execute to change the state or a program of to control its flow.
    - Examples; 
        - Assignment statement: `var = 12` (assigns value 12 to the variable `var`)
        - Conditional statement: `if (condition): ...` (executes code based on the condition, condition in this case can be an expression)
        - Loop statement: `for itr in range(limit): ...` (repeats a block of code based on the iterator)

So now taking the above distinctions into consideration, would you categorise `print("Goodbye, world")` as an expression or a statement? 
In python, the function `print` returns `None` (a return value) so I am inclined to call it an expression, but just having a return value does not make something an expression. We should also consider if the return value is being used anywhere else in the program. In our use of `print` it won't. We usually use it to produce an observable side-effect, i.e. to print `"Goodbye, world"` to console. That's perhaps why it's called a print statement, not print expression. 

Now consider `input()` function (in python) that can both print a prompt (a side effect) and return the user's input as a string, making it an expression. Same goes with walrus operator (`:=`), let's consider this example: `(var := 5 * 10)`. First the result of the expression `5*10` (i.e. 50) would be assigned to the variable `var`, and the entire line evaluates to 50 effectively making it an expression, not statement.
Question for you, what would you call this; `var2 = (var1 := 5 * 10)`? 

So, in some programming languages (like python ofcourse), there might be functions or methods that produce a side-effect and return a value too, and thus blurring the line between statements and expressions. However the distinction is still important, as it helps us understand how to use different parts of the programming language effectively and avoid unexpected behavior. 

Peace Yo!
