library(readr)
nyt_wordle_soln <- read_csv("nyt_wordle_soln.txt", col_names = FALSE)
nyt_wordle_soln[1] = "cigar" 
nyt_wordle_soln[length(nyt_wordle_soln)] = "shave"

nyt_accept <- read_csv("nyt_wordle_accept_guesses.txt", col_names = FALSE)
nyt_accept[1] <- "aahed"
nyt_accept[length(nyt_accept)] <- "zymic"


old_wordle_soln <- read_csv("old_wordle_soln.txt", col_names = FALSE)
old_wordle_soln[1] = "cigar"
old_wordle_soln[length(old_wordle_soln)] = "shave"


old_accept <- read_csv("old_world_accept_guesses.txt", col_names = FALSE)
old_accept[1] <- "aahed"
old_accept[length(old_accept)] <- "zymic"


nyt_rem_soln <- old_wordle_soln[!(old_wordle_soln %in% nyt_wordle_soln)]
nyt_rem_accept <- old_accept[!(old_accept %in% nyt_accept)]

wordle_rem_soln <- nyt_wordle_soln[!(nyt_wordle_soln %in% old_wordle_soln)]
wordle_rem_accept <- nyt_accept[!(nyt_accept %in% old_accept)]

word <- function(input) {
  dodge_num <- which(nyt_wordle_soln == "dodge")
  dodge_day <- as.numeric(as.Date("2022-02-18"))
  nyt_wordle_soln[as.numeric(as.Date(input)) - dodge_day + dodge_num]
}
