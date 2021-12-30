# Install R packages

fullpackages <- readLines('packages-R-full.txt')

print(fullpackages)

dir.create("~/R/R-library-primary1")

install.packages(fullpackages,
                 repos = 'https://cloud.r-project.org',
                 lib = "~/R/R-library-primary")
