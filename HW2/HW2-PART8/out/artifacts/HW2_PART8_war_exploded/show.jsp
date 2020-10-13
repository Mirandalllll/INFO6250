<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 10/7/20
  Time: 12:29 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="  text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ShowResult</title>
</head>
<body>
    <%

        String reason = request.getParameter("reason");
        String effdate = request.getParameter("effdate");
        String empname = request.getParameter("name");
        String ssn = request.getParameter("ssn");
        String dob = request.getParameter("empdob");
        String hiredate = request.getParameter("hiredate");
        String marital = request.getParameter("marital");
        String medical = request.getParameter("medical");
        String  dental = request.getParameter("dental");
        String vision = request.getParameter("vision");
        int len = 0 ;
        String[] medT = request.getParameterValues("medicaltable");
        if(medT!=null) len = Math.max(len,medT.length);
        String[] denT = request.getParameterValues("dentaltable");
        if(denT!=null) len = Math.max(len,denT.length);
        String[] visionT = request.getParameterValues("visiontable");
        if(visionT!=null) len = Math.max(len,visionT.length);
        String[] nameT = request.getParameterValues("nametable");
        if(nameT!=null) len = Math.max(len,nameT.length);
        String[] ssnT = request.getParameterValues("socialtable");
        if(ssnT!=null) len = Math.max(len,ssnT.length);
        String[] dobT = request.getParameterValues("dobtable");
        if(dobT!=null) len = Math.max(len,dobT.length);
//        String[] genderT = request.getParameterValues("gendertable");
//        if(genderT!=null) len = Math.max(len,genderT.length);
        String gender1 = request.getParameter("gendertable1");
        String gender2 = request.getParameter("gendertable2");
        String gender3 = request.getParameter("gendertable3");
        String gender4 = request.getParameter("gendertable4");
        String gender5 = request.getParameter("gendertable5");

        String[] studentT = request.getParameterValues("studenttable");
        if(studentT!=null) len = Math.max(len,studentT.length);
        String[] relationshipT = request.getParameterValues("ralationshiptable");
        if(relationshipT!=null) len = Math.max(len,relationshipT.length);
        String[] pcpT = request.getParameterValues("pcptable");
        if(pcpT!=null) len = Math.max(len,pcpT.length);



        String[] medTable = new String[len];
        String[] denTable = new String[len];
        String[] visionTable = new String[len];
        String[] nameTable = new String[len];
        String[] ssnTable = new String[len];
        String[] dobTable = new String[len];
//        String[] genderTable = new String[len];
        String[] studentTable = new String[len];
        String[] relationshipTable = new String[len];
        String[] pcpTable = new String[len];

        for(int i=0;i<len;i++){
            if(medT==null||denT==null||visionT==null||nameT==null||ssnT==null||dobT==null||studentT==null||relationshipT==null||pcpT==null) break;
            if(i>=medT.length){
                medTable [i]= "false";
            }else{
                if(medT[i]==null){
                    medTable [i]= "false";
                }else{
                    medTable[i] =medT[i];
                }
            }
            if(i>=denT.length){
                denTable [i]= "false";
            }else{
                if(denT[i]==null){
                    denTable [i]= "false";
                }else{
                    denTable[i] =denT[i];
                }
            }
            if(i>=visionT.length){
                visionTable [i]= "false";
            }else{
                if(visionT[i]==null){
                    visionTable [i]= "false";
                }else{
                    visionTable[i] =visionT[i];
                }
            }
            if(i>=nameT.length){
                nameTable [i]= "null";
            }else{
                if(nameT[i]==null){
                    nameTable [i]= "null";
                }else{
                    nameTable[i] =nameT[i];
                }
            }
            if(i>=ssnT.length){
                ssnTable [i]= "null";
            }else{
                if(ssnT[i]==null){
                    ssnTable [i]= "null";
                }else{
                    ssnTable[i] =ssnT[i];
                }
            }
            if(i>=dobT.length){
                dobTable [i]= "null";
            }else{
                if(dobT[i]==null){
                    dobTable [i]= "null";
                }else{
                    dobTable[i] =dobT[i];
                }
            }




            if(i>=studentT.length){
                studentTable [i]= "false";
            }else{
                if(studentT[i]==null){
                    studentTable [i]= "false";
                }else{
                    studentTable[i] =studentT[i];
                }
            }
            if(i>=relationshipT.length){
                relationshipTable [i]= "null";
            }else{
                if(relationshipT[i]==null){
                    relationshipTable [i]= "null";
                }else{
                    relationshipTable[i] =relationshipT[i];
                }
            }
            if(i>=pcpT.length){
                pcpTable [i]= "null";
            }else{
                if(pcpT[i]==null){
                    pcpTable [i]= "null";
                }else{
                    pcpTable[i] =pcpT[i];
                }
            }
        }
        Map<String,String> map = new HashMap<>();
        map.put("gender1",gender1);
        map.put("gender2",gender2);
        map.put("gender3",gender3);
        map.put("gender4",gender4);
        map.put("gender5",gender5);


//        Array
//        String[] medicalTable = request.getParameterValues("medicaltable");
        String HCamount = request.getParameter("HRamount");
        String DCRamount = request.getParameter("DCRamount");
        String HSA = request.getParameter("HSAamount");
        String meetrequirement = request.getParameter("HSA");

        String SLI = request.getParameter("x");
        String SpousDob = request.getParameter("LIdob");
        String SpousAmount = request.getParameter("5");
        String Child = request.getParameter("10");

        String legalPlan = request.getParameter("legal");
        len = 0;
//        String nametable = request.getParameter("nameT");
//        String realationshiptable = request.getParameter("relationshipT");
//        String Primary = request.getParameter("PriCon");
//        String percent = request.getParameter("percent");
        String[] nametable = request.getParameterValues("nameT");
        if(nametable!=null) len = Math.max(len,nametable.length);
        String[] relationshiptable = request.getParameterValues("relationshipT");
        if(relationshiptable!=null) len = Math.max(len,relationshiptable.length);
//        String[] Primary = request.getParameterValues("PriCon");

        String primary1 = request.getParameter("PriCon1");
        String primary2 = request.getParameter("PriCon2");
        String primary3 = request.getParameter("PriCon3");
        String primary4 = request.getParameter("PriCon4");

        String[] percent = request.getParameterValues("percent");
        if(percent!=null) len = Math.max(len,percent.length);

        String[] nametab = new String[len];
        String[] relationshiptab = new String[len];
        String[] percenttab = new String[len];

        for(int i = 0; i < len; i++){
            if(nametable==null||relationshiptable==null||percent==null) break;
            if(i>=nametable.length){
                nametab[i] = "null";
            }else{
                if(nametable[i]==null){
                    nametab[i] = "null";
                }else{
                    nametab[i] = nametable[i];
                }
            }
            if(i>=relationshiptable.length){
                relationshiptab[i] = "null";
            }else{
                if(relationshiptable[i] == null){
                    relationshiptab[i] = "null";
                }else{
                    relationshiptab[i] = relationshiptable[i];
                }
            }
            if(i>=percent.length){
                percenttab[i] = "null";
            }else{
                if(percent[i] == null){
                    percenttab[i] = "null";
                }else{
                    percenttab[i] = percent[i];
                }
            }
        }
        Map<String, String> map1 = new HashMap<>();
        map1.put("primary1", primary1);
        map1.put("primary2", primary2);
        map1.put("primary3", primary3);
        map1.put("primary4", primary4);



        String Sign = request.getParameter("signature");
        String Signdate = request.getParameter("SignDate");
        String review = request.getParameter("reviewed");
        String enter = request.getParameter("entered");
        out.println("Check Reason That You Are Completing This Enrollment Form: " + reason);
        out.println("<br/>");

        out.println("Effective date: " + effdate);
        out.println("<br/>");

        out.println("Name is: " + empname);
        out.println("<br/>");
        out.println("Social Security number is: "+ssn);
        out.println("<br/>");
        out.println("Date of birth: " + dob);
        out.println("<br/>");
        out.println("Date of hire: " + hiredate);
        out.println("<br/>");
        out.println("Martial status: " + marital);
        out.println("<br/>");

        out.println("Medical: " + medical);
        out.println("<br/>");

        out.println("Dental: " + dental);
        out.println("<br/>");

        out.println("Vision Plan: " + vision);
        out.println("<br/>");


        int suffix = 1;
        for(int i =0;i<medTable.length;i++){
            out.println("Medical: "+medTable[i]);
            out.println("<br/>");
            out.println("Dental: "+denTable[i]);
            out.println("<br/>");
            out.println("Vision: "+visionTable[i]);
            out.println("<br/>");
            out.println("Name: "+nameTable[i]);
            out.println("<br/>");
            out.println("Social Security #: " + ssnTable[i]);
            out.println("<br/>");
            out.println("D.O.B: " + dobTable[i]);
            out.println("<br/>");

            String tem = "gender"+suffix;
//            out.println(tem);
            suffix++;

            out.println("Gender is: " + map.get(tem));
            out.println("<br/>");
            out.println("Student status: " + studentTable[i]);
            out.println("<br/>");
            out.println("Relationship: " + relationshipTable[i]);
            out.println("<br/>");
            out.println("PCP#: " + pcpTable[i]);
            out.println("<br/>");


        }


        out.println("Health Care Reimbursement Amount: " + HCamount);
        out.println("<br/>");
        out.println("Dependent Care Reimbursement Amount: " + DCRamount);
        out.println("<br/>");

        out.println("Health Savings Account: " + HSA);
        out.println("<br/>");
        out.println("I certify that I meet the IRS eligibility requirements for the HSA: "
                + meetrequirement);
        out.println("<br/>");

        out.println("Supplemental Life Insurance: " + SLI);
        out.println("<br/>");
        out.println("Spouse/Domestic Partner: Date of Birth" + SpousDob);
        out.println("<br/>");
        out.println("Spouse/Domestic Partner: " + SpousAmount);
        out.println("<br/>");
        out.println("Dependent Child(ren): " + Child);
        out.println("<br/>");

        out.println("Legal Plan: " + legalPlan);
        out.println("<br/>");

        int index = 1;
        for(int i = 0; i<nametab.length; i++){
            out.println("Name is: " + nametable[i]);
            out.println("<br/>");
            out.println("Relationship: " + relationshiptable[i]);
            out.println("<br/>");
            String temp = "primary"+index;
            index++;
            out.println("Primary/Contingent: " + map1.get(temp));
            out.println("<br/>");

            out.println("Benefit percent: " + percent[i]);
            out.println("<br/>");
        }





        out.println("Employee Signature: " + Sign);
        out.println("<br/>");
        out.println("Date: " + Signdate);
        out.println("<br/>");
        out.println("Reviewed by: " + review);
        out.println("<br/>");
        out.println("Entered: " + enter);
        out.println("<br/>");


//        PrintWriter out = response.getWriter();

    %>
</body>
</html>
