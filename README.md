# Java from rpg

A small project to demonstrate how to use Java objects and methods from RPG code.

This project has two objectives:

- Inform on the technique you need to use to call upon Java in your RPG code.
- Provide a small library of `dcl-pr` to easily gain access to useful java objects such as ArrayLists and Maps by way of a simple `/include`

As of now, the project contains 3 source files:

- `JAVARPGGSE.DSPF` Is a green screen (front end for the program)
- `JAVARPG.SQLRPGLE` is the corresponding backend, containing the actuall call to Java objects
- `UTIL04PS.SQLRPGLE` is the file to include to use the methods
