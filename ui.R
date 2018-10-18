suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(
        navbarPage(HTML("<font color=\"#008080\"><strong>Data Science Capstone: Final Project</strong></font>"),
                   tabPanel(HTML("<font color=\"#008000\"><strong>Prediction</strong></font>"),
                            HTML("<strong>Author: Dimple Dhar</strong>"),
                            br(),
                            HTML("<strong>Date: 10/17/2018</strong>"),
                            br(),
                            img(src = "./Coursera-horz.jpg"),
                            # Sidebar
                              sidebarLayout(
                              sidebarPanel(
                                helpText("Enter text to begin the next word prediction"),
                                textInput("inputString", "Enter text here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                                ),
                              mainPanel(
                                  h2("Next Word Predicted"),  
                                  verbatimTextOutput("prediction"),
                                  strong("Sentence Input:"),
                                  tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                  textOutput('text1'),
                                  br(),
                                  strong("Note:"),
                                  tags$style(type='text/css', '#text2 {background-color: rgba(255,255,0,0.40); color: black;}'),
                                  textOutput('text2')
                              )
                              )
                             
                  ),
                   tabPanel(HTML("<font color=\"#800000\"><strong>Documentation</strong></font>"),
                            mainPanel( img(src = "./Coursera-horz.jpg") ,
                                       includeMarkdown("about.md")
                                       )
                   )
)
)