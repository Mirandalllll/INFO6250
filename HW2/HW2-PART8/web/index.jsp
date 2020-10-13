<%--
  Created by IntelliJ IDEA.
  User: luliu
  Date: 9/24/20
  Time: 9:45 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Enrollment Form</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<h1>Northeastern University</h1>
<div style="white-space: nowrap">
  <h2><i>Human Resources Management</i>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    2016 Benefits Enrollment Form

  </h2>
</div>
<form action="show.jsp" method="post">
  CHECK REASON THAT YOU ARE COMPLETING THIS ENROLLMENT FORM
  <br/>
  <input type="radio" name="reason" value="newhire">
  <label>New hire</label>
  <input type="radio" name="reason" value="qualifying">
  <label>Qualifying event or family status change</label>

  <div align="right">
    Effective date(mm/dd/yy)
    <input type="date" name="effdate">
  </div>
  <div style="background-color: black; color: aliceblue">
    <h3><b>EMPLOYEE INFORMATION</b></h3>
  </div>
  <input  style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
          type="text" name="name">
  <input  style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
          type="number" name="ssn">
  <br/>
  <div style="white-space: nowrap">
    Name(Last, First, Middle initial) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
    &nbsp;&nbsp;&nbsp;&nbsp;
    Social Security number

  </div>
  <input  style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
          type="text" name="empdob">
  <input  style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
          type="text" name="hiredate">
  <input  style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
          type="text" name="marital">
  <br/>
  <div style="white-space: nowrap">
    Date of birth &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Date of hire &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Marital status
  </div>
  <br/>

  <div style="background-color: black; color: aliceblue">
    <h3><b>HEALTH INSURANCE</b></h3>
  </div>
  <div style="white-space: nowrap">
    <b>Medical</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    I select the following plan<i>(choose one):</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <b>Dental</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    I select the following plan<i>(choose one):</i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <b>Vision Plan</b>
  </div>

  <input type="radio" name="medical" value="Individual">
  <label>Individual</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
  <input type="radio" name="medical" value="HDHP">
  <label>HDHP W/HSA</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="dental" value="Individual">

  <label>Individual</label>
  &nbsp;&nbsp;
  <input type="radio" name="dental" value="Value">
  <label>Value</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="vision" value="Individual">
  <label>Individual</label>
  <br/>
  <input type="radio" name="medical" value="Family">
  <label>Family</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="medical" value="Core">
  <label>Core</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  <input type="radio" name="dental" value="Family">
  <label>Family</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="dental" value="ValueP">

  <label>Value Plus</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="vision" value="Family">
  <label>Family</label>
  <br/>
  <input type="radio" name="medical" value="Terminate">
  <label>Terminate</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="medical" value="Enhanced">
  <label>Enhanced</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="dental" value="Terminate">
  <label>Terminate</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="vision" value="Terminate">
  <label>Terminate</label>
  <br/>

  <input type="radio" name="medical" value="Waive">
  <label>Waive participation</label>
  &nbsp;&nbsp;
  <input type="radio" name="medical" value="PPO">
  <label>PPO</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="dental" value="Waive">
  <label>Waive participation</label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;
  <input type="radio" name="vision" value="Waive">
  <label>Waive</label>
  <br/>

  <div style="background-color: black; color: aliceblue">
    <h3><b>HEALTH INSURANCE DEPENDENT AND PRIMARY CARE PHYSICIAN INFORMATION</b></h3>
  </div>
  <i>List those dependents (spouse, same-sex spousal equivalent,
    or dependent child) for whom you are selecting medical and dental coverage
    and their primary care physician (PCP) information.
    Please attach required documentation for dependents as follows:
    spouse – marriage certificate, same-sex spousal equivalent –
    certification, dependent child – birth certificate or your most
    recent 1040 Tax Return which lists your dependents.</i>

  <table style="border-bottom: black 2px solid">
    <tr>

      <th><b>Medical</b></th>
      <th><b>Dental</b></th>
      <th><b>Vision</b></th>
      <th><b>Name</b>(Last, First, MI)</th>
      <th><b>Social Security #</b></th>
      <th><b>D.O.B.</b></th>
      <th><b>Gender</b></th>
      <th><b>Student?</b></th>
      <th><b>Relationship</b></th>
      <th><b>PCP #</b></th>

    </tr>

    <tr>
      <td><input type="checkbox" name="medicaltable" value="yes"></td>
      <td><input type="checkbox" name="dentaltable" value="yes"></td>
      <td><input type="checkbox" name="visiontable" value="yes"></td>
      <td><input type="text" name="nametable"></td>
      <td><input type="number" name="socialtable" value="social"></td>
      <td><input type="date" name="dobtable" value="dob"></td>
      <td><input type="radio" name="gendertable1" value="Male">M
        <input type="radio" name="gendertable1" value="Female">F
      </td>
      <td>-</td>
      <td><b>self</b></td>
      <td><input type="number" name="pcptable" value="pcp#"></td>
    </tr>

    <tr>
      <td><input type="checkbox" name="medicaltable" value="yes"></td>
      <td><input type="checkbox" name="dentaltable" value="yes"></td>
      <td><input type="checkbox" name="visiontable" value="yes"></td>
      <td><input type="text" name="nametable" ></td>
      <td><input type="number" name="socialtable" value="social"></td>
      <td><input type="date" name="dobtable" value="dob"></td>
      <td><input type="radio" name="gendertable2" value="Male">M
        <input type="radio" name="gendertable2" value="Female">F
      </td>
      <td><input type="checkbox" name="studenttable" value="yes"></td>
      <td><input type="text" name="ralationshiptable"></td>
      <td><input type="number" name="pcptable" value="pcp#"></td>
    </tr>

    <tr>
      <td><input type="checkbox" name="medicaltable" value="yes"></td>
      <td><input type="checkbox" name="dentaltable" value="yes"></td>
      <td><input type="checkbox" name="visiontable" value="yes"></td>
      <td><input type="text" name="nametable"></td>
      <td><input type="number" name="socialtable" value="social"></td>
      <td><input type="date" name="dobtable" value="dob"></td>
      <td><input type="radio" name="gendertable3" value="Male">M
        <input type="radio" name="gendertable3" value="Female">F
      </td>
      <td><input type="checkbox" name="studenttable" value="yes"></td>
      <td><input type="text" name="ralationshiptable"></td>
      <td><input type="number" name="pcptable" value="pcp#"></td>
    </tr>

    <tr>
      <td><input type="checkbox" name="medicaltable" value="yes"></td>
      <td><input type="checkbox" name="dentaltable" value="yes"></td>
      <td><input type="checkbox" name="visiontable" value="yes"></td>
      <td><input type="text" name="nametable"></td>
      <td><input type="number" name="socialtable" value="social"></td>
      <td><input type="date" name="dobtable" value="dob"></td>
      <td><input type="radio" name="gendertable4" value="Male">M
        <input type="radio" name="gendertable4" value="Female">F
      </td>
      <td><input type="checkbox" name="studenttable" value="yes"></td>
      <td><input type="text" name="ralationshiptable"></td>
      <td><input type="number" name="pcptable" value="pcp#"></td>
    </tr>

    <tr>
      <td><input type="checkbox" name="medicaltable" value="yes"></td>
      <td><input type="checkbox" name="dentaltable" value="yes"></td>
      <td><input type="checkbox" name="visiontable" value="yes"></td>
      <td><input type="text" name="nametable"></td>
      <td><input type="number" name="socialtable" value="social"></td>
      <td><input type="date" name="dobtable" value="dob"></td>
      <td><input type="radio" name="gendertable5" value="Male">M
        <input type="radio" name="gendertable5" value="Female">F
      </td>
      <td><input type="checkbox" name="studenttable" value="yes"></td>
      <td><input type="text" name="ralationshiptable"></td>
      <td><input type="number" name="pcptable" value="pcp#"></td>
    </tr>

  </table>

  <div style="background-color: black; color: aliceblue">
    <h3><b>REIMBURSEMENT ACCOUNTS</b></h3>
  </div>
  <i>
    Check the account(s) you wish to establish and indicate the calendar year election amount for each.
    Reimbursement accounts must be elected each calendar year during open enrollment.
  </i><br/>
  <div style="white-space: nowrap">
    Health Care Reimbursement Account
    <input type="radio" name="HCamount" value="amount">
    <label>Amount: $</label>
    <input style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px;
      outline: none" type="number" name="HCamount" value="amount">
    <i>
      ($120 minimum and $2,550 maximum per calendar year)
    </i>
    <input type="radio" name="HCamount" value="Wavie Participation">
    <label>Waive Participation</label>
  </div>
  <br/>
  <div style="white-space: nowrap">
    Dependent Care Reimbursement Account
    <input type="radio" name="DCRamount" value="amount">
    <label>Amount: $</label>
    <input style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px;
      outline: none" type="number" name="DCRamount" value="amount">
    <i>
      ($120 minimum and $5,000 maximum per calendar year)
    </i>
    <input type="radio" name="DCRamount" value="Wavie Participation">
    <label>Waive Participation</label>

  </div>
  <br/>



  <div style="background-color: black; color: aliceblue">
    <h3><b>HEALTH SAVINGS ACCOUNTS(HSA)</b></h3>
  </div>
  <i>Select the amount you wish to contribute for the calendar year.
    The HSA may only be used if you have selected the High Deductible Health Plan offered by Northeastern.</i>
  <br/>
  <div style="white-space: nowrap">
    Health Savings Account
    <input type="checkbox" name="HSAamount" value="amount">
    <label>Amount: $</label>
    <input style="width:400px; border-bottom: 2px solid #000000; border-top: 0px; border-left: 0px; border-right: 0px;
      outline: none" type="number" name="HSAamount" value="amount">
    <br/>
  </div>
  By enrolling in the HSA and checking this box <input type="checkbox" name="HSA" value="yes">,
  I certify that I meet the IRS eligibility requirements for the HSA. <i>$3,350 maximum for individual, $6,750
  maximum for family; the maximum includes the combined ($500/individual, $1,000/family)
  employer and employee contribution. If you will be 55 or older during the calendar year, you are
  eligible for a $1,000 catch up.</i>
  <br/>


  <div style="background-color: black; color: aliceblue">
    <h3><b>LIFE INSURANCE</b></h3>
  </div>
  <div style="white-space: nowrap">
    <b>Basic Life Insurance</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    2x base salary paid by Northeastern University.
  </div>

  <div style="white-space: nowrap">
    <b>Supplemental Life Insurance</b>
    <input type="radio" name="x" value="1xbase">
    <label>1x base salary</label>
    <input type="radio" name="x" value="2xbase">
    <label>2x base salary</label>
    <input type="radio" name="x" value="3xbase">
    <label>3x base salary</label>
    <input type="radio" name="x" value="4xbase">
    <label>4x base salary</label>
    <input type="radio" name="x" value="Waive">
    <label>Waive</label>
  </div>

  <div style="white-space: nowrap">
    Spouse/Domestic Partner
    Date of Birth:
    <input type="date" name="LIdob">
    <input type="radio" name="5" value="25,000">
    <label>$25,000</label>
    <input type="radio" name="5" value="50,000">
    <label>$50,000</label>
    <input type="radio" name="5" value="75,000">
    <label>$75,000</label>
    <input type="radio" name="5" value="100,000">
    <label>$100,000</label>
    <input type="radio" name="5" value="Waive">
    <label>Waive</label>
  </div>

  <div style="white-space: nowrap">
    Dependent Child(ren)
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;
    <input type="radio" name="10" value="10000">
    <label>$10,000</label>
    <input type="radio" name="10" value="20000">
    <label>$20,000</label>
    <input type="radio" name="10" value="Waive">
    <label>Waive</label>
  </div>

  <div style="background-color: black; color: aliceblue">
    <h3><b>VOLUNTARY BENEFIT</b></h3>
  </div>
  <div style="white-space: nowrap">
    <b>Legal Plan</b>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;
    <input type="radio" name="legal" value="Individual/Family">
    <label>Individual/Family</label>
    <input type="radio" name="legal" value="Waiveparticipation">
    <label>Waive participation</label>
  </div>

  <div style="background-color: black; color: aliceblue">
    <h3><b>BENEFICIARY INFORMATION</b></h3>
  </div>
  <i>List the beneficiary or beneficiaries for your life insurance coverage.
    All benefits-eligible employees have basic life insurance provided by Northeastern University.</i>
  <table>
    <tr>
      <th><b>Name</b>(Last, First, Middle initial)</th>
      <th>Relationship</th>
      <th>Primary/Contingent</th>
      <th>Benefit percent</th>
    </tr>
    <tr>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="nameT">
      </td>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="relationshipT">
      </td>
      <td>
        <input type="radio" name="PriCon1" value="Primary">
        <label>Primary</label>
        <input type="radio" name="PriCon1" value="Contingent">
        <label>Contingent</label>
      </td>
      <td>
        <input  style="width:200px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="percent">
        %
      </td>
    </tr>
    <tr>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="nameT">
      </td>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="relationshipT">
      </td>
      <td>
        <input type="radio" name="PriCon2" value="Primary">
        <label>Primary</label>
        <input type="radio" name="PriCon2" value="Contingent">
        <label>Contingent</label>
      </td>
      <td>
        <input  style="width:200px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="percent">
        %
      </td>
    </tr>
    <tr>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="nameT">
      </td>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="relationshipT">
      </td>
      <td>
        <input type="radio" name="PriCon3" value="Primary">
        <label>Primary</label>
        <input type="radio" name="PriCon3" value="Contingent">
        <label>Contingent</label>
      </td>
      <td>
        <input  style="width:200px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="percent">
        %
      </td>
    </tr>
    <tr>
      <td>
        <input  style="width:400px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="nameT">
      </td>
      <td>
        <input  style="width:400px; border-bottom: 0px ; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="relationshipT">
      </td>
      <td>
        <input type="radio" name="PriCon4" value="Primary">
        <label>Primary</label>
        <input type="radio" name="PriCon4" value="Contingent">
        <label>Contingent</label>
      </td>
      <td>
        <input  style="width:200px; border-bottom: 0px; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
                type="text" name="percent">
        %
      </td>
    </tr>
  </table>
  <i>
    I certify the above is true and correct. I acknowledge that I have reviewed the benefits outlined on northeastern.edu/hrm
    and have been given the opportunity to enroll in the Northeastern
    Benefits Plans. By not enrolling in certain benefits at this time,
    I realize that I will be unable to enroll or make changes again until the next open enrollment unless
    I have a qualifying event as
    outlined on northeastern.edu/hrm. I hereby authorize Northeastern University to
    reduce my pay for the benefit plans I have selected above.
  </i>
  <br/><br/>
  <div style="white-space: nowrap">
    <input  style="width:400px; border-bottom: 2px solid black; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
            type="text" name="signature">

    <input  style="width:400px; border-bottom: 2px solid black; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
            type="text" name="SignDate">
    <br/>
    Employee signature &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    Date
  </div>
  <br/>
  <div style="white-space: nowrap">
    <input  style="width:400px; border-bottom: 2px solid black; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
            type="text" name="reviewed">

    <input  style="width:400px; border-bottom: 2px solid black; border-top: 0px; border-left: 0px; border-right: 0px; outline: none"
            type="text" name="entered">
    <br/>
    Reviewed by &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    Entered
  </div>
  <br/>
  <input type="submit" value="Submit">
</form>
</body>
</html>
