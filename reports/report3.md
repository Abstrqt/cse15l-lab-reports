# Lab Report 3 - Researching Commands

## Part 1: `-maxdepth`[^1] option for `find`
The first command-line option for the `find` command that we're going to look at is `-maxdepth`. The `-maxdepth` option specifies the max directory level to search until. The default value for `-maxdepth` is unbounded, meaning that `find` will find and list every possible file in the specified directory and its subdirectories. 

Command Syntax:
```console
$ find [path...] -maxdepth [number] [expressions]
```
Example 1:
```console
$ find ./written_2/ -maxdepth 2
./written_2/
./written_2/non-fiction
./written_2/non-fiction/OUP
./written_2/travel_guides
./written_2/travel_guides/berlitz1
./written_2/travel_guides/berlitz2
```
This command searches all the directories and subdirectories within 2 directories below the given directory. In this case, it finds all the files and directories matching the patterns `./written_2/`, `./written_2/*/`, and `./written_2/*/*/`. This command is useful if you only want to find files up to a certain range. 

Example 2:
```console
$ find ./written_2/ -maxdepth 3 -name "berlitz*"
./written_2/travel_guides/berlitz1
./written_2/travel_guides/berlitz2
```
This command searches all the directories and subdirectories within 3 directories below the given directory for files with names that match the given pattern. This command demonstrates another use case where `-maxdepth` is useful for finding files up to a certain range. 

## Part 2: `-mindepth`[^2] option for `find`
The second command-line option for the `find` command that we're going to look at is `-mindepth`. This option goes hand-in-hand with the `maxdepth` option and specifies the minimum directory level to start searching at. The default value for `-mindepth` is 0, meaning that `find` will find and list every possible file in the specified directory and its subdirectories until the maxdepth. 

Command Syntax:
```console
$ find [path...] -mindepth [number] [expressions]
```
Example 1:
``` console
$ find ./written_2/ -mindepth 4
./written_2/non-fiction/OUP/Abernathy/ch1.txt
./written_2/non-fiction/OUP/Abernathy/ch14.txt
./written_2/non-fiction/OUP/Abernathy/ch15.txt
./written_2/non-fiction/OUP/Abernathy/ch2.txt
./written_2/non-fiction/OUP/Abernathy/ch3.txt
./written_2/non-fiction/OUP/Abernathy/ch6.txt
./written_2/non-fiction/OUP/Abernathy/ch7.txt
./written_2/non-fiction/OUP/Abernathy/ch8.txt
./written_2/non-fiction/OUP/Abernathy/ch9.txt
./written_2/non-fiction/OUP/Berk/ch1.txt
./written_2/non-fiction/OUP/Berk/ch2.txt
./written_2/non-fiction/OUP/Berk/CH4.txt
./written_2/non-fiction/OUP/Berk/ch7.txt
./written_2/non-fiction/OUP/Castro/chA.txt
./written_2/non-fiction/OUP/Castro/chB.txt
./written_2/non-fiction/OUP/Castro/chC.txt
./written_2/non-fiction/OUP/Castro/chL.txt
./written_2/non-fiction/OUP/Castro/chM.txt
./written_2/non-fiction/OUP/Castro/chN.txt
./written_2/non-fiction/OUP/Castro/chO.txt
./written_2/non-fiction/OUP/Castro/chP.txt
./written_2/non-fiction/OUP/Castro/chQ.txt
./written_2/non-fiction/OUP/Castro/chR.txt
./written_2/non-fiction/OUP/Castro/chV.txt
./written_2/non-fiction/OUP/Castro/chW.txt
./written_2/non-fiction/OUP/Castro/chY.txt
./written_2/non-fiction/OUP/Castro/chZ.txt
./written_2/non-fiction/OUP/Fletcher/ch1.txt
./written_2/non-fiction/OUP/Fletcher/ch10.txt
./written_2/non-fiction/OUP/Fletcher/ch2.txt
./written_2/non-fiction/OUP/Fletcher/ch5.txt
./written_2/non-fiction/OUP/Fletcher/ch6.txt
./written_2/non-fiction/OUP/Fletcher/ch9.txt
./written_2/non-fiction/OUP/Kauffman/ch1.txt
./written_2/non-fiction/OUP/Kauffman/ch10.txt
./written_2/non-fiction/OUP/Kauffman/ch3.txt
./written_2/non-fiction/OUP/Kauffman/ch4.txt
./written_2/non-fiction/OUP/Kauffman/ch5.txt
./written_2/non-fiction/OUP/Kauffman/ch6.txt
./written_2/non-fiction/OUP/Kauffman/ch7.txt
./written_2/non-fiction/OUP/Kauffman/ch8.txt
./written_2/non-fiction/OUP/Kauffman/ch9.txt
./written_2/non-fiction/OUP/Rybczynski/ch1.txt
./written_2/non-fiction/OUP/Rybczynski/ch2.txt
./written_2/non-fiction/OUP/Rybczynski/ch3.txt
```
This command searches all the directories and subdirectories starting from 4 directories below the given directory. In this case, it finds all the files and directories matching the pattern `./written_2/*/*/*/*`. This command is useful if you only want to find files starting from a certain range. 

Example 2:
```console
$ find ./written_2/ -mindepth 1 -maxdepth 3 -name "Athens*"
./written_2/travel_guides/berlitz2/Athens-History.txt
./written_2/travel_guides/berlitz2/Athens-Intro.txt
./written_2/travel_guides/berlitz2/Athens-WhatToDo.txt
./written_2/travel_guides/berlitz2/Athens-WhereToGo.txt
```
This command searches all the directories and subdirectories starting from 1 directory to 3 directories below the given directory for files with names that match the given pattern. This command demonstrates another use case of `-mindepth` where it is combined with `-maxdepth` and `-name` to find specific files within a certain range.  

## Part 3: `-type`[^3] option for `find`
The third command-line option for the `find` command that we're going to look at is `-type`. The `-type` option specifies the type of file to look for (regular file, directory, etc.). 

Command Syntax:
```console
$ find [path...] -type [type] [expressions]
```
Example 1:
```console
$ find ./written_2/ -type d
./written_2/
./written_2/non-fiction
./written_2/non-fiction/OUP
./written_2/non-fiction/OUP/Abernathy
./written_2/non-fiction/OUP/Berk
./written_2/non-fiction/OUP/Castro
./written_2/non-fiction/OUP/Fletcher
./written_2/non-fiction/OUP/Kauffman
./written_2/non-fiction/OUP/Rybczynski
./written_2/travel_guides
./written_2/travel_guides/berlitz1
./written_2/travel_guides/berlitz2
```
This command searches all the directories and subdirectories in the given directory for all files that are of type directory. This command is useful if you only want to find certain types of files. 

Example 2:
```console
$ find ./written_2/ -maxdepth 3 -type f
./written_2/travel_guides/berlitz1/HandRHawaii.txt
./written_2/travel_guides/berlitz1/HandRHongKong.txt
./written_2/travel_guides/berlitz1/HandRIbiza.txt
./written_2/travel_guides/berlitz1/HandRIsrael.txt
./written_2/travel_guides/berlitz1/HandRIstanbul.txt
./written_2/travel_guides/berlitz1/HandRJamaica.txt
./written_2/travel_guides/berlitz1/HandRJerusalem.txt
./written_2/travel_guides/berlitz1/HandRLakeDistrict.txt
./written_2/travel_guides/berlitz1/HandRLasVegas.txt
./written_2/travel_guides/berlitz1/HandRLisbon.txt
./written_2/travel_guides/berlitz1/HandRLosAngeles.txt
./written_2/travel_guides/berlitz1/HandRMadeira.txt
./written_2/travel_guides/berlitz1/HandRMadrid.txt
./written_2/travel_guides/berlitz1/HandRMallorca.txt
./written_2/travel_guides/berlitz1/HistoryDublin.txt
./written_2/travel_guides/berlitz1/HistoryEdinburgh.txt
./written_2/travel_guides/berlitz1/HistoryEgypt.txt
./written_2/travel_guides/berlitz1/HistoryFrance.txt
./written_2/travel_guides/berlitz1/HistoryFWI.txt
./written_2/travel_guides/berlitz1/HistoryGreek.txt
./written_2/travel_guides/berlitz1/HistoryHawaii.txt
./written_2/travel_guides/berlitz1/HistoryHongKong.txt
./written_2/travel_guides/berlitz1/HistoryIbiza.txt
./written_2/travel_guides/berlitz1/HistoryIndia.txt
./written_2/travel_guides/berlitz1/HistoryIsrael.txt
./written_2/travel_guides/berlitz1/HistoryIstanbul.txt
./written_2/travel_guides/berlitz1/HistoryItaly.txt
./written_2/travel_guides/berlitz1/HistoryJamaica.txt
./written_2/travel_guides/berlitz1/HistoryJapan.txt
./written_2/travel_guides/berlitz1/HistoryJerusalem.txt
./written_2/travel_guides/berlitz1/HistoryLakeDistrict.txt
./written_2/travel_guides/berlitz1/HistoryLasVegas.txt
./written_2/travel_guides/berlitz1/HistoryMadeira.txt
./written_2/travel_guides/berlitz1/HistoryMadrid.txt
./written_2/travel_guides/berlitz1/HistoryMalaysia.txt
./written_2/travel_guides/berlitz1/HistoryMallorca.txt
./written_2/travel_guides/berlitz1/IntroDublin.txt
./written_2/travel_guides/berlitz1/IntroEdinburgh.txt
./written_2/travel_guides/berlitz1/IntroEgypt.txt
./written_2/travel_guides/berlitz1/IntroFrance.txt
./written_2/travel_guides/berlitz1/IntroFWI.txt
./written_2/travel_guides/berlitz1/IntroGreek.txt
./written_2/travel_guides/berlitz1/IntroHongKong.txt
./written_2/travel_guides/berlitz1/IntroIbiza.txt
./written_2/travel_guides/berlitz1/IntroIndia.txt
./written_2/travel_guides/berlitz1/IntroIsrael.txt
./written_2/travel_guides/berlitz1/IntroIstanbul.txt
./written_2/travel_guides/berlitz1/IntroItaly.txt
./written_2/travel_guides/berlitz1/IntroJamaica.txt
./written_2/travel_guides/berlitz1/IntroJapan.txt
./written_2/travel_guides/berlitz1/IntroJerusalem.txt
./written_2/travel_guides/berlitz1/IntroLakeDistrict.txt
./written_2/travel_guides/berlitz1/IntroLasVegas.txt
./written_2/travel_guides/berlitz1/IntroLosAngeles.txt
./written_2/travel_guides/berlitz1/IntroMadeira.txt
./written_2/travel_guides/berlitz1/IntroMadrid.txt
./written_2/travel_guides/berlitz1/IntroMalaysia.txt
./written_2/travel_guides/berlitz1/IntroMallorca.txt
./written_2/travel_guides/berlitz1/JungleMalaysia.txt
./written_2/travel_guides/berlitz1/WhatToDublin.txt
./written_2/travel_guides/berlitz1/WhatToEdinburgh.txt
./written_2/travel_guides/berlitz1/WhatToEgypt.txt
./written_2/travel_guides/berlitz1/WhatToFrance.txt
./written_2/travel_guides/berlitz1/WhatToFWI.txt
./written_2/travel_guides/berlitz1/WhatToGreek.txt
./written_2/travel_guides/berlitz1/WhatToHawaii.txt
./written_2/travel_guides/berlitz1/WhatToHongKong.txt
./written_2/travel_guides/berlitz1/WhatToIbiza.txt
./written_2/travel_guides/berlitz1/WhatToIndia.txt
./written_2/travel_guides/berlitz1/WhatToIsrael.txt
./written_2/travel_guides/berlitz1/WhatToIstanbul.txt
./written_2/travel_guides/berlitz1/WhatToItaly.txt
./written_2/travel_guides/berlitz1/WhatToJamaica.txt
./written_2/travel_guides/berlitz1/WhatToJapan.txt
./written_2/travel_guides/berlitz1/WhatToLakeDistrict.txt
./written_2/travel_guides/berlitz1/WhatToLasVegas.txt
./written_2/travel_guides/berlitz1/WhatToLosAngeles.txt
./written_2/travel_guides/berlitz1/WhatToMadeira.txt
./written_2/travel_guides/berlitz1/WhatToMalaysia.txt
./written_2/travel_guides/berlitz1/WhatToMallorca.txt
./written_2/travel_guides/berlitz1/WhereToDublin.txt
./written_2/travel_guides/berlitz1/WhereToEdinburgh.txt
./written_2/travel_guides/berlitz1/WhereToEgypt.txt
./written_2/travel_guides/berlitz1/WhereToFrance.txt
./written_2/travel_guides/berlitz1/WhereToFWI.txt
./written_2/travel_guides/berlitz1/WhereToGreek.txt
./written_2/travel_guides/berlitz1/WhereToHawaii.txt
./written_2/travel_guides/berlitz1/WhereToHongKong.txt
./written_2/travel_guides/berlitz1/WhereToIbiza.txt
./written_2/travel_guides/berlitz1/WhereToIndia.txt
./written_2/travel_guides/berlitz1/WhereToIsrael.txt
./written_2/travel_guides/berlitz1/WhereToIstanbul.txt
./written_2/travel_guides/berlitz1/WhereToItaly.txt
./written_2/travel_guides/berlitz1/WhereToJapan.txt
./written_2/travel_guides/berlitz1/WhereToJerusalem.txt
./written_2/travel_guides/berlitz1/WhereToLakeDistrict.txt
./written_2/travel_guides/berlitz1/WhereToLosAngeles.txt
./written_2/travel_guides/berlitz1/WhereToMadeira.txt
./written_2/travel_guides/berlitz1/WhereToMadrid.txt
./written_2/travel_guides/berlitz1/WhereToMalaysia.txt
./written_2/travel_guides/berlitz1/WhereToMallorca.txt
./written_2/travel_guides/berlitz2/Algarve-History.txt
./written_2/travel_guides/berlitz2/Algarve-Intro.txt
./written_2/travel_guides/berlitz2/Algarve-WhatToDo.txt
./written_2/travel_guides/berlitz2/Algarve-WhereToGo.txt
./written_2/travel_guides/berlitz2/Amsterdam-History.txt
./written_2/travel_guides/berlitz2/Amsterdam-Intro.txt
./written_2/travel_guides/berlitz2/Amsterdam-WhatToDo.txt
./written_2/travel_guides/berlitz2/Amsterdam-WhereToGo.txt
./written_2/travel_guides/berlitz2/Athens-History.txt
./written_2/travel_guides/berlitz2/Athens-Intro.txt
./written_2/travel_guides/berlitz2/Athens-WhatToDo.txt
./written_2/travel_guides/berlitz2/Athens-WhereToGo.txt
./written_2/travel_guides/berlitz2/Bahamas-History.txt
./written_2/travel_guides/berlitz2/Bahamas-Intro.txt
./written_2/travel_guides/berlitz2/Bahamas-WhatToDo.txt
./written_2/travel_guides/berlitz2/Bahamas-WhereToGo.txt
./written_2/travel_guides/berlitz2/Bali-History.txt
./written_2/travel_guides/berlitz2/Bali-WhatToDo.txt
./written_2/travel_guides/berlitz2/Bali-WhereToGo.txt
./written_2/travel_guides/berlitz2/Barcelona-History.txt
./written_2/travel_guides/berlitz2/Barcelona-WhatToDo.txt
./written_2/travel_guides/berlitz2/Barcelona-WhereToGo.txt
./written_2/travel_guides/berlitz2/Beijing-History.txt
./written_2/travel_guides/berlitz2/Beijing-WhatToDo.txt
./written_2/travel_guides/berlitz2/Beijing-WhereToGo.txt
./written_2/travel_guides/berlitz2/Berlin-History.txt
./written_2/travel_guides/berlitz2/Berlin-WhatToDo.txt
./written_2/travel_guides/berlitz2/Berlin-WhereToGo.txt
./written_2/travel_guides/berlitz2/Bermuda-history.txt
./written_2/travel_guides/berlitz2/Bermuda-WhatToDo.txt
./written_2/travel_guides/berlitz2/Bermuda-WhereToGo.txt
./written_2/travel_guides/berlitz2/Boston-WhereToGo.txt
./written_2/travel_guides/berlitz2/Budapest-History.txt
./written_2/travel_guides/berlitz2/Budapest-WhatToDo.txt
./written_2/travel_guides/berlitz2/Budapest-WhereoGo.txt
./written_2/travel_guides/berlitz2/California-History.txt
./written_2/travel_guides/berlitz2/California-WhatToDo.txt
./written_2/travel_guides/berlitz2/California-WhereToGo.txt
./written_2/travel_guides/berlitz2/Canada-History.txt
./written_2/travel_guides/berlitz2/Canada-WhereToGo.txt
./written_2/travel_guides/berlitz2/CanaryIslands-History.txt
./written_2/travel_guides/berlitz2/CanaryIslands-WhatToDo.txt
./written_2/travel_guides/berlitz2/CanaryIslands-WhereToGo.txt
./written_2/travel_guides/berlitz2/Cancun-History.txt
./written_2/travel_guides/berlitz2/Cancun-WhatToDo.txt
./written_2/travel_guides/berlitz2/Cancun-WhereToGo.txt
./written_2/travel_guides/berlitz2/China-History.txt
./written_2/travel_guides/berlitz2/China-WhatToDo.txt
./written_2/travel_guides/berlitz2/China-WhereToGo.txt
./written_2/travel_guides/berlitz2/Costa-History.txt
./written_2/travel_guides/berlitz2/Costa-WhatToDo.txt
./written_2/travel_guides/berlitz2/Costa-WhereToGo.txt
./written_2/travel_guides/berlitz2/CostaBlanca-History.txt
./written_2/travel_guides/berlitz2/CostaBlanca-WhatToDo.txt
./written_2/travel_guides/berlitz2/Crete-History.txt
./written_2/travel_guides/berlitz2/Crete-WhatToDo.txt
./written_2/travel_guides/berlitz2/Crete-WhereToGo.txt
./written_2/travel_guides/berlitz2/CstaBlanca-WhereToGo.txt
./written_2/travel_guides/berlitz2/Cuba-History.txt
./written_2/travel_guides/berlitz2/Cuba-WhatToDo.txt
./written_2/travel_guides/berlitz2/Cuba-WhereToGo.txt
./written_2/travel_guides/berlitz2/Nepal-History.txt
./written_2/travel_guides/berlitz2/Nepal-WhatToDo.txt
./written_2/travel_guides/berlitz2/Nepal-WhereToGo.txt
./written_2/travel_guides/berlitz2/NewOrleans-History.txt
./written_2/travel_guides/berlitz2/Paris-WhatToDo.txt
./written_2/travel_guides/berlitz2/Paris-WhereToGo.txt
./written_2/travel_guides/berlitz2/Poland-History.txt
./written_2/travel_guides/berlitz2/Poland-WhatToDo.txt
./written_2/travel_guides/berlitz2/Portugal-History.txt
./written_2/travel_guides/berlitz2/Portugal-WhatToDo.txt
./written_2/travel_guides/berlitz2/Portugal-WhereToGo.txt
./written_2/travel_guides/berlitz2/PuertoRico-History.txt
./written_2/travel_guides/berlitz2/PuertoRico-WhatToDo.txt
./written_2/travel_guides/berlitz2/PuertoRico-WhereToGo.txt
./written_2/travel_guides/berlitz2/Vallarta-History.txt
./written_2/travel_guides/berlitz2/Vallarta-WhatToDo.txt
./written_2/travel_guides/berlitz2/Vallarta-WhereToGo.txt
```
This command searches all the directories and subdirectories within 3 directories below the given directory for files that are of type regular file. This command again demonstrates the usefulness of the `-type` option for finding certain types of files. 

## Part 4: `-printf`[^4] option for `find`
The fourth command-line option for the `find` command that we're going to look at is `-printf`. The `-printf` option specifies additional information to output based on the given pattern other than the file name of found files. There are a lot of patterns that `-printf` uses, but we're just going to look at a few. 

Command Syntax:
```console
$ find [path...] -printf [pattern] [expressions]
```
Example 1:
```console
$ find written_2/ -name "ch1.txt" -printf "%k %p\n"
48 written_2/non-fiction/OUP/Abernathy/ch1.txt
92 written_2/non-fiction/OUP/Berk/ch1.txt
48 written_2/non-fiction/OUP/Fletcher/ch1.txt
68 written_2/non-fiction/OUP/Kauffman/ch1.txt
36 written_2/non-fiction/OUP/Rybczynski/ch1.txt
```
This command searches all the directories and subdirectories with files containing "ch1.txt" and displays them in the given pattern: file size in KB followed by a space and the file name with a newline character. This command is useful if you want to display additional information of a file such as size in KB. 

Example 2:
```console
$ find written_2/ -maxdepth 2 -printf "%d\t%p\n"
0       written_2/
1       written_2/non-fiction
2       written_2/non-fiction/OUP
1       written_2/travel_guides
2       written_2/travel_guides/berlitz1
2       written_2/travel_guides/berlitz2
```
This command searches all the directories and subdirectories within 2 directories below the given directory for files and display them in the given pattern: file depth followed by a tab and the file name with a newline character. This command demonstrates another use case where `-printf` is useful for displaying additional information of a file. 

[^1]: Source for `-maxdepth` option [here](https://www.baeldung.com/linux/find-command#1-options)
[^2]: Source for `-mindepth` option [here](https://www.baeldung.com/linux/find-command#1-options)
[^3]: Source for `-type` option [here](https://www.baeldung.com/linux/find-command#2-tests)
[^4]: Source for `-printf` option [here](https://www.codedodle.com/find-printf.html)