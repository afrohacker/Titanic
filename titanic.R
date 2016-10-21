#-------------------------------------------------------------
# Now, to explore the Titanic...
#
# First of all, this script assumes the data set (.csv file)
# is in the same working directory as the script running it.
#-------------------------------------------------------------
library(ggplot2)
library(dplyr)

Titanic = read.csv("titanic.csv")

# I think we can all agree we don't really need the names or cabin names for much
Titanic = select(Titanic, -name, -cabin)
ggplot(Titanic) + geom_jitter(aes(x=pclass, y=fare, color=survived))

#A lot of other interesting things you could do with this data, I'm sure. Go wild. Nothing more for me to do here.