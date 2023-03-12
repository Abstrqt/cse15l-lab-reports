ssh -T cs15lwi23afw@ieng6.ucsd.edu << EOM

rm -rf lab7

git clone git@github.com:Abstrqt/lab7.git 

cd lab7/;javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

sed -i '43s/index1 += 1;/index2 += 1;/'  ListExamples.java 

cd lab7/;javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java;
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests

git add ListExamples.java;git commit -m "edit file";git push 

EOM