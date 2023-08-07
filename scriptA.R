df = data.frame(redcap.ids)

#first way to save the language column (using $ to index)
lang1 <- df$language
lang1

#second way: saving the language column by name of column
lang2 = df[ , c("language")]
lang2

#THE MONEY Function ::::::::::
table(df$language)

#now we want to filter by diagnosis
dx <- data.frame(diagnosis)

#filter by ICD10 codes
filter(dx, ICD10_CODE== "I48")
#example 
#filter by codes for AF ICD10 (I48), ICD9 (427) and rename 
#grepl("^I48", dx)
dx %>% filter(grepl("^I48|^ICD9CM:427", ICD10_CODE))
#create a filter based on 
afibICD <- dx %>% filter(grepl("^I48|^ICD9CM:427", ICD10_CODE))
