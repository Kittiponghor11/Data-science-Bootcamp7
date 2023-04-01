library(readxl)
library(dplyr)
library(caret)

house_price_2016 <- read_excel("House Price India.xlsx", sheet=1,)

names(house_price_2016)
select_columns <- c(3,4,5,14,22)
new_name <- c("nobed","nobath","la","by","dfta")
names(house_price_2016)[select_columns] <- new_name 

## 1.Split Data
set.seed(11)
n <- nrow(house_price_2016)
id <- sample(1:n, 0.8*n)
train_data <- house_price_2016[id, ]
test_data <- house_price_2016[-id, ]
train_data$Price_norm <- log(train_data$Price)
test_data$Price_norm <- log(test_data$Price)

## 2.Train Model
ctrl <- trainControl(method = "cv",
             number = 5,
             verboseIter = T)

set.seed(11)
rf_model <- train(Price_norm~nobed+nobath+la+by+dfta,
               data = train_data,
               method = "rf",
               preProcess = c("center", "scale"),
               trControl = ctrl)

set.seed(11)              
glm_model <- train(Price_norm~nobed+nobath+la+by+dfta,
                  data = train_data,
                  method = "glm",
                  preProcess = c("center", "scale"),
                  trControl = ctrl)               

set.seed(11)              
knn_model <- train(Price_norm~nobed+nobath+la+by+dfta,
                   data = train_data,
                   method = "knn",
                   preProcess = c("center", "scale"),
                   trControl = ctrl)    
set.seed(11)              
lm_model <- train(Price_norm~nobed+nobath+la+by+dfta,
                   data = train_data,
                   method = "lm",
                   preProcess = c("center", "scale"),
                   trControl = ctrl) 

list_model <- list(lm = lm_model,
               knn = knn_model,
               logistic = glm_model,
               rf = rf_model)

result <- resamples(list_model)

## 3.Score
p <- predict(rf_model, test_data)
p_new <- exp(p)
## 4.evaluate
RMSE(p_new, exp(test_data$Price_norm))
