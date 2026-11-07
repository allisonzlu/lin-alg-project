A_original = matrix(GF(2), [
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

for n in [3, 5]:
    A = matrix(GF(2), n*n, n*n)

    for i in range(n*n):
        A[i,i] = 1
        if i >= n:
            A[i-n,i] = 1
        if i < n*(n-1):
            A[i+n,i] = 1
        if i % n != 0:
            A[i-1,i] = 1
        if i % n != n-1:
            A[i+1,i] = 1

    print("Board:", n, "x", n)
    if n == 3:
        print("Does the code correctly generate original 9x9 matrix?", A == A_original)
    print("RREF:")
    print(A.echelon_form())
    print("Rank:", A.rank())
    #rank nulity equation
    print("Nullity:", n*n - A.rank())