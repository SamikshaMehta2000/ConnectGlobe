<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
  <%
		  File file;
		  int maxSize=5000*1024;
		  int max=5000*1024;
		  //get the init parameter
		  String filePath= getServletContext().getInitParameter("filePath");
		  //get content type and veryfiy it
		  String contentType=request.getContentType();
		  if(contentType.indexOf("multipart/form-data")>=0){
			  //create DiskFileItemFactory object
			  DiskFileItemFactory factory=new DiskFileItemFactory();
			  
			  //set max size
			  factory.setSizeThreshold(maxSize);
			  
			  //create repository
			  factory.setRepository(new File("c:\\temp"));
			  
			  //create ServletFileUpload object
			  
			  ServletFileUpload upload=new ServletFileUpload(factory);
			  
			  //set max size for upload
			  
			  upload.setFileSizeMax(max);
					  
					  try{
						  //parse the request
						  List<FileItem> fileItems= upload.parseRequest(request);
						  
						  //create iterator
						  Iterator<FileItem> itr=fileItems.iterator();
						  while(itr.hasNext()){
							  FileItem fi=itr.next();
							  //check if fi is not Form Field
							  if(!fi.isFormField()){
								 String name=fi.getName();
								 //write the file
								  if(name.lastIndexOf("\\")>=0){
									  file=new File(filePath+name.substring(name.lastIndexOf("\\")));
								  }else{
									  file=new File(filePath+name.substring(name.lastIndexOf("\\")+1));
								  }
								 fi.write(file);
								 request.setAttribute("picuploaded", "succussfully uploaded the pic");
								%>
								<jsp:forward page="Post.jsp"></jsp:forward>
								<%
							  }
							  
						  }
					  }catch(Exception e){
						  e.printStackTrace();
						  request.setAttribute("error", "cannot upload picture please try again");
								  %>
								  <jsp:forward page="Uploadpic.jsp"></jsp:forward>
								  <%
					  }
			  
			  
		  }
  %>
  
  