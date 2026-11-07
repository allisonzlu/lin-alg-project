A = matrix(GF(2), [
    [1,1,0,1,0,0,0,0,0],
    [1,1,1,0,1,0,0,0,0],
    [0,1,1,0,0,1,0,0,0],
    [1,0,0,1,1,0,1,0,0],
    [0,1,0,1,1,1,0,1,0],
    [0,0,1,0,1,1,0,0,1],
    [0,0,0,1,0,0,1,1,0],
    [0,0,0,0,1,0,1,1,1],
    [0,0,0,0,0,1,0,1,1]
])

print("RREF of A?")
print(A.echelon_form())
print("Rank?", A.rank())
print("Invertibile?", A.is_invertible()) #true/false

#initial board has only top left light on
b = vector(GF(2), [1,0,0,0,0,0,0,0,0])
x = A.solve_right(b)

print("Solution vector?", x) #buttons to press to win the game
print("Which buttons to press?", [i+1 for i in range(9) if x[i] == 1])
print("Does Ax=b?", A*x == b)