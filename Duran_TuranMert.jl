#Nested Subprograms Example
println("Nested Subprograms Example")
function outSubProgam(n)
  merhaba = "Selam ben outerda yaratildim"
  function inSubProgram(n)
    println("OutSubProgram variable calling without taking as parameter:")
    println(merhaba)
    println("OutSubrogram's parameter calling with taking as parameter:")
    println(n)
     
  end
  inSubProgram(n)
end
outSubProgam("Selam I am a parameter of outSubProgram")

# Example of Soft Local Scope
println("Example of Soft Local Scope")
x,y = 0, 1
for i = 1:2
    x = i + y
end
println(x)

#Example of Hard Local Scoping
println("Example of Hard Local Scope")
x = 1
function hardScoping()
    #println(x)
    x = 2
    println(x)
end
hardScoping()
println(x)

#Example of Pass By Reference of Mutable Type
println("Example of Pass By Reference of Mutable Type")
function foo(n)
  n[1] = 3
  println(n)
end
x = [1,2]
foo(x)
println(x)

#Example of Pass By Value of Immutable Type
println("Example of Pass By Value of Immutable Type")

function foo(n)
  n = 3
  println(n)
end
x = 1
foo(x)
println(x)

#Example of Keyword Default Value
println("Example of Keyword Default Value")
function defaultParameterExample(x, y, j=4)
    println(j)
end
defaultParameterExample(1,2)
defaultParameterExample(1,2, 5)

#Example Of Closures
println("Example of Closures")
function outsideFunction(y)
    println("Value of x ", y)
    function insideFunction(y)
        println("Value of inside v ", y)
    end
end
 c = outsideFunction(10)
 println("---------Second Call of Function C With Parameter 15----------")
 c(15)
 