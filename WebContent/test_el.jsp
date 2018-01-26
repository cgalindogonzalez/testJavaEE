<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Test des expressions EL</title>
</head>
<body>
	<p>
		<!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
		<jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" />
		<!-- Initialisation de sa propri�t� 'pr�nom' : -->
		<jsp:setProperty name="coyote" property="prenom" value="Wile E." />
		<!-- Et affichage de sa valeur : -->
		{$ coyote.prenom}

		<!-- Comparaison d'�galit� entre la propri�t� prenom et la cha�ne "Jean-Paul" -->
		${ coyote.prenom == "Jean-Paul" }

		<!-- V�rification si la propri�t� prenom est vide ou nulle -->
		${ empty coyote.prenom }

		<!-- Condition ternaire qui affiche la propri�t� pr�nom si elle n'est ni vide ni nulle, et la cha�ne "Veuillez pr�ciser un pr�nom" sinon -->
		${ !empty coyote.prenom ? coyote.prenom : "Veuillez pr�ciser un pr�nom" }
	</p>
</body>
</html>