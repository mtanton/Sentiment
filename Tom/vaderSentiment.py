from nltk.sentiment.vader import SentimentIntensityAnalyzer
from nltk import tokenize

# if you receive an error telling you to download vader_lexicon
# use the following line in the command prompt
# >python -m nltk.downloader vader_lexicon


# simple sentences
sentences = ["VADER is smart, handsome, and funny.", \
             "VADER is smart, handsome, and funny!", \
             "VADER is very smart, handsome, and funny.", \
             "VADER is VERY SMART, handsome, and FUNNY.",\
             "VADER is VERY SMART, handsome, and FUNNY!!!",\
             "VADER is VERY SMART, really handsome, and INCREDIBLY FUNNY!!!",\
             "The book was good.",\
             "The book was kind of good.",\
             "The plot was good, but the characters are uncompelling and the dialog is not great.",\
             "A really bad, horrible book.",\
             "At least it isn't a horrible book.",\
             ":) and :D",\
             "",\
             "Today sux",
             "Today sux!",\
             "Today SUX!",\
             "Today kinda sux! But I'll get by, lol"]

# paragraph example
paragraph = "It was one of the worst movies I've seen, despite good reviews. \
Unbelievably bad acting!! Poor direction. VERY poor production. \
The movie was bad. Very bad movie. VERY bad movie. VERY BAD movie. VERY BAD movie!"


lines_list = tokenize.sent_tokenize(paragraph)
sentences.extend(lines_list)

tricky_sentences = ["Most automated sentiment analysis tools are shit.",\
                    "VADER sentiment analysis is the shit.",\
                    "Sentiment analysis has never been good.",\
                    "Sentiment analysis with VADER has never been this good.",
                    "Warren Beatty has never been so entertaining.",
                    "I won't say that the movie is astounding and I wouldn't claim that the movie is too banal either.",
                    "I like to hate Michael Bay films, but I couldn't fault this one",
                    "It's one thing to watch an Uwe Boll film, but another thing entirely to pay for it",\
                    "The movie was too good",\
                    "This movie was actually neither that funny, nor super witty.",\
                    "This movie doesn't care about cleverness, wit or any other kind of intelligent humor.",\
                    "Those who find ugly meanings in beautiful things are corrupt without being charming.",\
                    "There are slow and repetitive parts, BUT it has just enough spice to keep it interesting.",
                    "The script is not fantastic, but the acting is decent and the cinematography is EXCELLENT!"]

sentences.extend(tricky_sentences)

# all examples have been extended into one list
# analyser is below

sid = SentimentIntensityAnalyzer()
for sentence in sentences:
    print(sentence)
    ss = sid.polarity_scores(sentence)
    for k in sorted(ss):
        print('{0}: {1}, '.format(k, ss[k]), end='')
    print()