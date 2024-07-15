package JavaFiles;

import java.io.*;
import java.net.*;
public class Server
{
public static void main(String args[]) throws IOException
{
ServerSocket ss=new ServerSocket(777);
System.out.println("Server Running...! ");
Socket serCon=ss.accept();
BufferedReader fromClient=new BufferedReader(new InputStreamReader(serCon.getInputStream()));
String str = fromClient.readLine();
String revStr = new StringBuilder(str).reverse().toString();
PrintStream ps=new PrintStream(serCon.getOutputStream());
ps.println(revStr);
ps.close();
ss.close();
serCon.close();
}
}
