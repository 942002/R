library(quantmod)
library(ggplot2)
library(PerformanceAnalytics)
library(PortfolioAnalytics)
library(timetk)
DaburIndia=getSymbols('DABUR.NS',from='2012-12-01',to='2022-12-01',auto.assign = F)
DaburIndia
head(DaburIndia)
tail(DaburIndia)
dim(DaburIndia)
str(DaburIndia)
View(DaburIndia)
summary(DaburIndia)
plot(DaburIndia$DABUR.NS.Close)
chartSeries(DaburIndia,type=c('candlesticks'))
zoomChart('2012-01-01::2017-01-01')
chartSeries(DaburIndia$DABUR.NS.Close)

Daburclose=na.omit(DaburIndia$DABUR.NS.Close)
Daburclose
DReturns=na.omit(dailyReturn(Daburclose))
DReturns
View(DReturns)
Dlogreturns=na.omit(dailyReturn(Daburclose),type='log')
Dlogreturns
dim(Dlogreturns)
cor.test(Daburclose,DReturns)
cor.test(Daburclose,Dlogreturns)
annualReturn(Daburclose)/100
format(annualReturn(Daburclose)/100, scientific = F)

mean(DaburIndia$DABUR.NS.Close,na.rm=T)
sd(DaburIndia$DABUR.NS.Close,na.rm = T)/100

# Let's calculate short term, medium and long term Moving Average
# Short term moving Average= 50 Day
# Medium term moving Average= 100 Day
# Long term moving Average= 200 Day
# Moving Averages act as a support level as well as Resistance level.
# Crossovers occurs above or below the Moving Averages
# Price Crosses below the moving Average- Sell Immediately
# Price Crosses above the moving Average- BUY
# Second Strategy- Based on 2 Moving Averages
# When short term moving average crosses above the long term moving average- BUY Signal also called as Golden Cross.
# When short term moving average crosses below the long term moving average- SELL Signal also called as Death Cross.

addSMA(50,col = 'Red')
addSMA(100,col='Green')
addSMA(200,col='Yellow')

# Volatility Indicators- Standard Deviation
sd(DaburIndia$DABUR.NS.Close,na.rm = TRUE)

# Bollinger Bands
chartSeries(DaburIndia,type = c('candlesticks'))
addBBands()
zoomChart('2022-01-01::')
# Uses Upper bands and Lower Bands as Price Targets.
# Upper Band acts as Resistance level
# Lower Bands acts as Support Level.
# Price continuously touches the lower band- Overselling
# Price continuously touches the Upper band- Overbuying.

# 3. Momentum Indicators- Leading Indicators
# Relative Strength Indicator(RSI)
# The values of RSI lies between 0 and 100.
# The values of RSI above 70- Overbuying and Overvalued- SELL
# The values of RSI above 30- Overselling and undervalued- Do not buy.
# The values of RSI between 40 and 60 - Right Range for Buying.
addRSI(DaburIndia$DABUR.NS.Close)
addRSI(n=30)

# 4. Volume Indicator
# Leading Indicator- Chaikin Oscillator
# Monitors the money flow in and out of a market
MACD()

# Back testing- Testing on the Investment Strategy on Historical Data.
Dabur=DaburIndia['2012-12-01::']
Dabur
View(Dabur)

DaburIndia1= na.omit(Dabur$DABUR.NS.Close)
DaburIndia1
dim(DaburIndia1)
sma200= SMA(DaburIndia1,200)
sma50= SMA(DaburIndia1,50)
DaburIndiadf= data.frame(DaburIndia1,sma200,sma50)
colnames(DaburIndiadf)=c('DaburIndia','sma200','sma50')
View(DaburIndiadf)
plot(DaburIndiadf)

library(tidyr)
library(dygraphs)

dygraph(DaburIndiadf[2:3],
        main='DaburIndia') %>%
  dySeries('sma200',label='sma200')%>%
  dySeries('sma50',label='sma50')%>%
  dyRangeSelector(height = 40)

dygraph(DaburIndiadf,
        main='DaburIndia') %>%
  dySeries('sma200',label='sma200')%>%
  dySeries('sma50',label='sma50')%>%
  dyRangeSelector(height = 40)

#Marico India
library(quantmod)
Maricoind=getSymbols('MARICO.NS',from='2012-12-01',to='2022-12-31',auto.assign = F)
Maricoind
head(Maricoind)
tail(Maricoind)
dim(Maricoind)
str(Maricoind)
View(Maricoind)
summary(Maricoind)
plot(Maricoind$MARICO.NS.Close)
chartSeries(Maricoind$MARICO.NS.Volume)
annualReturn(Maricoind)*100
mean(Maricoind$MARICO.NS.Close,na.rm= T)
sd(Maricoind$MARICO.NS.Close,na.rm = T)
chartSeries(Maricoind,type = c('candlesticks'))
addBBands()
zoomChart('2022-01-01::')
# Uses Upper bands and Lower Bands as Price Targets.
# Upper Band acts as Resistance level
# Lower Bands acts as Support Level.
# Price continuously touches the lower band- Overselling
# Price continuously touches the Upper band- Overbuying.

# 3. Momentum Indicators- Leading Indicators
# Relative Strength Indicator(RSI)
# The values of RSI lies between 0 and 100.
# The values of RSI above 70- Overbuying and Overvalued- SELL
# The values of RSI above 30- Overselling and undervalued- Do not buy.
# The values of RSI between 40 and 60 - Right Range for Buying.
addRSI(Maricoind$MARICO.NS.Close)
addRSI()

# 4. Volume Indicator
# Leading Indicator- Chaikin Oscillator
# Monitors the money flow in and out of a market
MACD()

# Back testing- Testing on the Investment Strategy on Historical Data.
Marico=Maricoind['2012-12-01::']
Marico
View(Marico)

Marico1= na.omit(Maricoind$MARICO.NS.Close)
Marico1
dim(Marico1)
sma200= SMA(Marico1,200)
sma50= SMA(Marico1,50)
Maricodf= data.frame(Marico1,sma200,sma50)
colnames(Maricodf)=c('Maricoind','sma200','sma50')
View(Maricodf)
plot(Maricodf)

library(tidyr)
library(dygraphs)

dygraph(Maricodf[2:3],
        main='MaricoIndia') %>%
  dySeries('sma200',label='sma200')%>%
  dySeries('sma50',label='sma50')%>%
  dyRangeSelector(height = 40)

dygraph(DaburIndiadf,
        main='MaricoIndia') %>%
  dySeries('sma200',label='sma200')%>%
  dySeries('sma50',label='sma50')%>%
  dyRangeSelector(height = 40)


#Eidparry India
EIDIndia=getSymbols('EIDPARRY.NS',from='2012-12-01',to='2022-12-01',auto.assign = F)
EIDIndia
head(EIDIndia)
tail(EIDIndia)
dim(EIDIndia)
str(EIDIndia)
View(EIDIndia)
summary(EIDIndia)
plot(EIDIndia$EIDPARRY.NS.Close)
chartSeries(EIDIndia,type=c('candlesticks'))
addSMA(500,col = 'red')
addSMA(750,col = 'green')
addSMA(1000,col = 'blue')
addBBands()
zoomChart('2022-01-01::')
# Uses Upper bands and Lower Bands as Price Targets.
# Upper Band acts as Resistance level
# Lower Bands acts as Support Level.
# Price continuously touches the lower band- Overselling
# Price continuously touches the Upper band- Overbuying.

# 3. Momentum Indicators- Leading Indicators
# Relative Strength Indicator(RSI)
# The values of RSI lies between 0 and 100.
# The values of RSI above 70- Overbuying and Overvalued- SELL
# The values of RSI above 30- Overselling and undervalued- Do not buy.
# The values of RSI between 40 and 60 - Right Range for Buying.
addRSI(EIDIndia$EIDPARRY.NS.Close)
addRSI()

# 4. Volume Indicator
# Leading Indicator- Chaikin Oscillator
# Monitors the money flow in and out of a market
MACD()

# Back testing- Testing on the Investment Strategy on Historical Data.
Eid=EIDIndia['2012-12-01::']
Eid
View(Eid)

Eid1= na.omit(EIDIndia$EIDPARRY.NS.Close)
Eid1
dim(Eid1)
sma200= SMA(Eid1,200)
sma50= SMA(Eid1,50)
Eiddf= data.frame(Marico1,sma200,sma50)
colnames(Maricodf)=c('EIDind','sma200','sma50')
View(Eiddf)
plot(Eiddf)

library(tidyr)
library(dygraphs)

dygraph(Eiddf[2:3],
        main='EidIndia') %>%
  dySeries('sma200',label='sma200')%>%
  dySeries('sma50',label='sma50')%>%
  dyRangeSelector(height = 40)

dygraph(Eiddf,
        main='EidIndia') %>%
  dySeries('sma200',label='sma200')%>%
  dySeries('sma50',label='sma50')%>%
  dyRangeSelector(height = 40)

# Emami 
EmamiIndia=getSymbols('EMAMILTD.NS',from='2012-12-01',to='2022-12-31',auto.assign = F)
EmamiIndia
head(EmamiIndia)
tail(EmamiIndia)
dim(EmamiIndia)
str(EmamiIndia)
View(EmamiIndia)
summary(EmamiIndia)
plot(EmamiIndia$EMAMILTD.NS.Close)
chartSeries(EmamiIndia,type=c('candlesticks'))
addRSI()
addRSI(n=30)
BBands()
zoomChart('2022-01-01::')
# Uses Upper bands and Lower Bands as Price Targets.
# Upper Band acts as Resistance level
# Lower Bands acts as Support Level.
# Price continuously touches the lower band- Overselling
# Price continuously touches the Upper band- Overbuying.

# Jubiliant Foodworks
library(quantmod)
library(PerformanceAnalytics)
library(PortfolioAnalytics)
Jubilant=getSymbols('JUBLFOOD.NS',from='2012-12-01',to='2022-12-31',auto.assign = F)
Jubilant
head(Jubilant)
tail(Jubilant)
dim(Jubilant)
str(Jubilant)
View(Jubilant)
summary(Jubilant)
JubilantReturns=dailyReturn(Jubilant$JUBLFOOD.NS.Close)
JubilantReturns
Jclosen=na.omit(Jubilant$JUBLFOOD.NS.Close)
cor.test(Jubilant$JUBLFOOD.NS.Close,JubilantReturns)
Jubilantnre=na.omit(dailyReturn(Jubilant))
Jubilantnre
cor.test(Jclosen,Jubilantnre)
BBands()
zoomChart('2022-01-01::')
# Uses Upper bands and Lower Bands as Price Targets.
# Upper Band acts as Resistance level
# Lower Bands acts as Support Level.
# Price continuously touches the lower band- Overselling
# Price continuously touches the Upper band- Overbuying.


# Portfolio
symbols=c('DABUR.NS','MARICO.NS','EIDPARRY.NS','EMAMILTD.NS','JUBLFOOD.NS')
Portfolio=lapply(symbols,function(x){
  dailyReturn(na.omit(getSymbols(x,from='2012-12-01',to='2022-12-01',auto.assign =FALSE)))})
View(Portfolio)     

portfolio=do.call(merge.xts,Portfolio)
colnames(portfolio)=c('Dabur','Marico','EID Parry','Emami','Jubilant FoodWorks')
head(portfolio)
equal_wt=c(0.20,0.20,0.20,0.20,0.20)
Portfoiloreturn= Return.portfolio(portfolio, weights=equal_wt,rebalance_on = 'months',verbose = T)
Portfoiloreturn

portfolioannualreturn= Return.annualized(Portfoiloreturn$returns)
portfolioannualreturnStdDev.annualized(Portfoiloreturn$returns)
table.AnnualizedReturns(Portfoiloreturn$returns,Rf=0.065)
charts.PerformanceSummary(portfolio)