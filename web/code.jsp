<%
    //Here you can write java code
    /*
      Here we receive values of form inputs by using request.getParameter() method.
      This method return string values.
    */
    int n1=Integer.parseInt(request.getParameter("n1"));
    int n2=Integer.parseInt(request.getParameter("n2"));
    String op=request.getParameter("op");
    int res=0;
    if(op.equals("add")){
        res=n1+n2;
    }
    else if(op.equals("subtract")){
        res=n1-n2;
    }
    else if(op.equals("multiply")){
        res=n1*n2;
    }
    else if(op.equals("divide")){
        res=n1/n2;
    }
    out.print("<h1>Results="+res+"</h1>");
%>
