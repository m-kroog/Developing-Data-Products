DOHgradeAll <- read.csv("dohgradesall.csv")

shinyServer(function(input, output) {
  
             
        
  output$dohplot13 <- renderPlot({
    
          dohdata13 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                     & DOHgradeAll$Grade %in% input$dohgrades
                                     & DOHgradeAll$Date %in% "2013",]
                   
          
          g <- ggplot(dohdata13, aes(Cuisine, Restaurants, fill = Grade))
          g <- g + geom_bar(stat = "identity")
          g <- g + xlab("Grades by Cuisines 2013") + ylab("Number of Restaurants")
          g13 <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
          
         g13
  
  })
  output$doh13 <- renderText({
          
          dohdata13 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2013",]
          
          DOH13A <- dohdata13[dohdata13$Grade %in% "A",]
          Grade.A <- sum(DOH13A$Restaurants)
          DOH13B <- dohdata13[dohdata13$Grade %in% "B",]
          Grade.B <- sum(DOH13B$Restaurants)
          DOH13C <- dohdata13[dohdata13$Grade %in% "C",]
          Grade.C <- sum(DOH13C$Restaurants)
          DOH13P <- dohdata13[dohdata13$Grade %in% "P",]
          Grade.P <- sum(DOH13P$Restaurants)
          DOH13Z <- dohdata13[dohdata13$Grade %in% "Z",]
          Grade.Z <- sum(DOH13Z$Restaurants)
          
          cbind(Grade.A, Grade.B, Grade.C, Grade.P, Grade.Z)
  })
  
          
  output$dohplot14 <- renderPlot({
                  
           dohdata14 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                           & DOHgradeAll$Grade %in% input$dohgrades
                                           & DOHgradeAll$Date %in% "2014",]
                  
                  
           g <- ggplot(dohdata14, aes(Cuisine, Restaurants, fill = Grade))
           g <- g + geom_bar(stat = "identity")
           g <- g + xlab("Grades by Cuisines 2014") + ylab("Number of Restaurants")
           g14 <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
                  
           g14
           
})
  
  output$doh14 <- renderText({
          
          dohdata14 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2014",]
          
          DOH14A <- dohdata14[dohdata14$Grade %in% "A",]
          Grade.A <- sum(DOH14A$Restaurants)
          DOH14B <- dohdata14[dohdata14$Grade %in% "B",]
          Grade.B <- sum(DOH14B$Restaurants)
          DOH14C <- dohdata14[dohdata14$Grade %in% "C",]
          Grade.C <- sum(DOH14C$Restaurants)
          DOH14P <- dohdata14[dohdata14$Grade %in% "P",]
          Grade.P <- sum(DOH14P$Restaurants)
          DOH14Z <- dohdata14[dohdata14$Grade %in% "Z",]
          Grade.Z <- sum(DOH14Z$Restaurants)
          
          cbind(Grade.A, Grade.B, Grade.C, Grade.P, Grade.Z)
  })
  
  output$dohplot15 <- renderPlot({
          
          dohdata15 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2015",]
          
          
          g <- ggplot(dohdata15, aes(Cuisine, Restaurants, fill = Grade))
          g <- g + geom_bar(stat = "identity")
          g <- g + xlab("Grades by Cuisines 2015") + ylab("Number of Restaurants")
          g15 <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
          
          g15
  })
  
  output$doh15 <- renderText({
          
          dohdata15 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2015",]
          
          DOH15A <- dohdata15[dohdata15$Grade %in% "A",]
          Grade.A <- sum(DOH15A$Restaurants)
          DOH15B <- dohdata15[dohdata15$Grade %in% "B",]
          Grade.B <- sum(DOH15B$Restaurants)
          DOH15C <- dohdata15[dohdata15$Grade %in% "C",]
          Grade.C <- sum(DOH15C$Restaurants)
          DOH15P <- dohdata15[dohdata15$Grade %in% "P",]
          Grade.P <- sum(DOH15P$Restaurants)
          DOH15Z <- dohdata15[dohdata15$Grade %in% "Z",]
          Grade.Z <- sum(DOH15Z$Restaurants)
          
          cbind(Grade.A, Grade.B, Grade.C, Grade.P, Grade.Z)
  })
  
  output$dohplot16 <- renderPlot({
          
          dohdata16 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2016",]
          
          
          g <- ggplot(dohdata16, aes(Cuisine, Restaurants, fill = Grade))
          g <- g + geom_bar(stat = "identity")
          g <- g + xlab("Grades by Cuisines 2016") + ylab("Number of Restaurants")
          g16 <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
          
          g16
  })
  
  output$doh16 <- renderText({
          
          dohdata16 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2016",]
          
          DOH16A <- dohdata16[dohdata16$Grade %in% "A",]
          Grade.A <- sum(DOH16A$Restaurants)
          DOH16B <- dohdata16[dohdata16$Grade %in% "B",]
          Grade.B <- sum(DOH16B$Restaurants)
          DOH16C <- dohdata16[dohdata16$Grade %in% "C",]
          Grade.C <- sum(DOH16C$Restaurants)
          DOH16P <- dohdata16[dohdata16$Grade %in% "P",]
          Grade.P <- sum(DOH16P$Restaurants)
          DOH16Z <- dohdata16[dohdata16$Grade %in% "Z",]
          Grade.Z <- sum(DOH16Z$Restaurants)
          
          cbind(Grade.A, Grade.B, Grade.C, Grade.P, Grade.Z)
  })
  
  
  output$dohplot17 <- renderPlot({
          
          dohdata17 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2017",]
          
          
          g <- ggplot(dohdata17, aes(Cuisine, Restaurants, fill = Grade))
          g <- g + geom_bar(stat = "identity")
          g <- g + xlab("Grades by Cuisines 2017") + ylab("Number of Restaurants")
          g17 <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
          
          g17
  })
  
  output$doh17 <- renderText({
          
          dohdata17 <- DOHgradeAll[DOHgradeAll$Cuisine %in% input$dohcuisines
                                   & DOHgradeAll$Grade %in% input$dohgrades
                                   & DOHgradeAll$Date %in% "2017",]
          
          DOH17A <- dohdata17[dohdata17$Grade %in% "A",]
          Grade.A <- sum(DOH17A$Restaurants)
          DOH17B <- dohdata17[dohdata17$Grade %in% "B",]
          Grade.B <- sum(DOH17B$Restaurants)
          DOH17C <- dohdata17[dohdata17$Grade %in% "C",]
          Grade.C <- sum(DOH17C$Restaurants)
          DOH17P <- dohdata17[dohdata17$Grade %in% "P",]
          Grade.P <- sum(DOH17P$Restaurants)
          DOH17Z <- dohdata17[dohdata17$Grade %in% "Z",]
          Grade.Z <- sum(DOH17Z$Restaurants)
          
          cbind(Grade.A, Grade.B, Grade.C, Grade.P, Grade.Z)
  })
  
})
