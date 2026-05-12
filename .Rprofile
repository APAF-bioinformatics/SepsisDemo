if (interactive()) {
  message("Initializing project...")
  if (!requireNamespace("later", quietly = TRUE)) install.packages("later")
  if (!requireNamespace("rstudioapi", quietly = TRUE)) install.packages("rstudioapi")
  later::later(function() {
    Sys.sleep(2) # Brief pause
    workflow_path_to_open <- "scripts/proteomics/DIA_workflow_starter.rmd"
    if (file.exists(workflow_path_to_open) && rstudioapi::isAvailable()) {
      message("Attempting to open workflow: ", workflow_path_to_open)
      try(rstudioapi::navigateToFile(workflow_path_to_open))
    } else {
      message("Could not automatically open workflow. Path checked: ", workflow_path_to_open)
    }
    workflow_path_to_open <- "scripts/metabolomics/metabolomics_workflow_starter.rmd"
    if (file.exists(workflow_path_to_open) && rstudioapi::isAvailable()) {
      message("Attempting to open workflow: ", workflow_path_to_open)
      try(rstudioapi::navigateToFile(workflow_path_to_open))
    } else {
      message("Could not automatically open workflow. Path checked: ", workflow_path_to_open)
    }
    workflow_path_to_open <- "scripts/integration/integration_workflow_starter.rmd"
    if (file.exists(workflow_path_to_open) && rstudioapi::isAvailable()) {
      message("Attempting to open workflow: ", workflow_path_to_open)
      try(rstudioapi::navigateToFile(workflow_path_to_open))
    } else {
      message("Could not automatically open workflow. Path checked: ", workflow_path_to_open)
    }
  }, 3) # End later
} # End interactive
