# Extract the answers/responses from a PDF form 
# 
# We will use the `staplr` package to parsing here
# See here for 
# https://github.com/pridiltal/staplr


library(staplr)

# Note the form needs to have some data in it otherwise you 
#  will get an Error msg: empty or no content specified

pdffile <- "mk_pdf_form.pdf"
fields = get_fields(pdffile)

attributes(fields)

# Check the first answer
fields$Q1$value

fields[["Q1"]][["value"]]

# You'll get a list of fields that the pdf contains 
# along with some additional information about the fields.

# See here for 
# https://github.com/pridiltal/staplr

# Lets try setting fields

# You make modifications in any of the fields by
fields$Q2$value

# update and save as new PDF file
fields$Q2$value = "This is a value inserted from R"
set_fields(pdffile, 'newFile_from_R.pdf', fields)


