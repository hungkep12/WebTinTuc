# WebTinTuc

# Step to run this project:
1. Clone this repository and extract it.
2. Open with Eclipse IDE.
3. Right click in the space of "Package Explorer" -> click "Import"-> Expand "Maven"-> Choose "Existing Maven Projects"-> Click "Next"-> Browse for this project you cloned -> Click "Finish".
4. Go to "src/main/resources"->"META-INF". In "application.properties", edit "file.upload.path" and "spring.servlet.multipart.location" to "./src/main/resources/META-INF/img"(project path).
Make sure your machine has MySQL installed. In "datasource.properties", edit "db.url"(after "127.0.0.1:3306/" is your schema),"db.username"(your username), "db.password"(your passowrd).
5. Right click "StartServer.java"(src/main/java/com/nhom8) -> Click "Run As" -> Choose "Java Application".
6. Run the script in the "CSDL.sql" file to create the database and add the data to the tables.
7. Access "http://localhost:8080/" to check this web.

#LOGIN:
1. User account: Access "http://localhost:8080/login". Fill email and password: vt.arrow.06@gmail.com / user123
1. Admin account: Access "http://localhost:8080/admin/login". Fill email and password: vt.arrow.06@gmail.com / admin123
