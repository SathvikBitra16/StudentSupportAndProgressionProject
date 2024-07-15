package JavaFiles;

import java.io.*;
import java.net.*;
public class Client2
{
@SuppressWarnings("resource")
public static void main(String[] args) throws Exception
{
Socket cliCon=new Socket("localhost",4000);
System.out.println("Connected to Server ...!");
FileOutputStream fout=new FileOutputStream("text2.txt");
DataInputStream din=new DataInputStream(cliCon.getInputStream());
int r;
while((r=din.read())!=-1)
{
fout.write((char)r);
}
fout.close();
cliCon.close();
}
}
