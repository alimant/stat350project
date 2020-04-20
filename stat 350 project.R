#First, we read the data. We'll name it univdata for easier reference.
univdata <- read.table("/depot/statclass/data/stat35000/2020spring/univsp20.txt", header = TRUE, sep = "\t")
head(univdata)

#We start cleaning the data.
#First, we use the complete.cases function to remove the rows that have incomplete data (NA) in them.
univdata_cleaned <- univdata[complete.cases(univdata),]
#We save this is our home directory in Scholar as a txt. file, named univdata_cleaned.
write.table(univdata_cleaned, file="univdata_cleaned.txt", row.names=FALSE, sep="\t")
head(univdata_cleaned)

