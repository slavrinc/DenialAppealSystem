# DenialAppealSystem
 
Trying to make this a bit less complicated..

Because the classes we create will require the jar files for each class, I've created a makefile for the project.
In order to run the makefile on a windows system, you will need to do the following:

1. Install the chocolatey package manager for Windows (this will allow you to use Linux commands in your Windows Terminal)
2. Run choco install make

I promise, this is the absolutely last thing you will have to download, and you may even use it long term since you're a fan of the terminal.

To run the program:
1. In the command prompt, go into the directory with the Makefile. It should just be .../DenialAppealSystem/
2. type 'make' to make the file
3. Run the program using the command java -cp "postgresql-42.2.18.jar;." src/DenialAppealSystem.java

If this doesn't work for you or throws errors like we were getting before, we may need to run the program using multiple jar files. But we'll cross that path when we get to it. :)
