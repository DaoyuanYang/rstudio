library(rmarkdown)
library(knitr)
?render()
render("test.Rmd",
       output_format = "github_document",
       output_file = "test.md")
write.csv(mtcars, "data.csv", row.names = TRUE)

# Files
getwd()
files <- list.files()
files[1]
class(files)
plot(mtcars)

# read in text file
dt <- read.table("text.txt")
class(dt)
# [row id, col id]
dt[, 1]
dt[1, 1] <- 10
class(dt[, 1])
colnames(dt)
colnames(dt) <- c("time")
dt
id <- c(1:14)
dt <- cbind(dt, id)
rownames(dt) <- letters[1:14]

# 2d array
id_mat <- matrix(1:14,
       ncol = 1)
id_df <- data.frame(
  "time" = 1:14,
  "id" = 1:14
)
rbind(dt, id_df)
