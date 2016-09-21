printprimes = function(a) {
	for (i in 1:a) {
		if (i == 1) {
			print(i)
		}
		else {
			k = TRUE
			for (j in 2:as.integer(sqrt(i) + 0.5)) {
				if (i %% j == 0) {
					k = FALSE
					break
				}
			}
			if (k) {
				print(i)
			}
		}
	}
}

myString = "Hello, World!"
print(myString)

ptm = proc.time()

a = printprimes(100)
ptm2 = proc.time() - ptm

print(ptm2)