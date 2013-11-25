module Main where
	pairedcolours = [(a,b) | a <- ["black", "white", "blue", "yellow", "red"], b <- ["black", "white", "blue", "yellow", "red"], a < b ]
	