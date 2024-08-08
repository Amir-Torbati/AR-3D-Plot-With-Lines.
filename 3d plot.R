install.packages("plotly")
library(plotly)


# Set seed for reproducibility
set.seed(123)

# Generate sample data
time <- seq(as.Date("2024-01-01"), as.Date("2024-01-10"), by = "day")
generation_sources <- c("Solar", "Wind", "Nuclear", "Hydro", "Gas")
data <- expand.grid(Time = time, Source = generation_sources)
data$Generation <- round(runif(nrow(data), min = 50, max = 500), 2)

# View the sample data
head(data)

# Create a 3D plot with lines and markers
fig <- plot_ly(data, x = ~Time, y = ~Source, z = ~Generation, type = "scatter3d", mode = "lines+markers", marker = list(size = 5), line = list(width = 2), color = ~Source) %>%
  layout(scene = list(xaxis = list(title = 'Time'),
                      yaxis = list(title = 'Generation Source'),
                      zaxis = list(title = 'Electricity Generation (MW)')))

# Save the plot as an HTML file
htmlwidgets::saveWidget(as_widget(fig), "ElectricityDispatchSpainWithLines.html")

# Display the plot in RStudio
fig
