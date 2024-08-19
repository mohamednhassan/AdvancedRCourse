(mat <- matrix(sample(c(TRUE, FALSE), 12, replace = TRUE), 3))
### Automatically
num_mat <- as.numeric(mat)

## Changing into numeric
num_mat <- mat + 0


class(mat)


## R knows its a factor when it has 2 attributes


## If we remove an attribute
attr(myfactor, "levels") <- NULL

## is no longer a factor because it is missing an attribute

(today <- Sys.Date())





letters

## Fills in elements by column

matrix(1:12, nrow = 2)
matrix(1:12, nrow = 2, byrow = T)


# 2. Use the dimension attribute to make a function that computes the sum
# of every n successive elements of a vector.
# Ex: 1 2 3 4 5 6 7 8 9 10 -> expected outcome: 3 7 11 15 19

x <- 1:10

function (x, n) 
{
  if (mod <- length(x)%%n) x <- c(x, rep(0, n - mod))
  
  dim(x) <- c(n, length(x)/n)
  colSums(x)
}

# 3. Convert the following matrix to a vector by using the following
# replacement rule for rows:
# (0, 0) -> 0
# (0, 1) -> 1
# (1, 1) -> 2
# (1, 0) -> NA.
(mat <- matrix(0, 10, 2))
mat[c(5, 8, 9, 12, 15, 16, 17, 19)] <- 1
mat


# You have to use the following matrix to do so:
(decode <- matrix(c(0, NA, 1, 2), 2))

rownames(decode) <- colnames(decode) <- c("0", "1")
decode

decode[mat[1, , drop = FALSE] + 1]
# Start by doing it for one row, then by using apply().

chr_mat <- apply(mat, 2, as.character)

# finally replace it by a special accessor; what is the benefit?

## Or simply use this
decode[mat + 1]



if (FALSE) 0 else 1:5





