# wordle
Reverse Engineering the Wordle Algorithm!


There is some analysis on the the words that NYT removed.

There are 2309 possible solutions that the NYT chooses from, and there are 10638 possible words you can enter for your guesses.

There are 2315 possible solutions that the original Wordle (powerlanguage) chooses from, and there are 10657 possible words you can enter for your guesses.

NYT removed 6 possible solutions and 19 possible words. 

Some of those words are vulgar. To see those words, run the R script, then run `nyt_rem_soln` to see the 6 possible solutions, and `nyt_rem_accept` to see the 19 possible words.


---

To see what the word will be on a certain day, (assuming NYT doesn't change their list...), run the `word` function in your console, with the input being in the format `"YYYY-MM-DD"`


-- 

This was a fun side project! Credits to my TA Edouardo Honig!
