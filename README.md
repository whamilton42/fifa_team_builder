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

* FIFA rates defenders so low that nearly all the 'best' teams come out with three at the back. 
* Many letters can't get a team together - although interestingly *Ç* can.
* Using the FIFA 15 data means that historical players aren't in.

## Results

Here's the top teams for surname-starting-with-same-letter. Best first.

```
+---------------------------------------------------------------------------------+
|                                Stéphane Ruffier                                 |
|                                                                                 |
|                 Sergio Ramos - Marcos Rojo - Gonzalo Rodríguez                  |
|                                                                                 |
| Arjen Robben - James Rodríguez - Cristiano Ronaldo - Franck Ribéry - Marco Reus |
|                                                                                 |
|                          Wayne Rooney - Giuseppe Rossi                          |
+---------------------------------------------------------------------------------+


+------------------------------------------------------------------------------+
|                                Steve Mandanda                                |
|                                                                              |
|                  Javi Martinez - Miranda - Per Mertesacker                   |
|                                                                              |
| Thomas Müller - Ángel Di María - Luka Modrić - Juan Mata - Claudio Marchisio |
|                                                                              |
|                        Lionel Messi - Mario Mandžukić                        |
+------------------------------------------------------------------------------+


+-------------------------------------------------------------------------+
|                            Salvatore Sirigu                             |
|                                                                         |
|                 Thiago Silva - Neven Subotić - Sokratis                 |
|                                                                         |
| Alexis Sánchez - Bastian Schweinsteiger - Wesley Sneijder - David Silva |
|                                                                         |
|                Luis Suárez - Daniel Sturridge - Soldado                 |
+-------------------------------------------------------------------------+


+--------------------------------------------------------------------+
|                           Claudio Bravo                            |
|                                                                    |
|          Jérôme Boateng - Mehdi Benatia - Andrea Barzagli          |
|                                                                    |
| Gareth Bale - Jakub Błaszczykowski - Sergio Busquets - Lars Bender |
|                                                                    |
|           Karim Benzema - Mario Balotelli - Carlos Bacca           |
+--------------------------------------------------------------------+


+----------------------------------------------------------------------------+
|                              Thibaut Courtois                              |
|                                                                            |
|              Giorgio Chiellini - Leandro Castán - Gary Cahill              |
|                                                                            |
| Juan Cuadrado - Antonio Candreva - Yohan Cabaye - Coutinho - Santi Cazorla |
|                                                                            |
|                        Edinson Cavani - Diego Costa                        |
+----------------------------------------------------------------------------+


+----------------------------------------------------------+
|                     Samir Handanovič                     |
|                                                          |
|         Mats Hummels - Benedikt Höwedes - Hilton         |
|                                                          |
|       Hulk - Marek Hamšik - Hernanes - Eden Hazard       |
|                                                          |
| Gonzalo Higuaín - Klaas-Jan Huntelaar - Javier Hernández |
+----------------------------------------------------------+


+---------------------------------------------------------+
|                       Hugo Lloris                       |
|                                                         |
|          David Luiz - Luisão - Aymeric Laporte          |
|                                                         |
| Lucas - Philipp Lahm - Frank Lampard - Ezequiel Lavezzi |
|                                                         |
|      Robert Lewandowski - Llorente - Romelu Lukaku      |
+---------------------------------------------------------+


+---------------------------------------------------------------------+
|                               De Gea                                |
|                                                                     |
|              Diego Godín - Ezequiel Garay - Kamil Glik              |
|                                                                     |
| Mario Götze - İlkay Gündoğan - Gabi - Luiz Gustavo - Nicolás Gaitán |
|                                                                     |
|                  Mario Gomez - André-Pierre Gignac                  |
+---------------------------------------------------------------------+


+--------------------------------------------------------------+
|                         Manuel Neuer                         |
|                                                              |
|           Naldo - Nicolas Nkoulou - David Navarro            |
|                                                              |
| Jesús Navas - Nani - Radja Nainggolan - Neymar - Samir Nasri |
|                                                              |
|                    Negredo - Dame N'Doye                     |
+--------------------------------------------------------------+


+---------------------------------------------------------------+
|                         Rui Patrício                          |
|                                                               |
|                  Piqué - Pepe - Loïc Perrin                   |
|                                                               |
| Andrea Pirlo - Paul Pogba - Miralem Pjanić - Paulinho - Pedro |
|                                                               |
|               Rodrigo Palacio - Claudio Pizarro               |
+---------------------------------------------------------------+


+--------------------------------------------------+
|                   Onur Kivrak                    |
|                                                  |
| Vincent Kompany - Laurent Koscielny - Simon Kjær |
|                                                  |
| Toni Kroos - Sami Khedira - Shinji Kagawa - Koke |
|                                                  |
| Miroslav Klose - Stefan Kießling - Robbie Keane  |
+--------------------------------------------------+


+----------------------------------------------------+
|                    Kevin Trapp                     |
|                                                    |
|       John Terry - Ömer Toprak - Kolo Touré        |
|                                                    |
| Yaya Touré - Jérémy Toulalan - Thiago - Arda Turan |
|                                                    |
|  Carlos Tévez - Fernando Torres - Francesco Totti  |
+----------------------------------------------------+


+------------------------------------------------+
|                 Igor Akinfeev                  |
|                                                |
| Dani Alves - Alex - Daniel Agger - David Alaba |
|                                                |
|  Xabi Alonso - Mikel Arteta - Kwadwo Asamoah   |
|                                                |
|   Sergio Agüero - Emmanuel Adebayor - Aduriz   |
+------------------------------------------------+


+----------------------------------------------------+
|                 Morgan De Sanctis                  |
|                                                    |
| Dante - Martín Demichelis - Papy Mison Djilobodji  |
|                                                    |
| Daniele De Rossi - Diego - Kevin De Bruyne - Danny |
|                                                    |
|    Edin Džeko - Seydou Doumbia - Didier Drogba     |
+----------------------------------------------------+


+----------------------------------------------------------+
|                         Iraizoz                          |
|                                                          |
| Branislav Ivanović - Sergey Ignashevich - Emiliano Insua |
|                                                          |
|       Iniesta - Isco - Iturraspe - Lorenzo Insigne       |
|                                                          |
|   Zlatan Ibrahimović - Ciro Immobile - Vedad Ibišević    |
+----------------------------------------------------------+


+-------------------------------------------------------------------------------------+
|                                    Brad Friedel                                     |
|                                                                                     |
|                    Federico Fazio - Rio Ferdinand - Pedro Franco                    |
|                                                                                     |
| Jefferson Farfán - Sofiane Feghouli - Cesc Fàbregas - Fernandinho - Roberto Firmino |
|                                                                                     |
|                              Falcao - Steven Fletcher                               |
+-------------------------------------------------------------------------------------+


+---------------------------------------------------------------------------------+
|                                   Michel Vorm                                   |
|                                                                                 |
|                 Nemanja Vidić - Jan Vertonghen - Raphaël Varane                 |
|                                                                                 |
| Carlos Vela - Antonio Valencia - Arturo Vidal - Borja Valero - Mathieu Valbuena |
|                                                                                 |
|                          David Villa - Eduardo Vargas                           |
+---------------------------------------------------------------------------------+


+-----------------------------------------------------------------+
|                         Vincent Enyeama                         |
|                                                                 |
|           Emmanuel Eboué - Jonny Evans - Patrice Evra           |
|                                                                 |
| Patrick Ebert - Roman Eremenko - Rasmus Elm - Christian Eriksen |
|                                                                 |
|         Samuel Eto'o - Emmanuel Emenike - Mevlüt Erdinç         |
+-----------------------------------------------------------------+


+----------------------------------------------------------------------------+
|                             Roman Weidenfeller                             |
|                                                                            |
|              Ashley Williams - Weligton - Philipp Wollscheid               |
|                                                                            |
| Willian - Theo Walcott - Jack Wilshere - Axel Witsel - Georginio Wijnaldum |
|                                                                            |
|                         Danny Welbeck - Wanderson                          |
+----------------------------------------------------------------------------+


+-------------------------------------------------------------+
|                       Guillermo Ochoa                       |
|                                                             |
|      Nicolás Otamendi - Angelo Ogbonna - Jonas Olsson       |
|                                                             |
| Alex Oxlade-Chamberlain - Oscar - Leon Osman - Borja Oubiña |
|                                                             |
|     Ivica Olić - Pablo Daniel Osvaldo - Shinji Okazaki      |
+-------------------------------------------------------------+


+--------------------------------------------------------+
|                         Jaime                          |
|                                                        |
| Juanfran - Phil Jagielka - Phil Jones - Marcell Jansen |
|                                                        |
|       Joaquín - Adam Johnson - Jonas - Joãozinho       |
|                                                        |
|                Stevan Jovetić - Jussiê                 |
+--------------------------------------------------------+


+-------------------------------------------------------------------------+
|                              Tolga Zengin                               |
|                                                                         |
| Pablo Zabaleta - Carlos Zambrano - Cristian Zapata - Juan Camilo Zúñiga |
|                                                                         |
|         Erkan Zengin - Nabil El Zhar - Zurutuza - Yuriy Zhirkov         |
|                                                                         |
|                       Mauro Zárate - Simone Zaza                        |
+-------------------------------------------------------------------------+


+---------------------------------------------------------------+
|                             Yoel                              |
|                                                               |
|       Mapou Yanga-M'Biwa - Mustafa Yumlu - Joseph Yobo        |
|                                                               |
| Claudio Yacob - Ki Sung Yueng - Ashley Young - Pavel Yakovlev |
|                                                               |
|     Wissam Ben Yedder - Burak Yılmaz - Mustapha Yatabaré      |
+---------------------------------------------------------------+


+-----------------------------------------------------------------------------------+
|                                Mickey van der Hart                                |
|                                                                                   |
| Gregory van der Wiel - Virgil van Dijk - Mike van der Hoorn - Patrick van Aanholt |
|                                                                                   |
|           Nick van der Velden - Rafael van der Vaart - Marco van Ginkel           |
|                                                                                   |
|            Robin van Persie - Ricky van Wolfswinkel - Mike van Duinen             |
+-----------------------------------------------------------------------------------+


+---------------------------------------------------------------+
|                         Sven Ulreich                          |
|                                                               |
| Atsuto Uchida - Samuel Umtiti - Matthew Upson - Andreas Ulmer |
|                                                               |
|                Ukra - Necip Uysal - John Utaka                |
|                                                               |
|        Ikechukwu Uche - Anthony Ujah - Fernando Uribe         |
+---------------------------------------------------------------+


+--------------------------------------------------------------------------------+
|                                 Ramazan Özcan                                  |
|                                                                                |
|          Sener Özbayrakli - Ibrahim Öztürk - Sezer Özmen - Emre Özkan          |
|                                                                                |
| Aras Özbiliz - Mesut Özil - Oğuzhan Özyakup - Yasin Öztekin - Ahmet İlhan Özek |
|                                                                                |
|                                  Cihan Özkara                                  |
+--------------------------------------------------------------------------------+


+------------------------------------------------------------------+
|                          Dorus de Vries                          |
|                                                                  |
|    Boris Mahon de Monaghan - Stefan de Vrij - Marcel de Jong     |
|                                                                  |
| Yann-Erik de Lanlay - Lesly de Sa - Nigel de Jong - Siem de Jong |
|                                                                  |
|        Luuk de Jong - Igor de Camargo - Michael de Leeuw         |
+------------------------------------------------------------------+


+------------------------------------------------------------------------+
|                              José Quezada                              |
|                                                                        |
|             Pedro Queirós - Luis Quintana - Erwan Quintin              |
|                                                                        |
| Quaresma - Juan Fernando Quintero - Valeri Qazaishvili - Dani Quintana |
|                                                                        |
|      Fabio Quagliarella - Carlos Darwin Quintero - Julien Quercia      |
+------------------------------------------------------------------------+


+------------------------------------------------------------------------+
|                             Korcan Çelikay                             |
|                                                                        |
|               Tarık Çamdal - Servet Çetin - Uğur Çiftçi                |
|                                                                        |
| Hakan Çalhanoğlu - Emre Çolak - Musa Çağıran - Halil Çolak - Özgür Çek |
|                                                                        |
|                       Nadir Çiftçi - Edgar Çani                        |
+------------------------------------------------------------------------+
```
