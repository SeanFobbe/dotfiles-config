# Install R packages

fullpackages <- readLines('packages-R-full.txt')

print(fullpackages)

install.packages(fullpackages,
                 repos = 'https://cloud.r-project.org')
