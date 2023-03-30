url <- "https://myanimelist.net/topanime.php"

anime_name <- url %>%
  read_html() %>%
  html_elements("h3.hoverinfo_trigger") %>%
  html_text2()

episode <- url %>%
  read_html() %>%
  html_elements("div.information") %>%
  html_text2()

rating <- url %>%
  read_html() %>%
  html_elements("div.js-top-ranking-score-col") %>%
  html_text2()

anime_df <- data.frame(anime_name,
                       episode,
                       rating)


split_members <- "([0-9]*[,][0-9]*[ ][a-z]*)"
member <- str_match(anime_df$episode,split_members)[,1]

split_date <- "([A-z]+[ ][0-9]+[ ]-.*[0-9]{4})"
date <- str_match(anime_df$episode,split_date)[,1]

split_episode <- "[A-z].*"
new_episode <- str_match(anime_df$episode,split_episode)[,1]

new_anime_df <- data.frame(anime_name,
                           new_episode,
                           date,
                           member,
                           rating)
