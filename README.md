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

## Results

Here's the top three teams for surname-starting-with-same-letter.

```
+-------------------------------------------------------------------------------------+
|                                  Stéphane Ruffier                                   |
|                                                                                     |
|                  Sergio Ramos -- Marcos Rojo -- Gonzalo Rodríguez                   |
|                                                                                     |
| Arjen Robben -- James Rodríguez -- Cristiano Ronaldo -- Franck Ribéry -- Marco Reus |
|                                                                                     |
|                           Wayne Rooney -- Giuseppe Rossi                            |
+-------------------------------------------------------------------------------------+


+----------------------------------------------------------------------------------+
|                                  Steve Mandanda                                  |
|                                                                                  |
|                   Javi Martinez -- Miranda -- Per Mertesacker                    |
|                                                                                  |
| Thomas Müller -- Ángel Di María -- Luka Modrić -- Juan Mata -- Claudio Marchisio |
|                                                                                  |
|                         Lionel Messi -- Mario Mandžukić                          |
+----------------------------------------------------------------------------------+


+----------------------------------------------------------------------------+
|                              Salvatore Sirigu                              |
|                                                                            |
|                 Thiago Silva -- Neven Subotić -- Sokratis                  |
|                                                                            |
| Alexis Sánchez -- Bastian Schweinsteiger -- Wesley Sneijder -- David Silva |
|                                                                            |
|                 Luis Suárez -- Daniel Sturridge -- Soldado                 |
+----------------------------------------------------------------------------+
```

## Observations

FIFA rates defenders so low that nearly all the 'best' teams come out with three at the back.
