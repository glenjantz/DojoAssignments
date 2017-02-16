def change(cents):
    coins = {}
    dollars = 0
    half_dollars = 0
    quarters = 0
    dimes = 0
    nickels = 0
    while cents >= 100:
        dollars = dollars + 1
        cents = cents -100
    while cents >= 50:
        half_dollars = half_dollars + 1
        cents = cents -50
    while cents >= 25:
        quarters = quarters + 1
        cents = cents - 25
    while cents >= 10:
        dimes = dimes + 1
        cents = cents - 10
    while cents >= 5:
        nickels = nickels + 1
        cents = cents - 5
    coins["dollars"] = dollars
    coins["half_dollars"] = half_dollars
    coins["quarters"] = quarters
    coins["dimes"] = dimes
    coins["nickels"] = nickels
    coins["pennies"] = cents
    return coins
print change(577)
