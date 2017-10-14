query<-"SELECT name,HR
FROM Teams
WHERE yearID=1980
ORDER BY HR"

result<-sqldf(query)

#visualizing the data----------------------------------------

ggplot()+
  geom_bar(data=result,aes(x=name,y=HR),stat='identity',color='blue',fill='white')+
  coord_flip()

resultSname<-factor(resultSname,levels=resultSname)+
  ylab('homeruns')+
  xlab('team')+
  ggtitle('1980 Team Homeruns Distribution')

