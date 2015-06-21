shinyServer(
        function(input, output) {
                output$text1 <- renderText({((12*input$hghtft)+input$hghtin)*2.54}) 
                output$text2 <- renderText({input$wghtlb*0.453592})
                ##WILL ONLY RUN THIS OUTPUT SECTION WHEN THE BUTTON IS PUSHED
                 output$text3 <- renderText({
                        input$goButton
                        isolate(
                                if (input$goButton == 0) "Please press the Calculate button on the bottom left and hit again to recalculate"
                                else if (input$gender == 'M') (10 * input$wght + 6.25 * input$hght - 5 * input$age + 5)  * as.numeric(input$alvl)
                                else if (input$gender == 'F') (10 * input$wght + 6.25 * input$hght - 5 * input$age - 161) * as.numeric(input$alvl)
                                )
#                 output$text3 <- renderText({
#                         if (input$goButton == 0) "Please press the Calculate button on the bottom left"
#                         else if (input$goButton > 0 && input$gender == 'M') (10 * input$wght + 6.25 * input$hght - 5 * input$age + 5) * as.numeric(input$alvl)
#                         else if (input$goButton > 0 && input$gender == 'F') (10 * input$wght + 6.25 * input$hght - 5 * input$age - 161) * as.numeric(input$alvl)
                })
        }
)