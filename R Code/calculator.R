add <- function(x,y){
  return(x+y)
}

sub <- function(x,y){
  return(x-y)

}


mul <- function(x,y){
  return(x*y)
}

div <- function(x,y){
  return(x/y)
}

factors <- function(x){
  if(choice <= 5){
    choice <- readline(prompt = "enter no. : ")
    print(paste("The factors of", x, "are :"))
    for  (i in 1:x){
      if ((x %% i) == 0){
        print(i)
      }
    }
  }
}

print("***calculator*****")
print("1.add")
print("2.sub")
print("3.mul")
print("4.div")

choice = as.integer(readline(prompt = "Enter choice 1/2/3/4"))

num1 = as.integer(readline(prompt("enter first num")))
num2 = as.integer(readline(prompt("enter second num")))

operator <- switch(choice,"+","-","*","/")

result <- switch (choice, add(num1,num2), sub(num1,num2), mul(num1,num2), div(num1,num2), factors(i))

print(paste(num1, operator, num2, "=", result))


