# Read full package list
fullpackages <- readLines('packages-R-full.txt')

# Print full package list
print(fullpackages)

# Path to primary library
library <- "~/R/R-library-primary"

# Create folder if not already present
dir.create(library)

# Set primary library path
.libPaths(library)

# Install R packages to primary library path
install.packages(fullpackages,
                 repos = 'https://cloud.r-project.org',
                 lib = library)
