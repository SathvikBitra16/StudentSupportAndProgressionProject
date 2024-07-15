package JavaFiles;

import java.io.*;
import java.net.*;
public class Client
{
public static void main(String args[]) throws Exception
{
System.out.println("Connecting the Server...!");
Socket s=new Socket("localhost",777);
PrintStream ps=new PrintStream(s.getOutputStream());
ps.println("Hello");
BufferedReader fromServer=new BufferedReader(new InputStreamReader(s.getInputStream()));
System.out.println(fromServer.readLine());
ps.close();
s.close();
}
}