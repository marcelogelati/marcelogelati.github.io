## Como descobrir se alguém te deu unfollow? Um tutorial:

# Primeiro, instale e rode os seguintes pacotes:

install.packages("stringr")
install.packages("rtweet")
install.packages("httpuv")
install.packages("httr")
require(stringr)
require(rtweet)
require(httpuv)
require(httr)

# Em seguida, use a função get_followers() do rtweet para obter seus followers
# Observação: substitua "marcelogelati" por "sua_arroba"

flwrs_t0 <- get_followers("marcelogelati")

# Quando quiser descobrir quem te deu unfollow, rode de novo

flwrs_t1 <- get_followers("marcelogelati")

# Agora, criamos a função de follow:

unfollowed_by <- function(flwrs_t0, flwrs_t1) {
  unfollowid <- setdiff(flwrs_t0, flwrs_t1)
  
  url <- 'https://twitter.com/intent/user?user_id='
  unfollow <- c()
  
  for (i in unfollowid) {
    twt_page <- GET(paste(url, i, sep = ""))
    twt_content <- rawToChar(twt_page$content)
    unfollow[i] <- str_extract(twt_content, "(?<=\\()\\@.*(?=\\))")
  }
  
  unfollow
}

followed_by <- function(flwrs_t0, flwrs_t1) {
  unfollowid <- setdiff(flwrs_t1, flwrs_t0)
  
  url <- 'https://twitter.com/intent/user?user_id='
  follow <- c()
  
  for (i in unfollowid) {
    twt_page <- GET(paste(url, i, sep = ""))
    twt_content <- rawToChar(twt_page$content)
    follow[i] <- str_extract(twt_content, "(?<=\\()\\@.*(?=\\))")
  }
  
  follow
}

# Agora, para ver quem te deu unfollow, rode o código abaixo

unfollowed_by(flwrs_t0$user_id, flwrs_t1$user_id)

# Analogamente para a função followed_by
