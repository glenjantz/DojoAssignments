import re
def get_matching_words(regex):
 words = ["aimlessness", "assassin", "baby", "beekeeper", "belladonna", "cannonball", "crybaby", "denver", "embraceable", "facetious", "flashbulb", "gaslight", "hobgoblin", "iconoclast", "issue", "kebab", "kilo", "laundered", "mattress", "millennia", "natural", "obsessive", "paranoia", "queen", "rabble", "reabsorb", "sacrilegious", "schoolroom", "tabby", "tabloid", "unbearable", "union", "videotape"]
 matches = []
 for word in words:
 	if re.search(regex,word):
 		matches.append(word)
 return matches
print get_matching_words("v")
print get_matching_words("ss")
print get_matching_words("e$")
print get_matching_words("b.b")
print get_matching_words("b+b")
print get_matching_words("b.*b")
print get_matching_words(".*a.*e.*i.*o.*u.*")
print get_matching_words("[A-Za-z]+")
print get_matching_words(r"(.)\1")
