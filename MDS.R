# Load the 'smacof' library for multidimensional scaling
library(smacof)

# Load the 'wish' dataset
wish

# Convert the 'wish' dataset into a dissimilarity matrix using method 7
diss <- sim2diss(wish, method = 7) 

# Set the seed for reproducibility
set.seed(1)

# Perform multidimensional scaling (MDS) on the dissimilarity matrix with ordinal scaling
res <- mds(diss, type = "ordinal")

# Plot the MDS solution with aspect ratio set to 1
plot(res, asp = 1)

# Load the 'eurodist' dataset
data(eurodist)

# Assign the 'eurodist' dataset to 'euromat'
euromat <- eurodist 

# Apply classical multidimensional scaling (MDS) to 'euromat' with 2 dimensions
euro.cmds <- cmdscale(euromat, k = 2) 

# Plot the MDS solution with Coordinate 1 and Coordinate 2 as the axes
plot(euro.cmds[, 1], euro.cmds[, 2], xlab = "Coordinate1", 
     ylab = "Coordinate2", main = "Classical MDS", type = "n", asp = 1) 

# Add labels to the points corresponding to countries
text(euro.cmds[, 1], euro.cmds[, 2], labels = labels(euromat), cex = 0.7)

# Print the 'crimes' correlation matrix
print(crimes)

# Convert the correlation matrix 'crimes' into a dissimilarity matrix
crime.dist <- sim2diss(crimes, method = "corr") 

# Set the seed for reproducibility
set.seed(1) 

# Apply multidimensional scaling (MDS) to the dissimilarity matrix
crime.mds <- mds(crime.dist, ndim = 2, type = "interval")

# Plot the MDS solution with Axis 1 and Axis 2 as the axes
plot(crime.mds, xlab = "Axis1", ylab = "Axis2")

# Perform MDS with 1 dimension on the dissimilarity matrix 'crime.dist'
crime.mds1 <- mds(crime.dist, ndim = 1, type = "interval")

# Plot the configuration of points on Axis 1
plot(crime.mds1$conf, rep(0, 7), xlab = "Axis 1", ylab = "", yaxt = "n")

# Add labels to the points corresponding to crime types
text(crime.mds1$conf, 0.5 + rep(0, 7), labels = names(crimes), cex = 0.7)

# Set up the plotting parameters to arrange the plots together
par(mfrow = c(1, 2))

# Plot the Shepard diagram for the 2D MDS solution
plot(crime.mds, plot.type = "Shepard", main = "Shepard diag. 2D")

# Plot the Shepard diagram for the 1D MDS solution
plot(crime.mds1, plot.type = "Shepard", main = "Shepard diag. 1D")

# Reset the plotting parameters
par(mfrow = c(1, 1))

# Calculate the Pearson correlation between the fitted distances and original correlation matrix for the 1D MDS solution
cor_1d <- cor(as.matrix(crime.mds1$confdist)[lower.tri(crime.mds1$confdist)], as.matrix(crimes)[lower.tri(crimes)])
# Print the correlation for the 1D MDS solution
print(paste("Pearson correlation 1-D:", round(cor_1d,2)))

# Calculate the Pearson correlation between the fitted distances and original correlation matrix for the 2D MDS solution
cor_2d <- cor(as.matrix(crime.mds$confdist)[lower.tri(crime.mds$confdist)], as.matrix(crimes)[lower.tri(crimes)])
# Print the correlation for the 2D MDS solution
print(paste("Pearson correlation 2-D:", round(cor_2d,2)))

# In a study conducted by Wish (1971), researchers aimed to identify the attributes individuals use in assessing the similarity of various countries. The experiment involved 18 students who were tasked with rating each pair of 12 different countries based on their overall similarity, using a scale from 1 for "extremely dissimilar" to 9 for "extremely similar". The aggregated similarity ratings, averaged across all 18 respondents, are accessible in the 'smacof' package.

# Convert the 'wish' dataset into a dissimilarity matrix using method 7
diss <- sim2diss(wish, method = 7) 

# Set the seed for reproducibility
set.seed(1)

# Perform multidimensional scaling (MDS) on the dissimilarity matrix with ordinal scaling
res <- mds(diss, type = "ordinal")

# Plot the MDS solution with aspect ratio set to 1
plot(res, asp = 1)

