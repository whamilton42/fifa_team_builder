# FIFA Team Builder

Inspired by a [Football Weekly episode](http://www.theguardian.com/football/blog/audio/2014/oct/09/football-weekly-extra-podcast-listen-now) with the question: **what's the best team you can build out of players whose surname starts with the same letter?**

## Usage

```
bundle
ruby bin/scrape.rb
ruby bin/print.rb --team first_letter_of_surname
```

## Data

You can get ahold of the data from anywhere. I'm scraping from [Futhead](http://www.futhead.com/15/players). Don't run the scrape command too often - I think it's justifiable for this project, but you should still not scrape more than needed.

## Observations

FIFA rates defenders so low that nearly all the 'best' teams come out with three at the back.

## Todo

Display players in correct formation within line.
