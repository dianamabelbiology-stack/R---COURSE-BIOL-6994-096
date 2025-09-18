


devtools:: install_github("rstudio/addinexamples",)


df <- data.frame(
   Name= c("Yoda", "R2_D2", "Chewbacca", "Obi-wan Kenobi", "Luke Skywalker") ,
   Age = c(900, 36, 235, 57, 53) ,
   Weight = c(130, 180, 150, 170, 160),
   Height = c(66, 109, 228, 182, 172)
   
   )

# subsets ---------------------------------------------------------------------
df[1,] #
df[,2]
df[1:3, 1]

subset <- df[df$Age >234, ]
subset

subset(df, Age > 100 & Weight < 200)



# New colum -----------------------------------------------------------------
df$Heigth <- c(66, 109, 228, 182, 172)
df

df$Jedi <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
df

# New rows ----------------------------------------------------------------
new_row <- data.frame(Name= "Darth Vander",
                      Age=45,
                      Weight= 120,
                      Height= 202,
                      Jedi=F)
new_row

df <- rbind(df, new_row)
df

# Names -------------------------------------------------------------------
colnames(df) <- c('Characther', "Age (yrs)",
                  'Weight (Kgs)',
                  "Height (m)",
                  'Jedi')
df1

str(df)

df2 <- data.frame(
  Character = c("Yoda", "Luke Skywalker", "Chewbacca", "R2_D2", 
  "Obi-Wan Kenobi", "Darth Vade"),
Planet = c("Dagobah", "Tatooine", "Kashyyyk", "Naboo", "Stewjon", "Tatooine")
)

merged_df <- merge(df, df2, by = 'Character')
merged_df
                  