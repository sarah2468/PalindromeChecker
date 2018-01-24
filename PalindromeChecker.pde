public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String bob = reverse(noSpaces(word));
  if(bob.equals(noSpaces(word)))
  {
    return true;
  }
return false;
}
public String reverse(String str)
{
      String bob = new String();
  for(int i = str.length(); i > 0; i--)
  {
    bob = bob + str.substring(i-1, i);
  }
  return bob;
}
public String noSpaces(String sWord){
  String yo = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    if(!sWord.substring(i, i+1).equals(" ")&& Character.isLetter(sWord.charAt(i)))
    {
      yo = yo + sWord.substring(i, i+1);
    }
  }
  return yo.toLowerCase();
}