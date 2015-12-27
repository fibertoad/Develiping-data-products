shinyUI(fluidPage(h2("Knitting a Raglan Sweater sleeve: From cuff up to shoulder"), 
                p("Wrist circumference in inches: This measurement represents the circumference of the wrist plus the ease to create the cuff"),
                p("Wrist Pattern stitch: If the pattern for the cuff requires a certain number of stitches, inpute number here.
                  'Wrist circumference in inches' must be zero to use this measurement, otherwise it won't calculate this field."),
                p("Upperarm Circumference in inches: This is the Circumference of the arm just under the armpit plus ease."),
                p("Arm Length in inches: Arm length is measured from the outside of the arm at the same heigth as the upperarm measurement minus the cuff length.
                  Arm needs to be bent, hand on hip."),
                p("'Stitches per inch' and 'Rows per inch': These measurements are taken from the Gauge Swatch."),
                
                sidebarPanel(numericInput(inputId = "wrist", label ="Wrist circumference in inches", value = 0, min = 0, max = 150 ),
                             numericInput(inputId = "wrist_sts", label  = "Wrist pattern stitch", value = 0, min = 0, max = 150),
                             numericInput(inputId = "upperarm", label = "Upperarm Circumference in inches", value = 0, min = 0, max = 150),
                             numericInput(inputId = "armlength", label = "Arm Length in inches", value = 0, min = 0, max = 150),
                             numericInput(inputId = "sts_in", label = "Stitches per inch", value = 0, min = 0, max = 150),
                             numericInput(inputId = "row_in", label = "Rows per inch", value = 0, min = 0, max = 150)),
                mainPanel(h2("Sleeve Increases"),tableOutput(outputId = "result"),p("The matrix above shows the rate of increases when knitting from the cuff to the armpit. 
                                                                                    If the row says 10 you knit 9 rows with the same number of stitches, then on the 10th row you had 2 stitches keeping an even number. 
                                                                                    This is done for x number of times before moving on to the next rate.  If the next rate has 0 times, then you have finished the sleeve.")),
                
                HTML("<style>
#footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    text-align: center;
}</style>
<div id ='footer'>
    Copyright S.A. Charania All Rights Reserved
</div>")
                )

)