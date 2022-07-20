
#!/usr/bin/bash
#trying to  assign a value to a variable
String="hello"
echo $String
function learnFunction {
     local String="Je suis dans ma fonction"
     echo $String
 }
learnFunction
