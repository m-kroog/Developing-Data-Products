library(shiny)
library(ggplot2)

DOHgradeAll <- read.csv("dohgradesall.csv")

shinyUI(fluidPage(
  

  titlePanel("NYC Restaurant Inspection Results"),
  
  
  sidebarLayout(
    sidebarPanel(
       checkboxGroupInput("dohgrades", "Select Grades:",
                               c("Grade A" = "A", "Grade B" = "B", "Grade C" = "C",
                                 "Grade P - Pending (Issued on Reopening)" = "P", 
                                 "Grade Z - Pending" = "Z"),
                               selected = c("Grade A" = "A", "Grade B" = "B", "Grade C" = "C",
                                            "Grade P - Pending (Issued on Reopening)" = "P",
                                            "Grade Z - Pending" = "Z")),
       checkboxGroupInput("dohcuisines",
                          "Select Cuisines:",
                          choices = sort(unique(DOHgradeAll$Cuisine)),
                          selected = "American")
       
                          ),
                          
       
    
    # Show a plot of the generated distribution
    mainPanel(
       tabsetPanel(
               tabPanel("Plots",
                 plotOutput("dohplot13"),
                 p("Total Number of Restaurants Per Grade:"),
                 p("A B C P Z"),
                 textOutput("doh13"),
                 plotOutput("dohplot14"),
                 p("Total Number of Restaurants Per Grade:"),
                 p("A B C P Z"),
                 textOutput("doh14"),
                 plotOutput("dohplot15"),
                 p("Total Number of Restaurants Per Grade:"),
                 p("A B C P Z"),
                 textOutput("doh15"),
                 plotOutput("dohplot16"),
                 p("Total Number of Restaurants Per Grade:"),
                 p("A B C P Z"),
                 textOutput("doh16"),
                 plotOutput("dohplot17"),
                 p("Total Number of Restaurants Per Grade:"),
                 p("A B C P Z"),
                 textOutput("doh17")),
               tabPanel("Documentation", p("This Shiny App is for displaying DOHMH New York City
                                            Restaurant Inspection Results from 2013 to 2017. All the 
                                            restuarants are grouped by cuisine. To view the different 
                                            grades you can select any combination of Grade and Cuisine.
                                            The original dataset is from NYC OpenData."))
               
    ))
  )
))
