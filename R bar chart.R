#Tab is like Kite

print('Hello Data')

# to save and update the work just
  # click on saving icon

print('hi afteer saving')

#Layers in grammar of graphics 
# there are 7
# only 3 are require to create chart in R:

#1.Data(the df)
#2.Aesthetics aes(x=,y=)
#3.Geometry(the graphical shape)
      #in order

#the rest of layers are Optional

df_used_cars <- read.csv(
  "C:/Users/lenovo ideapad130/OneDrive/المستندات/R for every one/bar_chart_data.csv",
                         header = TRUE, 
                         sep = ",")


# in R we dont use \ we use /

library('ggplot2')

bar_chart <- ggplot(df_used_cars,
                    aes(x = Brand,
                        y = Cars.Listings)) + 
  geom_bar(stat = "identity", 
           width = 0.8, #if we choose 1 it will lead to 
                        #have no space between the bars 
                         #making our chart histogram 
                                        #not bar chart
           color = "navy", 
           fill = "navy") +
  
  ggtitle("Cars Listings by Brand") +
  
  theme_classic() +
  
  theme(axis.text.x = element_text(angle = 45, 
                                   hjust = 1)) +
  
  
  labs(x = NULL, 
       y = "Number of Listings")

bar_chart  

