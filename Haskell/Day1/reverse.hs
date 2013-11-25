module Main where
	reverselist :: [a] -> [a]
	reverselist x = revlist x []
	revlist [] x = x
	revlist (h:t) x = revlist t (h:x)