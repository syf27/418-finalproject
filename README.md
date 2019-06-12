# stat418finalproject
A shinny app of movie gross income projection

 the shinny app link: https://uclastat418syf.shinyapps.io/movies/
 
 The dataset used is from web scraping of IMdb website.
 
 X variables:  movie votes, movie scores,movie year, movie level.
 Movie votes: vote numbers in IMdb website, number of votes for the movie.
 Movie scores: movie IMdb score in the IMdb website, scale from 0 to 10, 
 but we use 0-100 scale for the app. 6.8 means 68 for this shinny app.
 Movie year: the year of movie released.
 Movie level: R means restricted, not R means not restricted, like PG, PG-13 and so on.
 
 Y variable: Movie gross income in million.
 
 conclusion: 
 The gross income will increase with movie votes, movie score and movie year.
 Not R movies will have higher gross than R movies.
 
 The model I choose is multiple linear regression.
 R-square for the model is over 0.6.
 detailed summary can be viewed in images folder.
  
 Now you can try the app link and see how accurate compare to actual movie incomes from 
 https://www.imdb.com/search/title?release_date=2017-01-01,2017-12-31&sort=num_votes,desc&start=1&ref_=adv_nxt
  
 
