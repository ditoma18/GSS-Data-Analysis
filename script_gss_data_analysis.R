
## 1. Loading the Required Libraries
library(haven)    # For importing SAS files
library(tidyverse) # For data manipulation & visualization
library(corrplot)  # For correlation plots

# 2. Importing the GSS Datase
gss_data <- read_sas("C:/Users/HP/Downloads/2021/2021/gss2021.sas7bdat")
glimpse(gss_data)  # Overview of the dataset

# 3. Data Cleaning & Selection
gss_subset <- gss_data %>%
  select(EDUC, REALINC) %>%  # Selecting education and income variables
  drop_na()  # Removing missing values
summary(gss_subset)

# 4. Statistical Analysis
## 4.1 Correlation between Education and Income
correlation <- cor(gss_subset$EDUC, gss_subset$REALINC, use = "complete.obs")
correlation

## 4.2 Linear Regression
model <- lm(REALINC ~ EDUC, data = gss_subset)
summary(model)

# 5. Data Visualization
## 5.1 Scatter Plot with Regression Line
ggplot(gss_subset, aes(x = EDUC, y = REALINC)) +
  geom_point(alpha = 0.5) +
  geom_smooth(method = "lm", col = "blue") +
  labs(title = "Relation between Education Level and Income",
       x = "Years of Education",
       y = "Real Income")

## 5.2 Multiple linear regression
model_multi <- lm(REALINC ~ EDUC + AGE + HRS1, data = gss_data)
summary(model_multi)

## 6. Interprétation des Résultats
### 6.1 Analyse des Coefficients
# Affichage des résultats de la régression multiple
summary(model_multi)

### 6.2 Qualité du Modèle

# Affichage du R² et de la p-value globale
summary(model_multi)$r.squared
summary(model_multi)$adj.r.squared

### 6.3 Comparaison avec la Régression Simple

summary(model)$r.squared
summary(model_multi)$r.squared


# Ajout possible d'autres variables
# Exemple : régression incluant le genre
model_gender <- lm(REALINC ~ EDUC + AGE + HRS1 + SEX, data = gss_data)
summary(model_gender)
  
# 5.2 Correlation Matrix
  # Selecting relevant variables
gss_corr <- gss_data %>%
  select(EDUC, REALINC, AGE, HRS1) %>% 
  drop_na()

# Computing correlation matrix
corr_matrix <- cor(gss_corr)

# Plotting correlation matrix
corrplot(corr_matrix, method = "color", tl.col = "black", tl.srt = 45)