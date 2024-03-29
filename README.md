# Multi Dimensional Scaling (MDS)

MDS is used for non-linear dimension reduction. MDS works for proximity data, that is, data expressing the similarity or dissimilarity between pairs of objects. It finds a low-dimensional representation of the data that preserves the pairwise dissimilarities. Ideally, data points that are close in the high dimensional space will remain close to each other after the mapping. MDS is often used for data visualization to reveal the structure of a data set by plotting points in two or three dimensions.

## Types of MDS
- Classical MDS.
- Metric MDS.
- Non-Metric MDS.

## Steps to MDS
1. Convert similarity to dissimilarity matrix.
2. Apply Non-Metric when the values can't be trusted but their order can.
3. Try using different seeds when running code.
4. Plot stress function vs # dimensions to choose dimensions.
5. Review goodness of fit with a Shepard diagram.

## Examples

### Euro Data Set
The euro data set provides the road distances (in kilometers) between 21 cities in Europe. We are interested in using the classical MDS to recover the coordinates of these cities and display them in two dimensions.

### Crimes Data Set
The crimes dataset contains correlation information between seven types of crime. Our objective is to map these seven crimes to seven points in a geometric space. The proximity of two points in the MDS (Multidimensional Scaling) solution indicates a higher correlation between the crimes they represent.

### Wish Data Set
In a study conducted by Wish (1971), researchers aimed to identify the attributes individuals use in assessing the similarity of various countries. The experiment involved 18 students who were tasked with rating each pair of 12 different countries based on their overall similarity, using a scale from 1 for "extremely dissimilar" to 9 for "extremely similar". The aggregated similarity ratings, averaged across all 18 respondents, are accessible in the 'smacof' package.

**Note:** Interpretations drawn from MDS plots are hypotheses about what attributes respondents consider. However, their validity can't be confirmed with the available data; MDS only suggests they're compatible with the observations.
