Estructura de la base de datos: 
https://docs.google.com/spreadsheets/d/1ANJtvVls1lxg25gdjjefaOsVjiPt5q8R1BCdLDpWkys/edit?usp=sharing


CARPETA TESTING:
index.php:
-P�gina principal

loginpage.php:
-P�gina de login

profile.php:
-Perfil de usuario; por ahora dice "Jesus Rodeo Dead Jesus Rodeo"

bestsellers.php:
-Muestra solo los libros con status de bestseller en la base de datos (bookIsBestseller = 1)

header.php:
-Contiene ambas navbars y links a includes y css.

genreList.php:
-Lista de tipos de libros por clase. ADVERTENCIA: Entra en un loop infinito por ahora.


CARPETA CSS:
bookstore.css:
-Css principal de la p�gina


CARPETA INCLUDES:
dbconnector.php:
-Conexi�n a la base de datos
-Server: "localhost"
-Username: "root"
-Password: Ninguno, o ""
-Base de datos: "bookstoredb"

login.inc.php & logout.inc.php:
-C�digo de login y logout respectivamente


CARPETA RESOURCES:
-�conos de p�ginas web