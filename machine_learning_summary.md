<h1> Summary of Machine Learning Model </h1>
<h2> Description</h2>
<p> The machine model used is the Random Forest classifier. This was used because the nature of the question asked, are we able to predict gold medal winners, involved classification & I achieved the best results with this model. I also tested neural networks, but had substantially less accurate results.</p>
<h2> Preprocessing</h2>
<p> To prepare the data beyond what Stephenie has completed for deliverable 1, we created a SQL database using Posgres & combined the medals & results data sets to have a table that had game location, country of the winner, and medal type. I wanted to give the classifier as many different variables as possible, since the stories of the winners are so inherently diverse. From there, I converted the metal types from string (Gold, Silver, and Bronze) to integers (1, 2, 3). After that, I used one hot encoder to encode the rest of the string types. </p>
<h2> Interpretation of the model </h2>
<p> The accuracy of the model fell ~67%. While the results could be more accurate, the other model that I tested was ~32%, which this was a major improvement from. Due to the nature of the sheer volume of variables, I believe a 67% accuracy rating is acceptable. </p>
<p> Further, we decided to then run the same model with the criteria shifting form gold medal to silver, then bronze. The results were very similar, with the model being able to predict between 61-65% of the results, as can be seen in the following images:
<img src="../Data_Bootcamp_Final_Project/Resources/Images/bronze_confusion_matrix.png">
<img src="../Data_Bootcamp_Final_Project/Resources/Images/silver_confusion_matrix.png">
<img src="../Data_Bootcamp_Final_Project/Resources/Images/gold_confusion_matrix.png"></p>

<h2>Analysis</h2>
<p> Based on our predicitve model, we determined that there really is no way to accurately predict medal type. There are many non quantifiable features (talent, emotional state, etc) that lend themselves too heavily to the results to be able to use a predictive model to determine.</p>
 