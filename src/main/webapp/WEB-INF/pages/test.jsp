<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
  <title>Books Page</title>

  <style type="text/css">
    .tg {
      border-collapse: collapse;
      border-spacing: 0;
      border-color: #ccc;
    }

    .tg td {
      font-family: Arial, sans-serif;
      font-size: 14px;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #fff;
    }

    .tg th {
      font-family: Arial, sans-serif;
      font-size: 14px;
      font-weight: normal;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #f0f0f0;
    }

    .tg .tg-4eph {
      background-color: #f9f9f9
    }
  </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Book List</h1>

<c:if test="${!empty listBooks}">

  <table class="tg">
    <tr>
      <th width="80">ID</th>
      <th width="120">Title</th>
      <th width="120">Author</th>
      <th width="120">Year</th>
      <th width="120">Description</th>
      <th width="120">Isbn</th>
      <th width="120">ReadAlready</th>
      <th width="60">Edit</th>
      <th width="60">Delete</th>
      <th width="60">Read</th>
    </tr>
    <c:forEach items="${listBooks}" var="book">
      <tr>
        <td>${book.id}</td>
        <td>${book.bookTitle}</td>
        <td>${book.bookAuthor}</td>
        <td>${book.printYear}</td>
        <td>${book.description}</td>
        <td>${book.isbn}</td>
        <td>${book.readAlready}</td>
        <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
        <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
        <td><a href="<c:url value='/read/${book.id}'/>">Read</a></td>
      </tr>
    </c:forEach>
  </table>
</c:if>
<table>
  <tr>
    <td>
      <form action="<c:url value="/previousPage"/>" method="get">
        <input type="submit" value="<spring:message text="<"/>"/>
      </form>
    </td>
    <td>
      ${pageNumber}
    </td>
    <td>
      <form action="<c:url value="/nextPage"/>" method="get">
        <input type="submit" value="<spring:message text=">"/>"/>
      </form>
    </td>
  </tr>
</table>

<h1>Add a Book</h1>

<c:url var="addAction" value="/books/add"/>

<form:form action="${addAction}" commandName="book">
  <table>
    <c:if test="${!empty book.bookTitle}">
      <tr>
        <td>
          <form:label path="id">
            <spring:message text="ID"/>
          </form:label>
        </td>
        <td>
          <form:input path="id" readonly="true" size="8" disabled="true"/>
          <form:hidden path="id"/>
        </td>
      </tr>
    </c:if>
    <tr>
      <td>
        <form:label path="bookTitle">
          <spring:message text="Titles"/>
        </form:label>
      </td>
      <td>
        <form:input path="bookTitle"/>
      </td>
    </tr>
    <c:if test="${!empty book.bookTitle}">
      <tr>
        <td>
          <form:label path="bookAuthor">
            <spring:message text="Author"/>
          </form:label>
        </td>
        <td>
          <form:input path="bookAuthor" readonly="true" size="8" disabled="true"/>
          <form:hidden path="bookAuthor"/>
        </td>
      </tr>
    </c:if>
    <c:if test="${empty book.bookTitle}">
      <tr>
        <td>
          <form:label path="bookAuthor">
            <spring:message text="Author"/>
          </form:label>
        </td>
        <td>
          <form:input path="bookAuthor"/>
        </td>
      </tr>
    </c:if>
    <tr>
      <td>
        <form:label path="printYear">
          <spring:message text="PrintYear"/>
        </form:label>
      </td>
      <td>
        <form:input path="printYear"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="description">
          <spring:message text="Description"/>
        </form:label>
      </td>
      <td>
        <form:input path="description"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="isbn">
          <spring:message text="Isbn"/>
        </form:label>
      </td>
      <td>
        <form:input path="isbn"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:label path="readAlready">
          <spring:message text="ReadAlready"/>
        </form:label>
      </td>
      <td>
        <form:input path="readAlready" readonly="true" size="8" value="false"/>
        <form:hidden path="readAlready"/>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <c:if test="${!empty book.bookTitle}">
          <input type="submit"
                 value="<spring:message text="Edit Book"/>"/>
        </c:if>
        <c:if test="${empty book.bookTitle}">
          <input type="submit"
                 value="<spring:message text="Add Book"/>"/>
        </c:if>
      </td>
    </tr>
  </table>
</form:form>



<c:url var="readAction" value="/books/add"/>
<form:form action="${readAction}" commandName="book">
  <table>
    <c:if test="${!empty book.bookTitle}">
      <tr>
        <td>
          <form:hidden path="id"/>
        </td>
      </tr>
    </c:if>
    <tr>
      <td>
        <form:hidden path="bookTitle"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:hidden path="bookAuthor"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:hidden path="bookAuthor"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:hidden path="printYear"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:hidden path="description"/>
      </td>
    </tr>
    <tr>
      <td>
        <form:hidden path="isbn"/>
      </td>
    </tr>
    <tr>
      <td>

        <form:hidden path="readAlready" value="true"/>
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <c:if test="${book.id!=0}">
          <c:if test="${!book.readAlready}">
            <input type="submit"
                   value="<spring:message text="Read Book"/>"/>
          </c:if>
        </c:if>
      </td>
    </tr>
  </table>
</form:form>
<h1>User Search</h1>
<form action="bookdata">
  <label for="id">ID</label>
  <input type="number" id="id" name="id" placeholder="id"/>
  <input type="submit" value="Search"/>
</form>
</body>
</html>
