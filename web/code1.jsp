<%
    
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    int age=Integer.parseInt(request.getParameter("age"));
    
    String res="";
    
    if(gender.equals("male") && age>=21){
        res="Eligible";
    }
    else if(gender.equals("female") && age>=18){
        res="Eligible";
    }
    else{
        res="Not Eligible";
    }
    out.print("<h1>"+res+"</h1>");

%>

