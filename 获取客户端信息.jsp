<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>ʹ��request�������ط�����ȡ�ͻ�����Ϣ</title>
</head>
<body>
<br>�ͻ��ύ��Ϣ��ʽ��<%=request.getMethod() %>
<br>ʹ�õ�Э�飺<%=request.getProtocol() %>
<br>��ȡ���������ַ����Ŀͻ��˵�ַ��<%=request.getRequestURI() %>
<br>��ȡ���������ַ����Ŀͻ��˵�ַ��<%=request.getRequestURL() %>
<br>��ȡ�ύ���ݵĿͻ���IP��ַ��<%=request.getRemoteAddr() %>
<br>��ȡ�������˿ںţ�<%=request.getServerPort() %>
<br>��ȡ�����������ƣ�<%=request.getServerName() %>
<br>��ȡ�ͻ��˵��������ƣ�<%=request.getRemoteHost() %>
<br>��ȡ�ͻ���������Ľű��ļ����ļ�·����<%=request.getServletPath() %>
<br>��ȡHTTPЭ�鶨����ļ�ͷ��Ϣhost��ֵ��<%=request.getHeader("host") %>
<br>��ȡHTTPЭ�鶨����ļ�ͷ��ϢUser��Agent��ֵ��<%=request.getHeader("user-agent") %>
<br>���HttpЭ�鶨����ļ�ͷ��Ϣaccept-language��ֵ��<%=request.getHeader("accept-language") %>
<br>��������ļ��ľ���·����<%=request.getRealPath("��ȡ�ͻ�����Ϣ.jsp") %>
</body>
</html>