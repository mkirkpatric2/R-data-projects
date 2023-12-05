```{r}
library(tidyverse)
library(usmap)
library(ggplot2)
library(readxl)
```

# Step 1: Read data in. Extract relevant data. Rewrite headers for ease of use.

```{r}
edu <- read_excel('Education.xlsx')

# extract relevant columns and rewrite headers to be easier to work with

no_hs <- select(edu, "Federal Information Processing Standard (FIPS) Code",
                "State",	"Area name", 
                "Less than a high school diploma, 1970",
                "Percent of adults with less than a high school diploma, 1970",
                "Less than a high school diploma, 1980",
                "Percent of adults with less than a high school diploma, 1980",
                "Less than a high school diploma, 1990",
                "Percent of adults with less than a high school diploma, 1990",
                "Less than a high school diploma, 2000",
                "Percent of adults with less than a high school diploma, 2000",
                "Less than a high school diploma, 2008-12",
                "Percent of adults with less than a high school diploma, 2008-12",
                "Less than a high school diploma, 2017-21",
                "Percent of adults with less than a high school diploma, 2017-21")

colnames(no_hs)[c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)] <- 
  c("fips", "state", "area", "1970", "percent_1970", "1980", "percent_1980", 
    "1990", "percent_1990", "2000", "percent_2000", "2008-2012",
    "percent_2008-2012", "2017-2021", "percent_2017-2021")

```

## Build the graphs

```{r}
p1970 <- plot_usmap(data = no_hs, values = "percent_1970", regions = "counties") + 
  labs(title="% Of Adults with less than a highschool degree - 1970")+
  scale_fill_continuous(name="% of adults", label=scales::comma)+theme(legend.position = "right")
p1970

```

```{r}
p1980 <- plot_usmap(data = no_hs, values = "percent_1980", regions = "counties") + 
  labs(title="% Of Adults with less than a highschool degree - 1980")+
  scale_fill_continuous(name="% of adults", label=scales::comma)+theme(legend.position = "right")
p1980
```

```{r}
p1990 <- plot_usmap(data = no_hs, values = "percent_1990", regions = "counties") + 
  labs(title="% Of Adults with less than a highschool degree - 1990")+
  scale_fill_continuous(name="% of adults", label=scales::comma)+theme(legend.position = "right")
p1990
```

```{r}
p2000 <- plot_usmap(data = no_hs, values = "percent_2000", regions = "counties") + 
  labs(title="% Of Adults with less than a highschool degree - 2000")+
  scale_fill_continuous(name="% of adults", label=scales::comma)+theme(legend.position = "right")
p2000
```

```{r}
p2008_2012 <- plot_usmap(data = no_hs, values = "percent_2008-2012", regions = "counties") + 
  labs(title="% Of Adults with less than a highschool degree - 2008-2012")+
  scale_fill_continuous(name="% of adults", label=scales::comma)+theme(legend.position = "right")
p2008_2012
```

```{r}
p2017_2021 <- plot_usmap(data = no_hs, values = "percent_2017-2021", regions = "counties") + 
  labs(title="% Of Adults with less than a highschool degree - 2017-2021")+
  scale_fill_continuous(name="% of adults", label=scales::comma)+theme(legend.position = "right")
p2017_2021
```
