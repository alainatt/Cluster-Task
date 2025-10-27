# generate_normals.R
set.seed(123)

# Detect working directory safely
args <- commandArgs(trailingOnly = FALSE)
file_arg <- grep("^--file=", args, value = TRUE)

if (length(file_arg) > 0) {
  script_dir <- dirname(normalizePath(sub("^--file=", "", file_arg)))
} else {
  script_dir <- getwd()
}

# Create output folder relative to the script directory
output_dir <- file.path(script_dir, "output")
dir.create(output_dir, showWarnings = FALSE, recursive = TRUE)

# Generate 1000 normal random variables
x <- rnorm(1000, mean = 0, sd = 1)

# Save to CSV
output_path <- file.path(output_dir, "normals.csv")
write.csv(x, output_path, row.names = FALSE)

cat("File saved to:", output_path, "\n")
