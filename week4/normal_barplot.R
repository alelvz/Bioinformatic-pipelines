# Load necessary libraries
library(readr)
library(ggplot2)

# Define a function to load data, count occurrences, and generate a bar plot
generate_plot <- function(file_path, output_file) {
  # Read the CSV file without showing column type messages
  data <- read_csv(file_path, show_col_types = FALSE)
  
  # Count the occurrences of each cytokine condition
  counts <- table(data$cytokine.condition)
  
  # Convert the table to a dataframe for ggplot2
  counts_df <- as.data.frame(counts)
  names(counts_df) <- c("CytokineCondition", "Frequency")
  
  # Filter for the specific conditions of interest
  conditions_of_interest <- c("Th17", "Th0", "iTreg", "Th2")
  filtered_counts <- subset(counts_df, CytokineCondition %in% conditions_of_interest)
  
  # Create the bar plot
  p <- ggplot(filtered_counts, aes(x = CytokineCondition, y = Frequency, fill = CytokineCondition)) +
    geom_bar(stat = "identity") +
    theme_minimal() +
    labs(title = paste("Frequency of Cytokine Conditions in", gsub(".*/", "", file_path)), 
         x = "Cytokine Condition", y = "Frequency")
  
  # Print the plot
  print(p)
  
  # Save the plot
  ggsave(output_file, plot = p, width = 8, height = 6)
}

# Generate and save plots for both Memory and Naive T cells metadata
generate_plot("Memory_Tcells_metadata.csv", "memory_tcells_cytokine_condition_frequency_plot.pdf")
generate_plot("Naive_Tcells_metadata.csv", "naive_tcells_cytokine_condition_frequency_plot.pdf")
