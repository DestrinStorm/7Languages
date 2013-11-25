module Main where
	statecolour = [(tennessee, mississippi, alabama, georgia, florida) |
		tennessee <- ["red", "blue", "green"],
		mississippi <- ["red", "blue", "green"],
		alabama <- ["red", "blue", "green"],
		georgia <- ["red", "blue", "green"],
		florida <- ["red", "blue", "green"],
		tennessee /= mississippi,
		tennessee /= alabama,
		tennessee /= georgia,
		mississippi /= alabama,
		alabama /= georgia,
		florida /= alabama,
		florida /= georgia]