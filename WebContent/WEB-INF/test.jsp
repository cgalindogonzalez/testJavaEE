<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>

    <body>
        <p>Ceci est une page générée depuis une JSP.</p>
        <p>
            <% 
            String attribut = (String) request.getAttribute("test");
            out.println( attribut );

            String parametre = request.getParameter( "auteur" );
            out.println( parametre );
            %>
        </p>
        <p>
            Récupération du bean :
            <jsp:useBean id="coyote" class="com.sdzee.beans.Coyote" scope="request"/>
            <jsp:getProperty property="prenom" name="coyote"/>
            <jsp:getProperty property="nom" name="coyote"/>
        </p>
    </body>
</html>