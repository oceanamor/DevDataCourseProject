
shinyUI(pageWithSidebar(
                headerPanel("Calculate Your Calorie Needs"),
                sidebarPanel(
                        h3('The following will calculate the number of calories needed to maintain your current weight.'),
                        h4('Based on the Mifflin-St Jeor equation found to be most accurate'),
                        numericInput(inputId="hght", label = "Height in cm (Conversion from feet/inches can be done to the right)",0),
                        numericInput(inputId="wght", label = "Weight in kg (Conversion from pounds can be done to the right)",0),
                        numericInput(inputId="age", label = "Age in years",0),
                        radioButtons(inputId="gender", label = "Gender",choices = c("Female"="F","Male"="M")),
                        selectInput("alvl", "Activity Level Not Including Excercise",
                                    c('Sedentary - Ex. Nothing beyond necessary daily activities'=1.2,
                                      'Light - Ex. work at a computer all day/light exercise 1-3 days/week'=1.375,
                                      'Medium - Ex. student walking every where/moderate exercise 3-5 days/week'=1.550,
                                      'Heavy - work in construction or warehouse/hard exercise 6-7 days/week'=1.725,
                                      'Extreme - very physical job/training for a triathlon'=1.900
                                     )
                                   ),
                        actionButton("goButton", "Calculate")
                ),
                mainPanel(
                        p("Please use the boxes below to convert standard(US) to metric"),
                        numericInput(inputId="hghtft", label = "Feet",0),
                        numericInput(inputId="hghtin", label = "Inches",0),
                        p('Height converted to cm'),
                        textOutput('text1'),
                        
                        numericInput(inputId="wghtlb", label = "Weight in lbs",0),
                        p('Weight converted to kg'),
                        textOutput('text2'),
                        
                        h2('This is how many calories you need'),
                        textOutput('text3'),
                        
                        h3('To use this app simply enter in values for your height, weight, age, gender, 
                           and activity level and then press the Calculate button, if you do not know the
                           metric values there is a standard to metric convert in the top right')
                )
        ))
