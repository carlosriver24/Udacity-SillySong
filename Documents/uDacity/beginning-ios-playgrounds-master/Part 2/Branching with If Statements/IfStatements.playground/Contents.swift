//: ## If Statements
// Some functions to execute under different conditions
func goEat() {
    print("nom nom")
}

func buyTeddy() {
    print("snuggle snuggle")
}

func watchAMovie(){
    print("Ryan Gosling! Be still my heart!")
}

// Example 1
var hungry = true

if hungry {
    goEat()
}

// Example 2
var wantTeddyBear = true
var haveMoney = true
if wantTeddyBear && haveMoney {
    buyTeddy()
}

//Example 3
var raining = true
if raining {
    watchAMovie()
}
