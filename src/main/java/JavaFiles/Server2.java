package JavaFiles;

import java.io.*;
import java.net.*;
public class Server2
{
public static void main(String[] args) throws Exception
{
ServerSocket ss=new ServerSocket(4000);
System.out.println("Server Running...!");
Socket serCon=ss.accept();
FileInputStream fin=new FileInputStream("text.txt");
DataOutputStream dout=new DataOutputStream(serCon.getOutputStream());
int r;
while((r=fin.read())!=-1)
{
dout.write(r);
}
System.out.println("File transfer completed....!");
fin.close();
ss.close();
serCon.close();
}
}