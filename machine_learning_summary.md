<h1> Summary of Machine Learning Model </h1>
<h2> Description</h2>
<p> The machine model used is the Random Forest classifier. This was used because the nature of the question asked, are we able to predict gold medal winners, involved classification & I achieved the best results with this model. I also tested neural networks, but had substantially less accurate results.</p>
<h2> Preprocessing</h2>
<p> To prepare the data beyond what Stephenie has completed for deliverable 1, we created a SQL database using Posgres & combined the medals & results data sets to have a table that had game location, country of the winner, and medal type. I wanted to give the classifier as many different variables as possible, since the stories of the winners are so inherently diverse, but also removed columns that weren't important to the analysis, and left only game location, game season, discipline title, gender, medal type, participant type, and country name. In order to ensure that the data was as accurate as possible, I combined countries with historically different names (for example Russian Federation vs. USSR vs. Russia). Also, we utilized binning to condense the countries to show only countries with more than 600 entries, all others were moved to the "other" category. Binning was also used to condense the discipline titles to any with more than 790 entries being listed, and the rest being labeled "other." From there, I converted the metal types from string (Gold, Silver, and Bronze) to integers (1, 2, 3). After that, I used one hot encoder to encode the rest of the string types. </p>
<h2> Model chosen </h2>
<p> We chose to use a random forest model because of its ability to utilize multiple weaker models to determine the most accurate prediction. We also chose to use a pipeline to determine the number of trees, using machine learning to craft the most imformational analysis possible.
<h2> Interpretation of the model </h2>
<p> The accuracy of the model fell ~67%, but was only predicting 1 of two variables. N estimators were then increased, which allowed the model to also account for the secondary variable.</p>
<p> Further, we decided to then run the same model with the criteria shifting form gold medal to silver, then bronze. The results were very similar, with the model being able to predict between 61-65% of the results, as can be seen in the following images:
<img src="../Data_Bootcamp_Final_Project/Resources/Images/bronze_confusion_matrix.png">
<img src="../Data_Bootcamp_Final_Project/Resources/Images/silver_confusion_matrix.png">
<img src="../Data_Bootcamp_Final_Project/Resources/Images/gold_confusion_matrix.png"></p>

<h2> Further revision </h2> 
<p> In order to increase the accuracy, the notion of "does a country's GDP impact their liklihood of a specific medal type, and so Jeff added a new data set that decreased the years of data available, but added a much needed new feature to compare. The results of this analysis were much more impressive, with an accuracy around 88%, with an average .88 precision & .88 recall. 
<img src="../Data_Bootcamp_Final_Project/Resources/Images/SIlver%20confusion%20matrix%20wb.png">
<h2>Analysis</h2>
<p> Based on our predicitve model, we determined that there really is no way to accurately predict medal type. There are many non quantifiable features (talent, emotional state, etc) that lend themselves too heavily to the results to be able to use a predictive model to determine.</p>
 