# Portfolio-Data-Science - Sue Yang
Data Science Portfolio 

- **Email**: [sueyang035@gmail.com](sueyang035@gmail.com)
- **LinkedIn**: [www.linkedin.com/in/sue-yang-510666b6](www.linkedin.com/in/sue-yang-510666b6)

## Projects

<img align="left" width="200" height="180" src="https://github.com/sueyang035/Portfolio-Data-Science/blob/main/music.webp"> **[Music Genre Classification/Multiclass classification - Python](https://github.com/jjbocek/ToxicApp.git)**

#### Models & Dataset
SVM and Random Forest were applied to classify ten music genres from the GTZAN dataset, which
contains 9,990 entries of music records with 60 audio features. Precision, Recall and F1 scores were key metrics to
evaluate model performance.
#### Feature Engineering
Techniques such as low variance filter, univariate filter, recursive feature elimination, wrapper
methods, and PCA were implemented to reduce dimensionality and improve model performance.

#### Results

SVM with RBF kernel outperformed Random Forest, achieving a test accuracy of 93%. Random Forest
exhibited a test accuracy of 86%; Among feature selection methods, wrapper methods with SVM demonstrated the best
results with test accuracy of 88%.



#
<br />

<img align="left" width="200" height="180" src="https://github.com/sueyang035/Portfolio-Data-Science/blob/main/song.webp"> **[Song Recommendation System - Python](https://github.com/Celinejxy/JESTER-DS)**

#### Models & Dataset:
Date from Million Song Dataset subset of 10,000 songs.
Alternating least squares(ALS) and item-based collaborative-filtering(IBCF) algorithms were built for music recommendation system. Three sub models are developed to predict/recommend songs. All three models are tested with cross-validated and compared using customized rating. 

#### Feature Analysis
Explored 7 categorical & 22 numerical features. Pinned artists' locations with geospatial mapping.
#### Results
Collaborative filtering model had a hit rate of 66% using Jaccard similarity and 48% with Cosine similarity.



#
<br />

<img align="right" width="250" height="180" src="https://github.com/sueyang035/Portfolio-Data-Science/blob/main/diabetes.jpg"> **[Prediction of the percentage of the diabetic population within US - R](https://github.com/Celinejxy/Predicting-Consumer-Spending.git)**

#### Models and Dataset
Implemented multiple regression techniques (OLS, Ridge, LASSO) to identify the best model for
diabetes prediction based on health and socioeconomic factors. Dataset consists of 3K records and 22 variables.
#### Feature Analysis
Performed exploratory data analysis (EDA) and principal factor analysis.
#### Results
OLS model yielded the lowest RMSE = 1.05. The strongest predictors of the diabetic population percentage
were obesity, physical inactivity, child poverty, and housing cost burden.
#
<br />

<img align="right" width="250" height="180" src="https://github.com/sueyang035/Portfolio-Data-Science/blob/main/fire.webp"> **[Visulization of California Fire Dataset - Python & Tableau ]()**

Utilized Python and Tableau to visulize scale and impact of fire.
Location mapping included. 

#

<br />


## Micro Projects

- ### Statistics and Machine Learning

- #### **[Create and udpate database - SQL & SQLite]()**:

I implemented KNN and Rocchio methods with TFIDF for text categorization. The output has shown that the most optimal kNN classifer outperforms the Rocchio classifer by approximately 1.5%, while with constantly better accuracy rate regardless of the number of K. While the dataset is large and the classes may not be linearly separable, kNN can handle complex classes better than Rocchio, which has a high bias and low variance.

 - #### [Data Analysis - SPSS](linear_regression)
Performed standard multiple linear regression, lasso regression, rigid regression, and stochastic gradient descent for regression algorithms with feature selection methods. Finally, perform model selection to find the best "l1_ratio" parameter using SGDRegressor with  the "elasticnet" penalty parameter. 

- #### [Classifying/Predicting Modelling with scikit_Learn ](Classification)
Implement exploratory analysis and different algorithms including lineaer regression, kNN, decision tree, Naive Bayes, and linear discriminant analysis with cross-validations on the wine quality and diabetes dataset. 

In this process, wine quality is modeled based on physicochemical tests by using various ML models and approaches as well as PCA for Dimension Reduction. 
Models include K-NN, SVM, Decision Trees and Clustering, where each model’s performance was analyzed using precision and recall.Results shows that the KNN algorithm has the best accuracy with a precision value of 98%. In comparison, the SVM will occasionally misclassify an item in the minority class, whereas the Decision trees are able to generate understandable rules without requiring much computation and prior knowledge
- #### [Bayesian Statistics]:
Bayesian statistics and how prior assumption reflects posterior probabilities using Gun control example. 

 - ####  [Clustering on Newsgroup Subsets](KMeans_Newsgroup_subset)

In this file, I implemented KMeans Clustering based on TFIDF_transformed text dataset. For analyzing results, I have wwritten a function to display the top N terms in each cluster sorted by the cluster DF values for each term, the centroid weights for each term in the top N terms in the cluster (mean TFxIDF weight of the term), and the size of the cluster.
 
## Core Competencies

- **Programming**: Python (Pandas, Numpy, Scikit-Learn, Scipy, Keras, Matplotlib), R (Dplyr, Tidyr, Ggplot2), SAS, SQL;
- **Analysis**: A/B Testing and Experimentation Design, Statistical Inference, Big Data Analytics, Tableau; 
- **Machine Learning**: Regression, Decision Trees, Ensemble methods, Feature Engineering;
