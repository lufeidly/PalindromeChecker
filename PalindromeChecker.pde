public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i]) == true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String luf)
{
    luf = noSpaces(luf);
    luf = onlyLetters(luf);
    luf = luf.toLowerCase();
    String a = reverse(luf);
    if(a.equals(luf)){
    return true;
    }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
      if(str.length() == 0){
    return str;
  }
for(int i = str.length(); i > 0; i--){
sNew = sNew + str.substring(i - 1, i);
}
    return sNew;
}

public String noSpaces(String no){
  String we = "";
  for(int i = 0; i < no.length(); i++){
    if(Character.isLetter(no.charAt(i)) == true){
      we += no.substring(i,i+1);
    }
  }
  return we;
}

public String onlyLetters(String sString){
  String neww = "";
  for(int i = 0; i < sString.length(); i ++){
    if(Character.isLetter(sString.charAt(i)) == true){
      neww += sString.charAt(i);
    }
  }
  return neww;
}
