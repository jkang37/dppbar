% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/distribution_plot.R
\name{distribution_plot}
\alias{distribution_plot}
\title{Multiple Type Distribution Plot}
\usage{
distribution_plot(dataframe,ctg.idx=NA,num.idx,type='histogram',
                         xaxis_name,labels=NA,yaxis_name,title,...)
}
\arguments{
\item{...}{other layout parameters, usually paper_bgcolor or margin.
See \code{\link[plotly]{layout}}}

\item{dataframe:}{a dataframe object}

\item{ctg.idx:}{a character or an integer, indicate which column will be selected as the
categorical variable that will be used to split the numerical variable in box or
violin plot, default to NA}

\item{num.idx:}{a vector of character or an integer, indicate which column
will be selected as the numerical variable to show distribution with}

\item{type:}{a string of either 'histogram', 'violin' or 'box', decide the way to show
distribution, default to 'histogram'. See "Details" for more information}

\item{xaxis_name:}{name of x axis}

\item{tick_text:}{a vector of string, tick text that will be applied to box or violin plot}

\item{yaxis_name:}{name of y axis}

\item{title:}{the the title of the plot}
}
\value{
This function will return an object of class plotly. By calling this function you
will get either a histogram plus kernel, a violin plot or a box plot, based on
customer choice.
}
\description{
\code{distribution_plot} shows the distribution of a particular numerical variable.
One can also specify a categorical variable to make box plot or violin plot to display
the distribution in different category.
}
\details{
If type is 'histogram', then a histogram together with a kernel estimation will be
displayed. If type is 'violin', a violin plot with box will be displayed, and if
type is 'box' then a box plot with outliers will be displayed.
}
\examples{
data("tmall_milk_sales")
distribution_plot(dataframe=tmall_milk_sales,ctg.idx=NA,num.idx='unit_weight',
                  type='histogram',xaxis_name='单位净含量（克）',
                  yaxis_name='产品数量（件）',title='线上销售乳制品单位净含量分布')
distribution_plot(dataframe=tmall_milk_sales,ctg.idx=11,num.idx='unit_weight',
                  type='violin',xaxis_name='销量情况',
                  tick_text=c('热销产品','普通产品','滞销产品'),
                  yaxis_name='单位净含量（克）',
                  title='线上销售乳制品单位净含量按销量分布',paper_bgcolor='#ccece6')
distribution_plot(dataframe=tmall_milk_sales,ctg.idx=2,num.idx='unit_weight',
                  type='box',xaxis_name='销量情况',
                  tick_text=c('酸奶产品','牛奶产品'),
                  yaxis_name='单位净含量（克）',
                  title='线上销售乳制品单位净含量按产品线分布',
                  paper_bgcolor='#ccece6',margin=list(t=36,l=36,b=36,l=10))
}
\seealso{
\code{\link[plotly]{plot_ly}}, \code{\link[plotly]{layout}}
}
