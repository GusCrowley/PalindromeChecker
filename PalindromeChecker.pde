public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word){
  boolean checker= false;
  if (onlyLetters(noSpaces(word)).equalsIgnoreCase(reverse(onlyLetters(noSpaces(word))))){
    checker= true;
  }
  return checker;
}
public String reverse(String str) {
  String helper= "";
  int last= str.length()-1;
  for (int i= last; i>=0; i--) {
    helper= helper+ str.charAt(i);
  }
  return helper;
}
public String onlyLetters(String sString) {
  String helper= "";
  for (int i= 0; i<= sString.length()-1; i++) {
    if (Character.isLetter(sString.charAt(i))== true) {
      helper= helper+ sString.charAt(i);
    }
  }
  return helper;
}
public String noSpaces(String sWord){
  String helper= "";
  for (int i= 0; i<= sWord.length()-1; i++){
    if (sWord.charAt(i)!= ' '){
      helper= helper+ sWord.charAt(i);
    }
  }
  return helper;
}
