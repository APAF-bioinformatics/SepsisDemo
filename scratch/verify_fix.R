library(ggplot2)
library(dplyr)
library(tidytext)

# Source the modified file
source("/Users/ignatiuspang/Workings/2025/ApafWorkshop/my_analysis/scripts/integration/rank_enrichment_stringdb.R")

# Create mock data missing 'direction' and 'comparison'
mock_data <- data.frame(
  category = c("GO BP", "GO BP", "KEGG"),
  termDescription = c("Immune system process", "Metabolic process", "Glycolysis"),
  enrichmentScore = c(2.5, 1.8, 3.1),
  falseDiscoveryRate = c(0.01, 0.045, 0.005),
  genesMapped = c(50, 30, 65),
  stringsAsFactors = FALSE
)

# Test the function
message("Testing printStringDbFunctionalEnrichmentBarGraph with missing columns...")
plot_obj <- tryCatch({
  printStringDbFunctionalEnrichmentBarGraph(mock_data)
}, error = function(e) {
  message(paste("Error caught:", e$message))
  NULL
})

if (!is.null(plot_obj)) {
  message("Success! Plot object created without error.")
} else {
  message("Failure: Error still persists or column check failed.")
}

# Test with all columns
mock_data_full <- mock_data %>%
  mutate(direction = "top", comparison = "Group A")

message("Testing with all columns...")
plot_obj_full <- tryCatch({
  printStringDbFunctionalEnrichmentBarGraph(mock_data_full)
}, error = function(e) {
  message(paste("Error caught:", e$message))
  NULL
})

if (!is.null(plot_obj_full)) {
  message("Success! Plot object created with full data.")
}
