data =read.table(file="./110年第4季住宅價格指數.csv",header=TRUE, sep=",")

#install.packages("dplyr")
library(dplyr)

大安區 = data %>% filter(住宅價格季指數類別 ==  "大安區")
信義區= data %>% filter(住宅價格季指數類別 ==  "信義區")
中正區= data %>% filter(住宅價格季指數類別 ==  "中正區")
中山區= data %>% filter(住宅價格季指數類別 ==  "中山區")
松山區= data %>% filter(住宅價格季指數類別 ==  "松山區")
南港區= data %>% filter(住宅價格季指數類別 ==  "南港區")
士林區= data %>% filter(住宅價格季指數類別 ==  "士林區")
內湖區= data %>% filter(住宅價格季指數類別 ==  "內湖區")
大同區= data %>% filter(住宅價格季指數類別 ==  "大同區")
萬華區= data %>% filter(住宅價格季指數類別 ==  "萬華區")
文山區= data %>% filter(住宅價格季指數類別 ==  "文山區")
北投區= data %>% filter(住宅價格季指數類別 ==  "北投區")

#標準住宅總價 
#最高點: 大安區 2814
max(data$標準住宅總價) 
data %>% filter(標準住宅總價==2814)
summary(大安區$標準住宅總價)

#最低點: 中山區 1149
min(data$標準住宅總價)
data %>% filter(標準住宅總價==1149)
summary(中山區$標準住宅總價)

# 6個縣市 標準住宅總價 折線圖 
library(ggplot2)
colors <- c("大安區" = "red",
            "信義區"="orange",
            "中正區"="yellow",
            "中山區"="green",
            "大同區"="blue",
            "萬華區" = "purple")
總價折線圖 = ggplot() + 
  geom_line(data = 大安區, aes(x=期別,y=標準住宅總價,group = 1, color = "大安區")) +
  geom_line(data = 信義區, aes(x=期別,y=標準住宅總價,group = 1, color = "信義區")) +
  geom_line(data = 中正區, aes(x=期別,y=標準住宅總價,group = 1, color = "中正區")) +
  geom_line(data = 中山區, aes(x=期別,y=標準住宅總價,group = 1, color = "中山區")) +
  geom_line(data = 大同區, aes(x=期別,y=標準住宅總價,group = 1, color = "大同區")) +
  geom_line(data = 萬華區, aes(x=期別,y=標準住宅總價,group = 1, color = "萬華區")) +
  labs(x = '期別', y = '標準住宅總價', color = "縣市") +
  scale_color_manual(values = colors)

print(總價折線圖)


#標準住宅單價
#最高點 大安區 87.95
max(data$標準住宅單價)
data %>% filter(標準住宅單價==87.95)
#最低點 萬華區 40.85
min(data$標準住宅單價)
data %>% filter(標準住宅單價==40.85)

# 6個縣市 標準住宅單價 折線圖
單價折線圖 = ggplot() + 
  geom_line(data = 大安區, aes(x=期別,y=標準住宅單價,group = 1, color = "大安區")) +
  geom_line(data = 信義區, aes(x=期別,y=標準住宅單價,group = 1, color = "信義區")) +
  geom_line(data = 中正區, aes(x=期別,y=標準住宅單價,group = 1, color = "中正區")) +
  geom_line(data = 中山區, aes(x=期別,y=標準住宅單價,group = 1, color = "中山區")) +
  geom_line(data = 大同區, aes(x=期別,y=標準住宅單價,group = 1, color = "大同區")) +
  geom_line(data = 萬華區, aes(x=期別,y=標準住宅單價,group = 1, color = "萬華區")) +
  labs(x = '期別', y = '標準住宅單價', color = "縣市") +
  scale_color_manual(values = colors)

print(單價折線圖)



