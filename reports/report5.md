# Lab Report 5 - CSE Labs Done Quick 2

## Recap of Lab Report 4
In the last [lab report](./report4.md), we created a 6-step process with 6 different commands that, when executed sequentially, allowed us to perform the lab task. I was able to combine some commands to decrease the task time down to around 30 seconds, but there was still room for improvement. In this lab report, we are going to expand upon lab report 4 by writing a bash script to execute all commands at once. I predict that we can get our time down to under 10 seconds!

## Commands Used
```console
$ ssh cs15lwi23afw@ieng6.ucsd.edu 

$ git clone git@github.com:Abstrqt/lab7.git 

$ cd lab7/;javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

$ sed -i '43s/index1 += 1;/index2 += 1;/' ListExamples.java 

$ cd lab7/;javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

$ git add ListExamples.java;git commit -m "edit file";git push 
```
These were all the commands we came up with in the last lab report, with each command executing a step in the task: logging into ieng6, cloning the repo, running the tests and failing, editing the file from the command-line (explained in the previous lab report), running the tests and passing, and pushing the new changes to the Github repository. This was very annoying to run because we needed to `^R` or arrow key up to find the command to run for each step. 

## Creating the Bash File
Let's try putting these commands in a bash file!

`run.sh`
```console
ssh -T cs15lwi23afw@ieng6.ucsd.edu << EOM

git clone git@github.com:Abstrqt/lab7.git 

cd lab7/;javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

sed -i '43s/index1 += 1;/index2 += 1;/'  ListExamples.java 

cd lab7/;javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

git add ListExamples.java;git commit -m "edit file";git push 

EOM
```
In the file `run.sh`, the first line contains the ssh command that allows us to log into ieng6. Notice that this command commands the `-T` flag. This flag allows us to supress some warnings regarding pseudo-terminal allocation, which doesn't matter in our case. There are still some warnings in the output, but they can just be ignored. The following commands that execute the 6 steps are wrapped in a EOM tag. This allows us to run the commands in ssh in a sequential order. It is worth noting that this command can be written as a one-liner like this `ssh cs15lwi23afw@ieng6.ucsd.edu "command1;command2;command3;etc`. This command gets rid of all the errors and can be run directly in terminal instead of a bash script, but I chose an alternate method that is more clear.

`Console Output`
```console
first@Kevin-X1 MINGW64 ~/OneDrive/Documents/_UCSD/CSE 15L/cse15l-lab-reports/temp (main)
$ bash run.sh 
stdin: is not a tty
Hello cs15lwi23afw, you are currently logged into ieng6-203.ucsd.edu

You are using 0% CPU on this system

Cluster Status
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
Hostname    Time    #Users  Load  Averages
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
tput: No value for $TERM and no -T specified
ieng6-201  20:40:01  25  0.16,  0.27,  0.43
ieng6-202  20:40:01  18  0.18,  0.16,  0.23
ieng6-203  20:40:01  9   0.11,  0.21,  0.24


tput: No value for $TERM and no -T specified
        *** SDSC Core Network Upgrade ***
        2023-03-07 19:00 - 2023-03-08 03:00
This work is now complete. If there were any disruptions to your
work or notice any problems that may have been caused by the network
upgrades please report them to the service desk.

https://support.ucsd.edu/its

tput: No value for $TERM and no -T specified

 
Sat Mar 11, 2023  8:44pm - Prepping cs15lwi23
Cloning into 'lab7'...
JUnit version 4.13.2
..E
Time: 0.889
There was 1 failure:
1) testMerge2(ListExamplesTests)
org.junit.runners.model.TestTimedOutException: test timed out after 500 milliseconds
        at java.util.Arrays.copyOf(Arrays.java:3210)
        at java.util.Arrays.copyOf(Arrays.java:3181)
        at java.util.ArrayList.grow(ArrayList.java:267)
        at java.util.ArrayList.ensureExplicitCapacity(ArrayList.java:241)
        at java.util.ArrayList.ensureCapacityInternal(ArrayList.java:233)
        at java.util.ArrayList.add(ArrayList.java:464)
        at ListExamples.merge(ListExamples.java:42)
        at ListExamplesTests.testMerge2(ListExamplesTests.java:19)

FAILURES!!!
Tests run: 2,  Failures: 1

-bash: line 8: cd: lab7/: No such file or directory
JUnit version 4.13.2
..
Time: 0.016

OK (2 tests)

[main 4973aa1] edit file
 Committer: Kevin Shen <cs15lwi23afw@ieng6-203.ucsd.edu>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 1 file changed, 1 insertion(+), 1 deletion(-)
To github.com:Abstrqt/lab7.git
   f750e52..4973aa1  main -> main
```
As you can see, the bash script logs into ieng6 and executes all the steps correctly.

## Conclusion
The one-liner was the method I used during my lab section and I was able to get my time down to 6 seconds. I don't think I could improve anymore on my time as the majority of the time is spent waiting to log into ieng6 and cloning the repo.