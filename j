//Easy 01 *
import java.util.*;
class ReverseaWord_01{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String inputString, reversedString;
        System.out.println("Enter the input string: ");
        inputString=s.nextLine();
        reversedString=reverseaString(inputString);
        System.out.println("The Reversed String is: "+reversedString);
    }
    public static String reverseaString(String input){
        char[] charArr=input.toCharArray();
        int start=0;
        int end=input.length()-1;
        while(start<end){
            char temp=charArr[start];
            charArr[start]=charArr[end];
            charArr[end]=temp;
            start++;
            end--;
        }
        return new String(charArr);
    }
}

//Easy 02 *
import java.util.*;
class StringToInteger_02{
    public static void main(String[] args){
        String input;
        Scanner s=new Scanner(System.in);
        System.out.println("Enter a String: ");
        input=s.nextLine();
        try{
            int result=Integer.parseInt(input);
            System.out.println("The output number: "+result);
        }catch(NumberFormatException e){
            System.out.println("The string "+input+" is not a integer!!");
        }
    }
}

//Easy 03 *
import java.util.*;
class Username_03{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String str1, str2;
        System.out.println("Enter username: ");
        str1=s.nextLine();
        System.out.println("Re-Enter username: ");
        str2=s.nextLine();
        if(str1.equals(str2)){
            System.out.println("Username is valid!!");
        }
        else{
            System.out.println("Username is not valid!!");
        }
    }
}

//Easy 04 *
import java.util.*;
class Alphabeticalsort_04{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String temp;
        int n;
        System.out.println("Enter no of words:");
        n=s.nextInt();
        String a[]=new String[n];
        System.out.println("Enter "+n+" words: ");
        for(int i=0;i<n;i++){
            a[i]=s.next();
        }
        System.out.println("Enter your choice: (A/D)");
        char ch=s.next().charAt(0);
        if(ch=='A'){
            for(int i=0;i<n+1;i++){
                for(int j=i+1;j<n;j++){
                    if(a[i].compareTo(a[j])>0){
                        temp=a[i];
                        a[i]=a[j];
                        a[j]=temp;
                    }
                }
            }
        }
        else if(ch=='D'){
            for(int i=0;i<n+1;i++){
                for(int j=i+1;j<n;j++){
                    if(a[i].compareTo(a[j])<0){
                        temp=a[i];
                        a[i]=a[j];
                        a[j]=temp;
                    }
                }
            }
        }
        else{
            System.out.println("Enter a valid choice!!");
            return;
        }
        for(int i=0;i<n;i++){
            System.out.println(a[i]);
        }
    }
}

//Easy 05 *
import java.util.*;
class Specialchar_05{
    public static void main(String[] args){
        String input;
        int n=0, a=0, sp=0, len;
        Scanner s=new Scanner(System.in);
        System.out.println("Enter characters in the same line as String: ");
        input=s.nextLine();
        len=input.length();
        char ch[]=input.toCharArray();
        for(int i=0;i<len;i++){{
            if(Character.isDigit(ch[i])){
                n++;
            }
            else if((ch[i]>='a'&&ch[i]<='z')||(ch[i]>='A'&&ch[i]<='Z')){
                a++;
            }
            else{
                System.out.println(ch[i]);
                sp++;
            }
        }
    }
        System.out.println("Number count is: "+n);
        System.out.println("Alphabets count is: "+a);
        System.out.println("Special characters is: "+sp);
    }
}


//Easy 06 *
import java.util.*;
class NoofVowels_06 {
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String line;
        int vc=0, cc=0;
        System.out.println("Enter any sentence: ");
        line=s.nextLine();
        int len=line.length();
        char[] ch=line.toCharArray();
        for(int i=0; i<len; i++){
            if(ch[i]=='a'||ch[i]=='A'||ch[i]=='e'||ch[i]=='E'||ch[i]=='i'||ch[i]=='I'||ch[i]=='o'||ch[i]=='O'||ch[i]=='u'||ch[i]=='U'){
                vc++;
                System.out.println(ch[i]);
            }
        }
        System.out.println("Vowel count = "+vc);
    }
}

//Easy 07 *
import java.util.*;
class ConsonantsandVowelsSeperately_07 {
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String line;
        int vc=0, cc=0;
        System.out.println("Enter any sentence: ");
        line=s.nextLine();
        int len=line.length();
        char[] ch=line.toCharArray();
        System.out.println("Vowels are: ");
        for(int i=0; i<len; i++){
            if(ch[i]=='a'||ch[i]=='A'||ch[i]=='e'||ch[i]=='E'||ch[i]=='i'||ch[i]=='I'||ch[i]=='o'||ch[i]=='O'||ch[i]=='u'||ch[i]=='U'){
                vc++;
                System.out.println(ch[i]);
            }
        }
        System.out.println("Vowel count = "+vc);
        System.out.println("Consonants are: ");
        for(int i=0; i<len; i++){
            char ca=Character.toLowerCase(ch[i]);
            if((ca>='a'&&ca<='z'&&ca!='a'&&ca!='e'&&ca!='i'&&ca!='o'&&ca!='u')){
                cc++;
                System.out.println(ch[i]);
            }
        }
        System.out.println("Consonants count = "+cc);
    }
}

//Easy 08 *
import java.util.*;
class CharPosinString_08{
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        String str;
        int pos;
        char ch;
        System.out.println("Enter a String: ");
        str=s.nextLine();
        System.out.println("Enter a Character to find: ");
        ch=s.next().charAt(0);
        for(int i=0; i<str.length(); i++){
            if(str.charAt(i)==ch){
                System.out.println("The character "+ch+" is found at "+(i+1)+" position.");
            }
        }
    }   
}

//Easy 09 *
import java.util.*;
class WordinReverse_09{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String str;
        int i=0, j;
        char temp;
        System.out.println("Enter a word: ");
        str=s.nextLine();
        char arr[]=str.toCharArray();
        while(i<arr.length){
            j=i+1;
            while(j<arr.length){
                if(arr[j]>arr[i]){
                    temp=arr[i];
                    arr[i]=arr[j];
                    arr[j]=temp;
                }
                j+=1;
            }
            i+=1;
        }
        System.out.println("After alphabetical sort: ");
        System.out.println(arr);
    }
}

//Easy 10 *
import java.util.*;
class RemovingVowelsfromString_10 {
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        String str1, str2;
        System.out.println("Enter a String: ");
        str1=s.nextLine();
        str2=str1.replaceAll("[aeiouAEIOU]"," ");
        System.out.println("The final string is: \n"+str2);
    }
}

//Easy 11 *
import java.util.*;
class MatrixMultiplication_11{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int ar, ac, br, bc;
        System.out.println("Enter the rows of Matrix-A: ");
        ar=s.nextInt();
        System.out.println("Enter the cols of Matrix-A: ");
        ac=s.nextInt();
        System.out.println("Enter the rows of Matrix-B: ");
        br=s.nextInt();
        System.out.println("Enter the cols of Matrix-B: ");
        bc=s.nextInt();
        if(ac!=br){
            System.out.println("Matrix Multiplication is not possible!!");
            return;
        }
        int a[][]=new int[ar][ac];
        int b[][]=new int[br][bc];
        int res[][]=new int[ar][bc];
        System.out.println("Enter the elements of MATRIX-A: ");
        for(int i=0;i<ar;i++){
            for(int j=0; j<ac; j++){
                a[i][j]=s.nextInt();
            }
        }
        System.out.println("Enter the elements of MATRIX-B: ");
        for(int i=0;i<br;i++){
            for(int j=0; j<bc; j++){
                b[i][j]=s.nextInt();
            }
        }
        for(int i=0;i<ar;i++){
            for(int j=0; j<bc; j++){
                res[i][j]=0;
                for(int k=0; k<ac; k++){
                    res[i][j]+=a[i][k]*b[k][j];
                }
            }
        }
        System.out.println("The resultant Multiplication Matrix is: ");
        for(int i=0;i<ar;i++){
            for(int j=0; j<ac; j++){
                System.out.println(res[i][j]+"\t");
            }
            System.out.println();
        }
    }
}

//Easy 12 *
import java.util.*;
class MatrixAddition_12 {
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int rows, cols, i, j;
        System.out.println("Enter the no of rows: ");
        rows=s.nextInt();
        System.out.println("Enter the no of columns: ");
        cols=s.nextInt();
        int mat1[][]=new int[rows][cols];
        int mat2[][]=new int[rows][cols];
        int res[][]=new int[rows][cols];
        System.out.println("Enter the elements in matrix 1: ");
        for(i=0;i<rows;i++){
            for(j=0;j<cols;j++){
                mat1[i][j]=s.nextInt();
            }//EASY-13
//Merge 2 Sorted Arrays
import java.util.*;
class Merge2SortedArrays_13{
public static void main(String[] args){
Scanner s=new Scanner(System.in);
int a1[]={1,2,3,4};
int a2[]={2,3,5,4};
Arrays.sort(a1);
Arrays.sort(a2);
ArrayList<Integer> list=new ArrayList<Integer>();
int i=0, j=0;
while(i<a1.length&&j<a2.length){
if(a1[i]<a2[j]){
list.add(a1[i]);
i++;
}
else{
list.add(a2[j]);
j++;
}
}
while(i<a1.length){
list.add(a1[i]);
i++;
}
while(j<a2.length){
list.add(a2[j]);
j++;
}
System.out.println(list);
}
}

//Easy 14 *
import java.util.*;
class MeanMedianMode_14{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int size, sum=0;
        System.out.println("Enter the size of array: ");
        size=s.nextInt();
        float arr[]=new float[size];
        System.out.println("Enter array elements: ");
        for(int i=0;i<size;i++){
            arr[i]=s.nextFloat();
            sum+=arr[i];
        }
        float temp;
        for(int i=0; i<size; i++){
            for(int j=0; j<size; j++){
                if(arr[i]<arr[j]){
                    temp=arr[i];
                    arr[i]=arr[j];
                    arr[j]=temp;
                }
            }
        }
        float max=0;
        int n_count=0, o_count=0;
        for(int i=0; i<size; i++){
            for(int j=0; j<size; j++){
                if(arr[i]==arr[j]){
                    n_count++;
                }
            }
            if(o_count<n_count){
                max=arr[i];
                o_count=n_count;
            }
            n_count=0;
        }
        System.out.println("MEAN is: "+(int)(sum/size));
        if(size%2==0){
            System.out.println("MEDIAN is: "+(int)((arr[size/2]+arr[size/2+1])/2));
        }
        else{
            System.out.println("MEDIAN is: "+(int)(arr[size/2]));
        }
        System.out.println("MODE is: "+(int)max);
    }
}

//EASY-15
//Count Composite
import java.util.*;
class Composite_15{
public static void main(String[] args){
int size, p_count=0, c_count=0, arr[];
Scanner s=new Scanner(System.in);
System.out.println("Enter the size of the array: ");
size=s.nextInt();
arr=new int[size];
System.out.printf("Enter %d elements in the array: ",size);
for(int i=0; i<size; i++){
arr[i]=s.nextInt();
int count=0;
if(arr[i]==1){
System.out.println("1 is neither prime nor composite!!");
}
else if(arr[i]>1){
for(int k=1; k<=arr[i]; k++){
if(arr[i]%k==0){
count++;
}
}
if(count>2){
c_count++;
}
else{
p_count++;
}
}
}
System.out.println("Prime number count is : "+p_count);
System.out.println("Composite number count is : "+c_count);
}
}

//EASY-16
//Right Star Triangle
import java.util.*;
import java.io.*;
class RightStar_16{
public static void main(String[] args){
int n,i,j;
Scanner s=new Scanner(System.in);
System.out.println("Enter the number: ");
n=s.nextInt();
for(i=0;i<n;i++){
for(j=2*(n-i);j>=0;j--){
System.out.print(" ");
}
for(j=0;j<=i;j++){
System.out.print("* ");
}
System.out.println();
}
}
}

//EASY-17
//Summing Pattern 
import java.util.*;
class SummingPattern_17{
public static void main(String[] args){
int n;
Scanner s=new Scanner(System.in);
System.out.println("Enter the number: ");
n=s.nextInt();
for(int i=0;i<n;i++){
for(int j=0; j<n-i-1; j++){
System.out.print("\t");
}
int value=1;
for(int j=0; j<=i;j++){
System.out.print(value+"\t\t");
value=value*(i-j)/(j+1);
}
System.out.println();
}
}
}

//EASY-18
//Rectangle pattern
import java.util.*;
class RectanglePattern_18{
public static void main(String[] args){
Scanner s=new Scanner(System.in);
char c;
int m, n;
System.out.print("Enter Rows:");
m=s.nextInt();
System.out.print("Enter Columns:");
n=s.nextInt();
System.out.println("Enter the character: ");
c=s.next().charAt(0);
for(int i=0; i<m; i++){
for(int j=0; j<n; j++){
System.out.print(c);
}
System.out.println();
}
}
}

//EASY-19
//Increasing, decreasing 1's 
import java.util.*;
class IncDec1_19{
public static void main(String[] args){
int i, j, row;
char ch;
Scanner s=new Scanner(System.in);
System.out.println("Enter any Character: ");
ch=s.next().charAt(0);
System.out.println("Maximum number of time printed: ");
row=s.nextInt();
for(i=0; i<row; i++){
for(j=i; j>=0; j--){
System.out.print(ch+" ");
}
System.out.print("\n");
}
for(i=0; i<(row-1); i++){
for(j=(row-1); j>i; j--){
System.out.print(ch+" ");
}
System.out.print("\n");
}
}
}

//EASY-20
//Inverted Full Pyramid Pattern
import java.util.*;
class InvertedFullPyramid_20{
public static void main(String[] args){
int rows;
char ch;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
System.out.println("Enter the Character: ");
ch=s.next().charAt(0);
for(int i=rows; i>=1; i--){
for(int j=0; j<(rows-i); j++)
{
System.out.print(" ");
}
for(int k=0; k!=(2*i)-1; k++)
{
System.out.print(ch);
}
System.out.println();
}
}
}

//EASY-21
//Increasing Pattern
import java.util.*;
class IncreasingPattern_21{
public static void main(String[] args){
int rows;
char ch;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
System.out.println("Enter the character : ");
ch=s.next().charAt(0);
for(int i=0; i<rows; i++){
for(int j=0; j<=i; j++){
System.out.print(ch+" ");
}
System.out.println();
}
}
}

//EASY-22
//Hollow Square
import java.util.*;
class HollowSquare_22{
public static void main(String[] args){
int rows, cols;
char ch;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
System.out.println("Enter the no of columns: ");
cols=s.nextInt();
System.out.println("Enter the character: ");
ch=s.next().charAt(0);
for(int i=1; i<=rows; i++){
for(int j=1; j<=cols; j++){
if((i==1||i==rows)||(j==1||j==cols)){
System.out.print(ch+" ");
}
else{
System.out.print("  ");
}
}
System.out.println();
}
}
}

//EASY-23
//Increasing Numbers Pattern
import java.util.*;
class IncreasingNumbers_23{
public static void main(String[] args){
int rows, n=1;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
for(int i=1; i<=rows; i++){
for(int j=1; j<=i; j++){
System.out.print(n+" ");
}
n=n+1;
System.out.println();
}
}
}


        }
        System.out.println("Enter the elements in matrix 2: ");
        for(i=0;i<rows;i++){
            for(j=0;j<cols;j++){
                mat2[i][j]=s.nextInt();
            }
        }
        for(i=0;i<rows;i++){
            for(j=0;j<cols;j++){
                res[i][j]=mat1[i][j]+mat2[i][j];
            }
        }
        System.out.println("Resulatant Addition Matrix is: ");
        for(i=0;i<rows;i++){
            for(j=0;j<cols;j++){
                System.out.println(res[i][j]+"\t");
            }
            System.out.println();
        }
    }
}

//EASY-24
//Increasing Numbers Square Pattern
import java.util.*;
class IncreasingSquares_24{
public static void main(String[] args){
int rows, n=1;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
for(int i=1; i<=rows; i++){
for(int j=1; j<=i; j++){
System.out.print(n*n+" ");
n=n+1;
}
System.out.println();
}
}
}

//EASY-25
//Increasing, Decreasing Numbers
import java.util.*;
class IncDecnum_25{
public static void main(String[] args){
int rows;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
for(int i=1; i<=rows; i++){
for(int j=1; j<=i; j++){
System.out.print(i+" ");
}
System.out.println();
}
for(int i=(rows-1); i>=1; i--){
for(int j=1; j<=i; j++){
System.out.print(i+" ");
}
System.out.println();
}
}
}

//EASY-26
//Hollow Square Dollar Pattern
import java.util.*;
class HollowSquareDollar_26{
public static void main(String[] args){
int rows, cols;
char ch;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
System.out.println("Enter the no of columns: ");
cols=s.nextInt();
System.out.println("Enter the character: ");
ch=s.next().charAt(0);
for(int i=1; i<=rows; i++){
for(int j=1; j<=cols; j++){
if((i==1||i==rows)||(j==1||j==cols)){
System.out.print(ch+" ");
}
else{
System.out.print("  ");
}
}
System.out.println();
}
}
}

//EASY-27
//Inverted Full Pyramid Pattern
import java.util.*;
class InvertedPyramid_27{
public static void main(String[] args){
int rows;
char ch;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of rows: ");
rows=s.nextInt();
System.out.println("Enter the character : ");
ch=s.next().charAt(0);
for(int i=rows; i>=1; i--){
for(int j=0; j<rows-i; j++){
System.out.print(" ");
}
for(int k=0; k!=(2*i)-1; k++){
System.out.print(ch);
}
System.out.println();
}
}
}

import java.util.*;
class Reversenum{
public static int reverse(int n){
int rev=0, rem;
while(n>0){
rem=n%10;
rev=rev*10+rem;
n=n/10;
}
return rev;
}
public static void main(String[] args){
Scanner s=new Scanner(System.in);
int n;
System.out.println("Enter the number :");
n=s.nextInt();
System.out.println("Number "+n+" after reversing is "+reverse(n));
}
}

//Decimal to Binary, Reversing Binary and Converting to Decimal again.
import java.util.*;
class DectoBintoBinRevtoDec{
public static void main(String[] args){
String bin, rbin;
int n1, n2;
Scanner s=new Scanner(System.in);
System.out.println("Enter the number: ");
n1=s.nextInt();
bin=Integer.toBinaryString(n1);
System.out.println("Binary value is:"+bin);
StringBuilder Rbin=new StringBuilder(bin);
Rbin.reverse();
rbin=Rbin.toString();
System.out.println("Reversed Binary is: "+rbin);
n2=Integer.parseInt(rbin, 2);
System.out.println("Final Binary: "+n2);
}
}

import java.util.*;
class Voting{
public static void main(String[] args){
int age;
Scanner s=new Scanner(System.in);
System.out.println("Enter your age: ");
age=s.nextInt();
if(age>=18){
System.out.println("You are eligible for voting!!");
}
else if(age<18){
System.out.println("You are not eligible for voting!!\n");
System.out.println("You'll be eligible after "+(18-age)+" years");
}
}
}

import java.util.*;
import java.io.*;
class Practice
{
public static void main(String args[])
{
try
{
Scanner sc=new Scanner(System.in);
int num1,num2;
System.out.println("enter the first num");
num1=sc.nextInt();
System.out.println("Enter the second number");
num2=sc.nextInt();
int small=(num1<num2)?num1:num2;
int count=1,gcd=0;
while(count<=small)
{
if(num1%count == 0 && num2%count == 0)
{
gcd=count;
}
count++;
}
int lcm=(num1*num2)/gcd;
System.out.println("the lcm is:"+lcm);
System.out.println("the gcd is:"+gcd);
}
catch(Exception e)
{
System.out.println("Invalid input");
}
}
}

import java.util.*;
class SimpleInterest{
public static void main(String[] args){
int p, t, r, si;
Scanner s=new Scanner(System.in);
System.out.println("Enter Principle Amount: ");
p=s.nextInt();
System.out.println("Enter Time Period: ");
t=s.nextInt();
char type;
System.out.println("Enter senior citizen or not: (y/n)");
type=s.next().charAt(0);
if(type=='y'||type=='Y'){
si=(p*t*12)/100;
System.out.println("Simple Interest is :"+si);
}
else if(type=='n'||type=='N'){
si=(p*t*10)/100;
System.out.println("Simple Interest is :"+si);
}
else{
System.out.println("Enter a valid category!!");
}
}
}

import java.util.*;
class Fibonacci{
public static void main(String[] args){
int a=0, b=1, c, n;
Scanner s=new Scanner(System.in);
System.out.println("Enter the number of terms in fibonacci series: ");
n=s.nextInt();
System.out.println("Fibonacci Series is : \n"+a+"\n"+b);
for(int i=2;i<n;i++){
c=a+b;
System.out.println(c);
a=b;
b=c;
}
}
}

import java.util.*;
import java.io.*;
class SumofEvenFib
{
public static void main(String []args)
{
Scanner sc=new Scanner(System.in);
int i,n,sum=0;
System.out.println("enter the number");
n=sc.nextInt();
int fib[] = new int[2*n+1];
fib[0]=0;
fib[1]=1;
for(i=2;i<=2*n;i++)
{
fib[i]=fib[i-1]+fib[i-2];
if(i%2==0)
{
sum+=fib[i];
}
}
System.out.println("Even sum of fibonacci series is:- "+sum );
}
}

import java.util.*;
import java.io.*;
class SkippingNum_between_M_N
{
public static void main(String []args)
{
Scanner sc=new Scanner(System.in);
int sum=0;
System.out.println("enter M N and K value");
int m=sc.nextInt();
int n=sc.nextInt();
int k=sc.nextInt();
while(m<=n)
{
System.out.println(m);
m=m+k+1;
}
}
}

import java.util.*;
class Factorial{
public static void main(String[] args){
int n, fact=1;
Scanner s=new Scanner(System.in);
System.out.println("Enter a number:");
n=s.nextInt();
for(int i=1; i<=n; i++){
fact=fact*i;
}
System.out.println("Factorial of "+n+" is "+fact);
}
}

//HARD-1
//No of Days into Years, Months, Weeks
import java.util.*;
class DaystoYearsWeeksDays_01{
public static void main(String[] args){
int n, years, years1, weeks, weeks1, days;
Scanner s=new Scanner(System.in);
System.out.println("Enter the no of days: ");
n=s.nextInt();
years=n/365;
years1=n%365;
weeks=years1/7;
weeks1=years1%7;
days=weeks1;
System.out.println("No of years is :"+years);
System.out.println("No of weeks is :"+weeks);
System.out.println("No of days is :"+days);
}
}

//HARD-2
//Total no of Student Users
import java.util.*;
class NoofStudentUsers_02{
public static void main(String[] args){
int total, staff, non, student;
Scanner s=new Scanner(System.in);
System.out.println("Enter the total users: ");
total=s.nextInt();
System.out.println("Enter staff users: ");
staff=s.nextInt();
non=staff/3;
System.out.println("Non Teaching Staff are: "+non);
student=(total-staff-non);
System.out.println("Total Student users are: "+student);
}
}

//HARD-3
//Nth Factor Finding
import java.util.*;
class NthFactor_03{
public static void main(String[] args){
int num, n, count=0;
Scanner s=new Scanner(System.in);
System.out.println("Enter the number: ");
num=s.nextInt();
System.out.println("Enter the nth factor: ");
n=s.nextInt();
for(int i=1; i<num; i++){
if(num%i==0){
count=count+1;
if(count==n){
System.out.println(n+"th Factor is:"+i);
}
}
}
if(n>count){
System.out.println("Can't find "+n+"th factor");
System.out.println("Only "+count+" factors are possible.");
}
}
}

//HARD-4
//Nth Prime
import java.util.*;
class NthPrimeNo_04{
public static void main(String[] args){
int n, fact, count=0, nth;
Scanner s=new Scanner(System.in);
System.out.println("Enter the range: ");
n=s.nextInt();//HARD-5
// Perfect Squares whose digits sum is 10.
import java.util.*;
class PerfectSquare_05
{
public static void main(String[] args){
int ln, un;
Scanner s=new Scanner(System.in);
System.out.println("Enter lower range: ");
ln=s.nextInt();
System.out.println("Enter upper range: ");
un=s.nextInt();
int d1, d2, c;
for(int i=ln; i<=un; i++){
for(int j=ln; j<=un; j++){
if(j==(i*i)){
d1=j%10;
d2=j/10;
c=d1+d2;
if(c<10){
System.out.println(j);
}
}
}
}
}
}

//HARD-8
//Displaying Account Balance
import java.util.*;
class BA{
String name;
int accno, amount, withdraw, balance=10000;
char type;
Scanner s=new Scanner(System.in);
void get(){
System.out.println("Enter account holder name: ");
name=s.nextLine();
System.out.println("Enter the acc no : ");
accno=s.nextInt();
System.out.println("Enter account type : S/C");
type=s.next().charAt(0);
if((type=='S')||(type=='s')||(type=='C')||(type=='c')){
System.out.println("Account type accepted!");
}
else{
System.out.println("Account type not valid!!");
}
}
void balance(){
System.out.println("Enter amount to deposit: ");
amount=s.nextInt();
balance=balance+amount;
}
void withdraw(){
if(balance>500){
System.out.println("Enter the amount to withdraw: ");
withdraw=s.nextInt();
balance=balance-withdraw;
System.out.println("Account Holder: "+name);
System.out.println("Account Number: "+accno);
if((type=='s')||(type=='S')){
System.out.println("Account Type: Savings Account");
}
else if((type=='c')||(type=='C')){
System.out.println("Account Type: Current Account");
}
System.out.println("Available balance is: "+balance);
}
else{
System.out.println("You cannot withdraw amount "+balance+" rupees remaining");
}
}
}
class AccBalance_08{
public static void main(String[] args){
try{
BA obj=new BA();
obj.get();
obj.balance();
obj.withdraw();
}
catch(Exception e){
System.out.println("Enter valid details!!");
}
}
}

//HARD-14
//Until*Encountered
import java.util.*;
class UntilSTAREncountered_14{
public static void main(String[] args){
Scanner s=new Scanner(System.in);
char[] ch=new char[100];
int digit=0, upper=0, lower=0;
System.out.println("Enter the elements 1 by one: ");
for(int i=0; i<100; i++){
System.out.println("Enter character: ");
ch[i]=s.next().charAt(0);
if(Character.isUpperCase(ch[i])){
upper++;
}
else if(Character.isLowerCase(ch[i])){
lower++;
}
else if(Character.isDigit(ch[i])){
digit++;
}
if(ch[i]=='*'){
System.out.println("* encountered exiting program!!");
break;
}
}
System.out.println("Upper case letter count: "+upper);
System.out.println("Lower case letter count: "+lower);
System.out.println("Digit count is:"+digit);
}
}

//HARD-18
//Number of steps to reduce the given number to zero
import java.util.*;
class StepsforZero_18{
public static void main(String[] args){
Scanner s=new Scanner(System.in);
int num, step=0;
System.out.println("Enter the number: ");
num=s.nextInt();
while(num>0){
if(num%2==0){
num=num/2;
}
else{
num=num-1;
}
step++;
}
System.out.println("Steps taken are: "+step);
}
}

//HARD-18
//Number of steps to reduce the given number to zero
import java.util.*;
class StepsforZero_18{
public static void main(String[] args){
Scanner s=new Scanner(System.in);
int num, step=0;
System.out.println("Enter the number: ");
num=s.nextInt();
while(num>0){
if(num%2==0){
num=num/2;
}
else{
num=num-1;
}
step++;
}
System.out.println("Steps taken are: "+step);
}
}

import java.util.*;
class HelloWorld{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int a,b,c;
        System.out.println("Enter 1st number:");
        a=s.nextInt();
        System.out.println("Enter 2nd number:");
        b=s.nextInt();
        c=a+b;
        System.out.println("Output = "+c);
    }
}

//Armstrong Number

import java.util.*;
class ArmstrongNum{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int n,temp,r,sum=0;
        System.out.print("Enter a number:");
        n=s.nextInt();
        temp=n;
        while(n>0)
        {
            r=n%10;
            n=n/10;
            sum=sum+r*r*r;
        }
        if(temp==sum)
        {
            System.out.print("It is a Armstrong Number");
        }
        else{
            System.out.print("It is not a Armstrong Number");
        }
    }
}

//Average of 15 Students Marks
import java.util.*;
public class Average_of_15_Students {
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int i;
        int avg, sum=0;
        int a[]=new int[15];
        System.out.println("Enter Each Student Marks:");
        for(i=0;i<a.length;i++)
        {
            System.out.println("Enter "+(i+1)+" Marks:");
            a[i]=s.nextInt();
            sum=sum+a[i];
        }
        avg=sum/ a.length;
        System.out.println("Sum is = "+sum);
        System.out.println("Average is ="+avg);
    }
}

//Box using OOPS concept.

import java.util.*;
class BOX{
    double width, height, depth;
    BOX(double w, double h, double d){
        width=w;
        height=h;
        depth=d;
    }
    double volume(){
        return width*height*depth;
    }
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Height:");
        double height=s.nextDouble();
        System.out.print("Enter the Width:");
        double width=s.nextDouble();
        System.out.print("Enter the Depth:");
        double depth=s.nextDouble();
        BOX b3=new BOX(width, height, depth);
        double res=b3.volume();
        System.out.println("The volume is "+res);
    }
}

//Celsius to Farenheit

import java.util.Scanner;

class HelloWorld {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int c, fin;
        System.out.println("Enter the Celsius Temperature: ");
        c = s.nextInt();
        fin = (c * 9 / 5) + 32;
        System.out.println("The equivalent Farenheit value for given is = " + fin);
    }
}

// Area of circle

import java.util.*;
class Circle{
    int radius;
    void area(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Radius:");
        radius=s.nextInt();
    }
    void result(){
        double result=3.14*radius*radius;
        System.out.println("The area of Circle is "+result);
    }
}

class Circ{
    public static void main(String[] args){
        Circle obj=new Circle();
        obj.area();
        obj.result();
    }
}

//College and Departments

import java.util.*;
class MyProgram{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        String dept;
        System.out.print("Enter the Department name:");
        dept=s.nextLine();
        if(dept.equals("CSE")||dept.equals("ECE")||dept.equals("MECH")||dept.equals("CIVIL")||dept.equals("ENEE"))
        {
            System.out.print("Belongs to SSE college\n");
        }
        else if(dept.equals("CARDIO")||dept.equals("NEURO"))
        {
            System.out.print("Belongs to SMC college\n");
        }
        else if(dept.equals("BCOM")||dept.equals("BSC"))
        {
            System.out.print("Belongs to SCLAS college\n");
        }
        else if(dept.equals("FASHION")||dept.equals("ARCHITECTURE"))
        {
            System.out.print("Belongs to SCAD college\n");
        }
    }
}

//Calculate No of Years, Days, Weeks from given no of days
// Assignment 1 Q-5

import java.util.*;
class DaystoYearsWeeksDays{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int noofdays, years, weeks, days, rdays;
        System.out.print("Enter No of Days:");
        noofdays=s.nextInt();
        if(noofdays<0)
        {
            System.out.print("Enter valid No of Days");
        }
        else if(noofdays>=0) {
            years = noofdays/365;
            rdays = noofdays%365;
            weeks = rdays/7;
            days = rdays%7;
            System.out.println("No of Years is : "+years);
            System.out.println("No of Weeks is :"+weeks);
            System.out.println("No of Days is :"+days);
        }
    }
}

//Decimal to Binary, Reversing Binary and Converting to Decimal again.
import java.util.*;
class DectoBintoBinRevtoDec{
public static void main(String[] args){
String bin, rbin;
int n1, n2;
Scanner s=new Scanner(System.in);
System.out.println("Enter the number: ");
n1=s.nextInt();
bin=Integer.toBinaryString(n1);
System.out.println("Binary value is:"+bin);
StringBuilder Rbin=new StringBuilder(bin);
Rbin.reverse();
rbin=Rbin.toString();
System.out.println("Reversed Binary is: "+rbin);
n2=Integer.parseInt(rbin, 2);
System.out.println("Final Binary: "+n2);
}
}

//Even or Odd

import java.util.Scanner;
class HelloWorld {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        System.out.println("Enter the Number:");
        int num;
        num=s.nextInt();
        if(num%2==0)
        {
            System.out.printf("The number %d is EVEN",num);
        }
        else
        {
            System.out.printf("The number %d is ODD",num);
        }
    }
}

// Factorial, Sum of Series using Inheritance

import java.util.*;
class Sum{
    protected int n, i, sum=0;
    void get(){
        System.out.print("Enter the no of terms: ");
        Scanner s=new Scanner(System.in);
        n=s.nextInt();
    }
    void sumof(){
        for(i=0;i<=n;i++){
            sum=sum+i;
        }
    }
}
class Fact extends Sum{
    private int fact=1;
    void fact(){
        for(i=1;i<=n;i++){
            fact=fact*i;
        }
    }
    void display(){
        System.out.println("Sum of "+n+" Numbers is : "+sum);
        System.out.println("Factorial of "+n+" Numbers is : "+fact);
    }
}
class Factsum{
    public static void main(String[] args){
        Fact obj=new Fact();
        obj.get();
        obj.sumof();
        obj.fact();
        obj.display();
    }
}

//Factorial of a number

import java.util.*;
class HelloWorld {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        int n;
        int fact;
        System.out.print("Enter the number to find factorial:");
        n=s.nextInt();
        fact=1;
        for(int i=1;i<=n;i++){
            fact*=i;
        }
        System.out.printf("The factorial of given number %d is %d\n",n,fact);
    }
}

// Factorial using OOPS

import java.util.*;
class FactusingOOP{
    int n, fact=1, i, res;
    void fact(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Number to find Factorial:");
        n=s.nextInt();
        for(i=1;i<=n;i++){
            fact=fact*i;
        }
        res=fact;
    }
    void result(){
        System.out.println("The factorial of Given Number "+n+" is "+res);
    }
}
class FACT{
    public static void main(String[] args){
        FactusingOOP obj=new FactusingOOP();
        obj.fact();
        obj.result();
    }
}

// Factorial using OOPS

import java.util.*;
class FactusingOOP{
    int n, fact=1, i, res;
    void fact(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Number to find Factorial:");
        n=s.nextInt();
        for(i=1;i<=n;i++){
            fact=fact*i;
        }
        res=fact;
    }
    void result(){
        System.out.println("The factorial of Given Number "+n+" is "+res);
    }
}
class FACT{
    public static void main(String[] args){
        FactusingOOP obj=new FactusingOOP();
        obj.fact();
        obj.result();
    }
}

//Fibonacci Series

import java.util.*;
class MyProgram{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int n,a=0,b=1,c;
        System.out.print("Enter the number of terms in series:");
        n=s.nextInt();
        System.out.print("Fibonacci Series: ");
        System.out.println(a+","+b+",");
        for(int i=2;i<n;i++)
        {
            c=a+b;
            System.out.println(c+",");
            a=b;
            b=c;
        }
    }
}

//Hello World

class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}

//Leap Year or not

import java.util.Scanner;
class HelloWorld {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int year;
        System.out.println("Enter the year number:");
        year=s.nextInt();
        if((year%4==0&&year%100!=0)||year%400==0)
        {
            System.out.printf("The given year %d is a leap year\n",year);
        }
        else
        {
            System.out.printf("The given year %d is not a leap year\n",year);
        }
    }
}

//Matrix Addition
import java.util.*;
class MatrixAddition{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int r,c;
        int i,j;
        System.out.print("Enter no of rows:");
        r=s.nextInt();
        System.out.print("Enter no of columns:");
        c=s.nextInt();
        int a[][]=new int[r][c];
        int b[][]=new int[r][c];
        int sum[][]=new int[r][c];
        System.out.print("Enter elements of Matrix-A:");
        for(i=0;i<r;i++){
            for(j=0;j<c;j++){
                a[i][j]=s.nextInt();
            }
        }
        System.out.print("Enter elements of Matrix-B:");
        for(i=0;i<r;i++){
            for(j=0;j<c;j++){
                b[i][j]=s.nextInt();
            }
        }
        System.out.print("The resultant matrix of A+B is:\n");
        for(i=0;i<r;i++){
            for(j=0;j<c;j++){
                sum[i][j]=a[i][j]+b[i][j];
                System.out.print(sum[i][j]+" ");
            }
            System.out.println();
        }
    }
}

System.out.println("Enter the nth term: ");
nth=s.nextInt();
for(int i=1; i<=n; i++){
fact=0;
for(int j=1; j<=i; j++){
if(i%j==0){
fact=fact+1;
}
}
if(fact==2){
count=count+1;
System.out.println(i+" is a prime number.");
}
if(count==nth){
System.out.println(nth+"th prime is: "+i);
break;
}
}
}
}

//Matrix Multiplication
import java.util.*;
class MatrixMultiplication{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int ar, br, ac, bc;
        int i,j,k;
        System.out.print("Enter no of rows for Matrix-A:");
        ar=s.nextInt();
        System.out.print("Enter no of columns for Matrix-A:");
        ac=s.nextInt();
        System.out.print("Enter no of rows for Matrix-B:");
        br=s.nextInt();
        System.out.print("Enter no of columns for Matrix-B:");
        bc=s.nextInt();
        if(ac!=br){
            System.out.print("Matrix Multiplication not possible!!");
            return;
        }
        int a[][]=new int[ar][ac];
        int b[][]=new int[br][bc];
        int res[][]=new int[ar][bc];
        System.out.print("Enter elements of Matrix-A:");
        for(i=0;i<ar;i++){
            for(j=0;j<ac;j++){
                a[i][j]=s.nextInt();
            }
        }
        System.out.print("Enter elements of Matrix-B:");
        for(i=0;i<br;i++){
            for(j=0;j<bc;j++){
                b[i][j]=s.nextInt();
            }
        }
        System.out.print("The resultant matrix of A*B is:\n");
        for(i=0;i<ar;i++){
            for(j=0;j<bc;j++) {
                res[i][j] = 0;
                for (k = 0; k < ac; k++) {
                    res[i][j] += a[i][k] * b[k][j];
                }
            }
        }
        for(i=0;i<ar;i++){
            for (j = 0; j < bc; j++) {
                System.out.print(res[i][j]+ " ");
            }
            System.out.println();
        }
    }
}

//Matrix Subtraction

import java.util.*;
class MatrixSubtractition{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int r,c;
        int i,j;
        System.out.print("Enter no of rows:");
        r=s.nextInt();
        System.out.print("Enter no of columns:");
        c=s.nextInt();
        int a[][]=new int[r][c];
        int b[][]=new int[r][c];
        int sum[][]=new int[r][c];
        System.out.print("Enter elements of Matrix-A:");
        for(i=0;i<r;i++){
            for(j=0;j<c;j++){
                a[i][j]=s.nextInt();
            }
        }
        System.out.print("Enter elements of Matrix-B:");
        for(i=0;i<r;i++){
            for(j=0;j<c;j++){
                b[i][j]=s.nextInt();
            }
        }
        System.out.print("The resultant matrix of A-B is:\n");
        for(i=0;i<r;i++){
            for(j=0;j<c;j++){
                sum[i][j]=a[i][j]-b[i][j];
                System.out.print(sum[i][j]+" ");
            }
            System.out.println();
        }
    }
}


// Method Overloading Example

import java.util.*;
class MethodOverloading{
    void arg(){
        System.out.print("Welcome to java!\n");
    }
    void arg(String a){
        for(int i=1;i<=2;i++){
            System.out.println(a);
        }
    }
    void arg(String b,int c)
    {
        for(int i=1;i<=3;i++){
            System.out.println(b);
        }
    }
    public static void main(String[] args){
        MethodOverloading t=new MethodOverloading();
        t.arg();
        t.arg("Welcome to Programming!");
        t.arg("Welcome to Overloading!", 4);
    }
}

// (OR)
/*import java.util.*;
class MethodOverloading{
    void arg(){
        System.out.print("Welcome to java!\n");
    }
    void arg(String a){
        for(int i=1;i<=2;i++){
            System.out.print("Welcome to Polymorphism!\n");
        }
    }
    void arg(String b,int c)
    {
        for(int i=1;i<=3;i++){
            System.out.print("Welcome to Overloading!\n");
        }
    }
    public static void main(String[] args){
        MethodOverloading t=new MethodOverloading();
        t.arg();
        t.arg("ABC");
        t.arg("ABC", 4);
    }
}

// Assignment-3 Q-2
// Multi Level Inheritance
// Area of Circle: pi × radius2
// Volume of cylinder: pi × radius2 × height
// Volume of cone: (1/3) × pi × radius2 × height

import java.util.*;
class Circle1{
    protected double area;
    private int r;
    void get(int a){
        r=a;
    }
    void cal(){
        area=3.14*r*r;
    }
}
class Cylinder1 extends Circle1{
    protected double volume;
    private int h;
    void get1(int b){
        h=b;
    }
    void cal1(){
        volume=area*h;
    }
}
class Cone extends Cylinder1{
    protected double Cvolume;
    void cal2(){
        Cvolume=0.33*volume;
    }
    void display(){
        System.out.println("The Area of Circle is :"+area);
        System.out.println("The Volume of Cylinder is: "+volume);
        System.out.println("The Volume of Cone is :"+Cvolume);
    }
}
class Inheri{
    public static void main(String[] args){
        int x,y;
        Scanner s=new Scanner(System.in);
        System.out.print("Enter Radius:");
        x=s.nextInt();
        System.out.print("Enter Height:");
        y=s.nextInt();
        Cone obj=new Cone();
        obj.get(x);
        obj.cal();
        obj.get1(y);
        obj.cal1();
        obj.cal2();
        obj.display();
    }
}

//Multi Threading Example
//Mutiplication table of 5 & 10.

import java.util.*;
class Athread extends Thread{
    int i, n1, pro1;
    public void run(){
        try{
            Scanner s=new Scanner(System.in);
            System.out.print("Enter number 1 : ");
            n1=s.nextInt();
            for(i=1;i<=10;i++){
                pro1=n1*i;
                System.out.println(n1+"x"+i+"="+pro1);
                Thread.sleep(1000);
            }
        }
        catch(InterruptedException e){
            System.out.print("Exceeded n value!!");
        }
        System.out.println("Exiting "+n1+" multipliaction !!");
    }
}
class Bthread extends Thread{
    int i, n2, pro2;
    public void run(){
        try{
            Scanner s=new Scanner(System.in);
            System.out.print("\nEnter number 2 : ");
            n2=s.nextInt();
            for(i=1;i<=10;i++){
                pro2=n2*i;
                System.out.println(n2+"x"+i+"="+pro2);
                Thread.sleep(1000);
            }
        }
        catch(InterruptedException e){
            System.out.print("Exceeded n value!!");
        }
        System.out.print("Exiting "+n2+" multipliaction !!");
    }
}
class Multithreadtest{
    public static void main(String[] args)
    {
        Athread a=new Athread();
        Bthread b=new Bthread();
        a.start();
        b.start();
    }
}

//Write a java program to get the input as a string in your name and find the length of your name, uppercase, lowercase, and find the 'e' letter in your name, find 5th character.

import java.util.*;
class Name{
    String S1, S2, S3, S4, S5;
    int cl=0, cu=0, l;
    void get(){
        System.out.print("Enter Your Name: ");
        Scanner s=new Scanner(System.in);
        S1=s.nextLine();
        if(!S1.contains("e")){
            System.out.print("Your name does not contain Letter E\n");
        }
        else{
            S2=S1.replace("e", "*");
        }
        S3=String.valueOf(S1.charAt(5));
        l = S1.length();
        S4=S1.toLowerCase();
        S5=S1.toUpperCase();
    }
    void answer(){
        for(char c: S1.toCharArray()){
            if(Character.isLowerCase(c)){
                cl++;
            }
            else if(Character.isUpperCase(c)){
                cu++;
            }
        }
    }
    void result(){
        System.out.println("1: Length of "+S1+" is : "+l);
        System.out.println("2: No of Uppercase in "+S1+" is: "+cu);
        System.out.println("2-i:"+S1+" after converting into Lower case is :"+S4);
        System.out.println("3: No of Lowercase in "+S1+" is: "+cl);
        System.out.println("3-i:"+S1+" after converting into upper case is :"+S5);
        System.out.println("4:"+S2);
        System.out.println("5:'"+S3+"'is the charater Present at 5th location");
    }
    public static void main(String[] args){
        Name obj=new Name();
        obj.get();
        obj.answer();
        obj.result();
    }
}


//Palindrome
//Choice:1 for Number, Choice:2 for String

import java.util.*;
class Palindrome{
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int choice;
        System.out.print("Enter Choice=1 for Number\nEnter Choice=2 for String\n");
        System.out.print("Enter your choice:");
        choice=s.nextInt();
        System.out.print("Enter the string: ");
        String value = s.next();
        switch(choice){
            case 1:
                int num = Integer.parseInt(value);
                int rev = 0,rem,num2=num;
                while(num!=0){
                    rem = num%10;
                    rev = rev*10+rem;
                    num = num/10;
                }
                if(num2==rev)
                    System.out.println("the number is palindrome");
                else
                    System.out.println("the number is not a polindrome");
                break;
            case 2:
                StringBuffer s1 = new StringBuffer(value);
                s1.reverse();
                String s2 = s1.toString();
                if (value.equals(s2))
                    System.out.println("the strings are pallindrome");
                else
                    System.out.println("the strings are not pallindrome");
                break;
            default:
                System.out.print("Enter a valid choice:");
        }
    }
}

import java.util.*;
public class PerfectNumber {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a number: ");
        int number = scanner.nextInt();
        if (isPerfectNumber(number)) {
            System.out.println(number + " is a perfect number.");
        } else {
            System.out.println(number + " is not a perfect number.");
        }
    }
    public static boolean isPerfectNumber(int num) {
        if (num <= 0) {
            return false;
        }
        int sum = 0;
        for (int i = 1; i <= num / 2; i++) {
            if (num % i == 0) {
                sum += i;
            }
        }
        return sum == num;
    }
}

//Positive Negative

import java.util.*;
class HelloWorld {
    public static void main(String[] args) {
        Scanner s = new Scanner(System.in);
        int num;
        System.out.println("Enter a number:");
        num=s.nextInt();
        if(num<0)
        {
            System.out.printf("Given number %d is a negative number\n",num);
        }
        else if(num==0)
        {
            System.out.printf("Given number %d is zero\n",num);
        }
        else if(num>0)
        {
            System.out.printf("Given number %d is a positive number\n",num);
        }
    }
}

//Prime Number or not

import java.util.*;
class PrimeNumber{
    public static void main(String[] args)
    {
        int n, m=0, i, flag=0;
        Scanner s=new Scanner(System.in);
        System.out.print("Enter a number:");
        n=s.nextInt();
        m=n/2;
        if(n==0 || n==1|| n==4)
        {
            System.out.printf("%d is Not a Prime Number",n);
        }
        else{
            for(i=2;i<=m;i++)
            {
                if(n%i==0)
                {
                    System.out.printf("%d is Not a Prime Number",n);
                    flag=1;
                    break;
                }
            }
            if(flag==0)
            {
                System.out.printf("%d is a Prime Number",n);
            }
        }
    }
}

//Rectangle Area

import java.util.*;
class Rectangle{
    int height, width;
    void area(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Height:");
        height=s.nextInt();
        System.out.print("Enter the width:");
        width=s.nextInt();
    }
    void result(){
        int result=height*width;
        System.out.println("The area of Rectangle is "+result);
    }
}

class Rect{
    public static void main(String[] args){
        Rectangle obj=new Rectangle();
        obj.area();
        obj.result();
    }
}

//Reverse a number

import java.util.*;
class ReverseNum{
    public static int reverse(int n)
    {
        int rev=0;
        int rem;
        while(n>0)
        {
            rem=n%10;
            rev=(rev*10)+rem;
            n=n/10;
        }
        return rev;
    }
    public static void main(String[] args)
    {
        int n;
        Scanner s=new Scanner(System.in);
        System.out.print("Enter a number to reverse:");
        n=s.nextInt();
        System.out.println("Reverse of given number is = "+reverse(n));
    }
}

//Reverse a number

import java.util.*;
class ReverseNum{
    public static int reverse(int n)
    {
        int rev=0;
        int rem;
        while(n>0)
        {
            rem=n%10;
            rev=(rev*10)+rem;
            n=n/10;
        }
        return rev;
    }
    public static void main(String[] args)
    {
        int n;
        Scanner s=new Scanner(System.in);
        System.out.print("Enter a number to reverse:");
        n=s.nextInt();
        System.out.println("Reverse of given number is = "+reverse(n));
    }
}

//Simple Interest
//Assignment 1 Q-4

import java.util.*;
class SimpleInterest{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int si, p, r, t;
        boolean isSenior;
        System.out.println("Enter the Principal amount:");
        p=s.nextInt();
        if(p<0)
        {
            System.out.println("Enter a valid Principal Amount");
        }
        else{
            System.out.println("Are you a senior citizen(True or False):");
            isSenior=s.nextBoolean();
            if(isSenior)
            {
                System.out.println("Rate of interest is 12%");
                r=12;
            }
            else{
                System.out.println("Rate of interest is 10%");
                r=10;
            }
            System.out.println("Enter the Time Period:");
            t=s.nextInt();
            if(t<0)
            {
                System.out.println("Enter a valid Time Period");
            }
            else{
                si=(p*r*t)/100;
                System.out.printf("The Simple Interest is %d",si);
            }
        }
    }
}

// Java program for Simple Interest using OOPS Argument Passing

import java.util.*;
class SI{
    int p, t, r, intr=0;
    SI(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter Principal Amount:");
        p=s.nextInt();
        System.out.print("Enter Time Period:");
        t=s.nextInt();
        System.out.print("Enter the Rate of Interest:");
        r=s.nextInt();
    }
    void intr(){
        intr=(p*t*r)/100;
        System.out.println("The Simple Interest for Principal Amount "+p+" for Time Period "+t+" is : "+intr);
    }
    public static void main(String[] args){
        SI obj=new SI();
        obj.intr();
    }
}

//Simple Interest using OOPS

import java.util.*;
class SI{
    int p, t, r;
    void simpleinterest(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Principal Amount:");
        p=s.nextInt();
        System.out.print("Enter the Rate of Interest:");
        r=s.nextInt();
        System.out.print("Enter the Time Period:");
        t=s.nextInt();
    }
    void result(){
        int si=(p*t*r)/100;
        System.out.println("The Simple Interest is:"+si);
    }
}

class Simple_Interest{
    public static void main(String[] args){
        SI obj=new SI();
        obj.simpleinterest();
        obj.result();
    }
}

// Single Inheritance Program
//Area of Circle: pi × radius2
//Volume of cylinder: pi × radius2 × height

import java.util.*;
class Circle{
    protected double area;
    private int r;
    void get(int a){
        r=a;
    }
    void cal(){
        area=3.14*r*r;
    }
}
class Cylinder extends Circle{
    protected double volume;
    private int h;
    void get1(int b){
        h=b;
    }
    void cal1(){
        volume=area*h;
    }
    void display(){
        System.out.println("The area of Circle is :"+area);
        System.out.println("The volume of Cylinder is: "+volume);
    }
}
class Inher{
    public static void main(String[] args){
        int x,y;
        Scanner s=new Scanner(System.in);
        System.out.print("Enter Radius:");
        x=s.nextInt();
        System.out.print("Enter Height:");
        y=s.nextInt();
        Cylinder obj=new Cylinder();
        obj.get(x);
        obj.cal();
        obj.get1(y);
        obj.cal1();
        obj.display();
    }
}

/*Write a java program to print the following:
String 1 = I Love java
String 2 = java
String 3 = JAVA
output:-
i) print String 1 as "i love java"
ii) print String 1 as "I LOVE JAVA"
iii) print String 1 as "I Live java"
iv) Display String 1 as "Love java"
v) Display String 1 as "Love"
vi) Find the position of 'L' in S1
vii) Find length of S1
viii) Find S2 is equals tto S3 and find S2 is equal to S3 using IgnoreCase
ix) Find Character at Position 2 in S1
x) Comparision of S2 & S3
 */
import java.util.*;
class Str{
    String S1="I Love java";
    String S2="java";
    String S3="JAVA";
    String S4, S5, S6, S7, S8;
    int S9, S10, S14; 
    char S13;
    boolean S11, S12;
    void stri(){
        S4=S1.toLowerCase();
        S5=S1.toUpperCase();
        S6=S1.replace('o','i');
        S7=S1.substring(2);
        S8=S1.substring(2, 6);
        S9=S1.indexOf('L');
        S10=S1.length();
        S11=S2.equals(S3);
        S12=S2.equalsIgnoreCase(S3);
        S13=S1.charAt(2);
        S14=S2.compareTo(S3);
    }
    void display(){
        System.out.println("1: "+S4);
        System.out.println("2: "+S5);
        System.out.println("3: "+S6);
        System.out.println("4: "+S7);
        System.out.println("5: "+S8);
        //System.out.println("6: "+S1.indexOf('L')); We can directly print using this.
        System.out.println("6: "+S9);
        System.out.println("7: "+S10);
        System.out.println("8-i: "+S11);
        System.out.println("8-ii: "+S12);
        System.out.println("9: " +S13);
        System.out.println("10: "+S14);
    }
}
class StringEx{
    public static void main(String[] args){
        Str obj=new Str();
        obj.stri();
        obj.display();
    }
}

// Assignment-3 Q-1
/*Write a Java program to enter the marks of a student in four subjects. 
Then calculate the total and aggregate, and display the grade obtained by the student. 
If the student scores an aggregate greater than 75%, then the grade is Distinction. 
If the aggregate is 60>= and <75, then the grade is First Division. 
If the aggregate is 50 >= and <60, then the grade is Second Division. 
If the aggregate is 40>= and <50, then the grade is Third Division, else the grade is Fail. Using Multilevel inheritance concept.
Sample Input & Output:
Enter the marks in python: 90
Enter the marks in c programming: 91
Enter the marks in Mathematics: 92
Enter the marks in Physics: 93
Total= 366
Aggregate = 91.5
DISTINCTION
Test cases:
a)	18, 76,93,65
b)	73,78,79,75
c)	98,106,120,95
d)	96,73, -85,95
e)	78,59.8,76,79
*/

import java.util.*;
class Marks{
    private int S1, S2, S3, S4;
    protected int total=0;
    void getmarks(int A, int B, int C, int D){
        S1=A;
        S2=B;
        S3=C;
        S4=D;
    }
    void caltotal(){
        int sum=S1+S2+S3+S4;
        total = total+sum;
    }
}
class Aggregate extends Marks{
    protected double aggregate;
    void calaggregate(){
        aggregate=(total/4);
    }
}
class Grade extends Aggregate{
    void calgrade(){
        if(aggregate>75){
            System.out.print("You Scored DISTINCTION.\n");
            System.out.print("CONGRATULATIONS!!");
        }
        else if(aggregate>=60 && aggregate<75){
            System.out.print("You scored FIRST DIVISION.");
        }
        else if(aggregate>=50 && aggregate<60){
            System.out.print("You scored SECOND DIVISION.");
        }
        else if(aggregate>=40 && aggregate<50){
            System.out.print("You scored THIRD DIVISION.");
        }
        else if(aggregate>=0 && aggregate<40){
            System.out.print("You have FAILED in Exams.");
            System.out.print("Improve your Grades!!");
        }
        else{
            System.out.print("Aggregate is not defined!!");
        }
    }
    void display(){
        System.out.println("\nTotal Marks are : "+total);
        System.out.println("Your aggregate is : "+aggregate);
    }
}
class StudentMarks{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        int W, X, Y, Z;
        System.out.print("Enter the marks in Python: ");
        W=s.nextInt();
        System.out.print("Enter the marks in C-Programming: ");
        X=s.nextInt();
        System.out.print("Enter the marks in Mathematics: ");
        Y=s.nextInt();
        System.out.print("Enter the marks in Physics: ");
        Z=s.nextInt();
        if(W<0||W>100||X<0||X>100||Y<0||Y>100||Z<0||Z>100){
            do{
            System.out.print("Enter a valid mark(i.e between 0 and 100)!!\n");
            System.out.print("Re-Enter Again Marks Properly.\n");
            System.out.print("Enter the marks in Python: ");
            W=s.nextInt();
            System.out.print("Enter the marks in C-Programming: ");
            X=s.nextInt();
            System.out.print("Enter the marks in Mathematics: ");
            Y=s.nextInt();
            System.out.print("Enter the marks in Physics: ");
            Z=s.nextInt();
            }while(W<0||W>100||X<0||X>100||Y<0||Y>100||Z<0||Z>100);
        }
        Grade obj=new Grade();
        obj.getmarks(W, X, Y, Z);
        obj.caltotal();
        obj.calaggregate();
        obj.calgrade();
        obj.display();
    }
}

//Sum of N numbers

import java.util.*;
class MyProgram {
    public static void main(String[] args) {
        Scanner s=new Scanner(System.in);
        int n,i;
        int sum=0;
        System.out.print("Enter the number:");
        n=s.nextInt();
        for(i=0;i<=n;i++)
        {
            sum=sum+i;
        }
        System.out.printf("The sum of given %d numbers is = %d",n,sum);
    }
}

// Sum of Sereies using OOPS

import java.util.*;
class SumSeries{
    int n;
    void Sum(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the no of elements in the series: ");
        n = s.nextInt();
    }
    void result(){
        int sum=0;
        for(int i=0;i<=n;i++){
            sum=sum+i;
        }
        System.out.println("The Sum of "+n+" terms is : "+sum);
    }
}

class Sum{
    public static void main(String[] args){10
        SumSeries obj=new SumSeries();
        obj.Sum();
        obj.result();
    }
}

// Sum of Sereies using OOPS

import java.util.*;
class SumSeries{
    int n;
    void Sum(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the no of elements in the series: ");
        n = s.nextInt();
    }
    void result(){
        int sum=0;
        for(int i=0;i<=n;i++){
            sum=sum+i;
        }
        System.out.println("The Sum of "+n+" terms is : "+sum);
    }
}

class Sum{
    public static void main(String[] args){10
        SumSeries obj=new SumSeries();
        obj.Sum();
        obj.result();
    }
}

/*
Bring out the situation in which member names of a subclass hide members by the same name in the super class. 
How it can be resolved? Write Suitable code in Java and 
Implement above scenario with the Parametrized Constructor 
(accept int type parameter) of the Super Class can be called from Sub Class Using super () and display the input values provided.

Input :
	Assign or input values for super class and sub class members.
Pseudo :
               Define super class and sub class with one member (has same name)
	Define method in super class and sub class with same method signature
	Declare the object in main method
	Invoke methods using object to display the values

Output :
Sample Input : 100, 200
Sample Output : 100, 200
Test Cases
1.	10, 20
2.	-20, -30
3.	0, 0
4.	EIGHT FIVE
5.	10.57, 12.58
 */

import java.util.*;
class Superclass{
    protected int number1;
    Superclass(int number1){
        this.number1=number1;
    }
    void display(){
        System.out.println("The Numbers are:\n"+number1);
    }
}
class Subclass extends Superclass{
    private int number1, number2;
    Subclass(int number1, int number2){
        super(number1);
        this.number2=number2;
    }
    void display(){
        super.display();
        System.out.println(number2);
    }
}
class Main{
    public static void main(String[] args){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter Numbers:\n");
        /*int number1=s.nextInt();
        int number2=s.nextInt();
        if((!(isDigit(number1)))||(!(isDigit(number2)))){
            System.out.print("Enter a Numerical Input!!");
        }*/
        int number1, number2;
        try {
            number1 = s.nextInt();
            number2 = s.nextInt();
        } catch (InputMismatchException e) {
            System.out.println("Enter a Numerical Input!!");
            return;
        }
        Subclass obj=new Subclass(number1, number2);
        obj.display();
    }
}

//Area of Triangle

import java.util.*;
class Triangle{
    int height, breadth;
    void area(){
        Scanner s=new Scanner(System.in);
        System.out.print("Enter the Height:");
        height=s.nextInt();
        System.out.print("Enter the Breadth:");
        breadth=s.nextInt();
    }
    void result(){
        double result=0.5*height*breadth;
        System.out.println("The area of Triangle is "+result);
    }
}

class Tri{
    public static void main(String[] args){
        Triangle obj=new Triangle();
        obj.area();
        obj.result();
    }
}

//Assignment-2 Q-2
/*Write a class called Triangle that can be used to represent a triangle. It should include the following methods that return Boolean values indicating if the particular property holds:
        •	isRight (a right triangle)
        •	isScalene (no two sides are the same length)
        •	isIsosceles (exactly two sides are the same length)
        •	isEquilateral (all three sides are the same length)*/

import java.util.Scanner;
class TriangleType {
    private int sideA, sideB, sideC, angle;
    public TriangleType(int sideA, int sideB, int sideC, int angle) {
        this.sideA = sideA;
        this.sideB = sideB;
        this.sideC = sideC;
        this.angle = angle;
    }
    public boolean isRight() {
        return angle == 90;
    }
    public boolean isScalene() {
        return sideA != sideB && sideB != sideC && sideC != sideA;
    }
    public boolean isIsosceles() {
        return sideA == sideB || sideB == sideC || sideC == sideA;
    }
    public boolean isEquilateral() {
        return sideA == sideB && sideB == sideC;
    }
}

class TType {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter side A: ");
        int sideA = scanner.nextInt();
        System.out.print("Enter side B: ");
        int sideB = scanner.nextInt();
        System.out.print("Enter side C: ");
        int sideC = scanner.nextInt();
        System.out.print("Enter the Angle: ");
        int angle = scanner.nextInt();
        TriangleType triangle = new TriangleType(sideA, sideB, sideC, angle);
        System.out.println("Is Right Triangle: " + triangle.isRight());
        System.out.println("Is Scalene Triangle: " + triangle.isScalene());
        System.out.println("Is Isosceles Triangle: " + triangle.isIsosceles());
        System.out.println("Is Equilateral Triangle: " + triangle.isEquilateral());
    }
}

//Assignment-4 Q-1
/*Write a java program to read a character until a * is encountered. 
Also count the number of uppercase, lowercase, and numbers entered by the users.
Sample Input:
Enter * to exit…
Enter any character: W
Enter any character: d
Enter any character: A
Enter any character: G
Enter any character: g
Enter any character: H
Enter any character: *
Sample Output:
Total count of lower case:2
Total count of upper case:4
Total count of numbers =0
Test cases:
1.	1,7,6,9,5
2.	S, Q, l, K,7, j, M
3.	M, j, L, &, @, G
4.	D, K, I, 6, L, *
5.	*, K, A, e, 1, 8, %, *
*/

import java.util.*;
class Star{
    char ch;
    int i, cl=0, cu=0, cn=0;
    void get(){
        do{
            System.out.print("Enter any character: ");
            Scanner s=new Scanner(System.in);
            ch=s.next().charAt(0);
            if(ch=='*'){
                System.out.print("'*'-Encountered Exiting Program!!\n");
                break;
            }
            else if(Character.isLowerCase(ch)){
                cl++;
            }
            else if(Character.isUpperCase(ch)){
                cu++;
            }
            else if(Character.isDigit(ch)){
                cn++;
            }
            else{
                System.out.print("Enter a valid Character!!\n");
            }
        }while(true);
    }
    void display(){
        System.out.println("Total count of lower case: "+cl);
        System.out.println("Total count of upper case: "+cu);
        System.out.println("Total count of numbers: "+cn);
    }
}
class Star1{
    public static void main(String[] args){
        Star obj=new Star();
        obj.get();
        obj.display();
    }
}

//Assignment-4 Q-1
/*Write a java program to read a character until a * is encountered. 
Also count the number of uppercase, lowercase, and numbers entered by the users.
Sample Input:
Enter * to exit…
Enter any character: W
Enter any character: d
Enter any character: A
Enter any character: G
Enter any character: g
Enter any character: H
Enter any character: *
Sample Output:
Total count of lower case:2
Total count of upper case:4
Total count of numbers =0
Test cases:
1.	1,7,6,9,5
2.	S, Q, l, K,7, j, M
3.	M, j, L, &, @, G
4.	D, K, I, 6, L, *
5.	*, K, A, e, 1, 8, %, *
*/

import java.util.*;
class Star{
    char ch;
    int i, cl=0, cu=0, cn=0;
    void get(){
        do{
            System.out.print("Enter any character: ");
            Scanner s=new Scanner(System.in);
            ch=s.next().charAt(0);
            if(ch=='*'){
                System.out.print("'*'-Encountered Exiting Program!!\n");
                break;
            }
            else if(Character.isLowerCase(ch)){
                cl++;
            }
            else if(Character.isUpperCase(ch)){
                cu++;
            }
            else if(Character.isDigit(ch)){
                cn++;
            }
            else{
                System.out.print("Enter a valid Character!!\n");
            }
        }while(true);
    }
    void display(){
        System.out.println("Total count of lower case: "+cl);
        System.out.println("Total count of upper case: "+cu);
        System.out.println("Total count of numbers: "+cn);
    }
}
class Star1{
    public static void main(String[] args){
        Star obj=new Star();
        obj.get();
        obj.display();
    }
}

//Username validation using OOPS

import java.util.*;
class Username{
    protected String U1, U2;
    Username(){
        Scanner s=new Scanner(System.in);
        System.out.println("Enter String A:");
        U1=s.nextLine();
        System.out.println("Enter String 2:");
        U2=s.nextLine();
    }
    void Comparision(){
        if(U1.equals(U2)){
            System.out.println("Username is Valid\n");
        }
        else{
            System.out.println("Username is Invalid\n");
        }
    }
    public static void main(String[] args){
        Username obj=new Username();
        obj.Comparision();
    }
}

//Voting Eligibility
//Assignment 1 Q-3

import java.util.*;
class Voting{
    public static void main(String[] args)
    {
        Scanner s=new Scanner(System.in);
        int age,elg;
        System.out.print("Enter your AGE:");
        age=s.nextInt();
        elg=18-age;
        if(age>=18)
        {
            System.out.println("You are Eligible for Voting\n");
        }
        else if(age<18)
        {
            System.out.printf("You are Not Eligible for Voting\nYou'll be eligilble after %d Years\n",elg);
        }
        else if(age<=0)
        {
            System.out.println("Enter a Valid AGE\n");
        }
    }
}
