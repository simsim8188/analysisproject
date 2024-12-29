# Mint Classics Inventory Business problem
Analyze Data in a Model Car Database with MySQL Workbench<br>
My role is to analyze their data using MySQL Workbench. I have reviewed a data model and sample tables to identify key insights, focusing on:

Storage Optimization: Could items be rearranged to eliminate a warehouse?<br>
Inventory vs. Sales: Are inventory levels appropriate based on sales figures?<br>
Non-Moving Stock: Are there items that don’t sell and should be removed from the product line?<br><br>
These insights will help develop actionable strategies for efficient inventory management and warehouse consolidation.

# Project Objectives:
* Explore products currently in inventory.<br>
* Determine important factors that may influence inventory reorganization/reduction.<br>
* Provide analytic insights and data-driven recommendations.<br><br>
# **Task 1 – Import the Classic Model Car Relational Database**<br>
1. Download the mintclassicsDB.sql file, which is the SQL script that will create and populate the
Mint Classics relational database.<br>
2. Begin the import process by clicking the Server option on the menu bar and select the Data
Import tool. Be sure to select the the "Import from Self-Contained File" option from the Data
Import and then navigate to the location where your file was downloaded. Click the Start Import
button to initiate the import process.<br>
3. When the process completes, you can refresh the Navigator pane and you should the database
listed.<br>
![Screenshot 2024-12-29 185819](https://github.com/user-attachments/assets/db1160ab-48bd-4d54-ba41-35b778365f2d)<br><br>
# **Task 2 – Familiarize yourself with the Mint Classic database and business processes.**<br><br>
* Number of distinct products that we are dealing with in each warehouse<br>
![Screenshot 2024-12-29 192733](https://github.com/user-attachments/assets/be519d0d-2649-4091-ac68-76cdba9a2516)
* Each warehouse and its capacity<br>
Here, it clearly shows that the warehouse 'c' is just 50 % occupied which shows that it is underutilized.<br>
![Screenshot 2024-12-29 192644](https://github.com/user-attachments/assets/85ff08f4-a8f8-4279-b8d0-ac327a72db16)
* Each warehouse stores unique product line. So, we find the number of distinct products in each warehouse and their total quantity in stock.
* Here we can make out that warehouse 'b' has the most number of products in stock.
* We can even see the number of each product in each warehouse in stock without grouping them all together. The result would look something like this below:<br>
![Screenshot 2024-12-29 192827](https://github.com/user-attachments/assets/c64be6c6-2901-402d-971d-b4c2cd215fdf)
<br><br>**To identify which product line is stored in which warehouse. We run a query that shows 7 distinct product lines.**
* Warehouse 'a' contains 13 Motorcycles and 12 planes.
* Warehouse 'b' contains 38 Classic Cars.
* Warehouse 'c' contains 24 Vintage Cars.
* Warehouse 'd' contains 11 Trucks and buses 9 Ships and 3 Trains<br>
  **Determining the product line with highest and lowest number of sales**<br>
  ![Screenshot 2024-12-29 195343](https://github.com/user-attachments/assets/5d7868f3-1931-46c9-9cd6-445e2916f36b)<br><br>
# **Task 3 - Investigating Business Issues and Identifying Affected Tables**<br><br>
Mint Classics Company is hoping to close one of their storage facilities. They want
suggestions and recommendations for reorganizing or reducing inventory, while still maintaining timely
service to their customers.<br>
* So, to solve the problem, we need to identify which warehouse is underutilised and which one is overstocked. Above, we have already seen that warehouse 'c' is underutilised.
* Now to find out the overstocked warehouse we run some queries and get the result as you can see below<br>
![Screenshot 2024-12-29 195851](https://github.com/user-attachments/assets/708f8bcf-d914-4787-b5ee-a09cfeeae614)
![Screenshot 2024-12-29 195908](https://github.com/user-attachments/assets/4d33c1c4-e59f-4903-a697-e51e9e7383aa)
<br>It appears that Warehouse 'b' has the highest quantity of overstocked products, totaling 29 items, while both Warehouse 'a' and Warehouse 'c' have the same number of overstocked products, amounting to 19 each.
<br>* Finally, to see the least sales performance:<br>
![Screenshot 2024-12-29 195925](https://github.com/user-attachments/assets/c4992398-741f-4d46-8b5b-5562cccc735a)<br><br>
# **Task- 4 Warehouse Consolidation Recommendation:**<br><br>
<br>Based on the analysis, closing warehouse C and consolidating its inventory into warehouse B is the best course of action. Warehouse B has the largest storage capacity and can easily accommodate the additional inventory, while warehouse C is underutilized, operating at only 50% capacity.<br><br>
In summary, this strategic move enhances efficiency, lowers costs, and improves inventory management, supporting the company’s goals for long-term growth and operational success.






  






