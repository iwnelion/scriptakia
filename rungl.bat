@echo off
cd %USERPROFILE%\desktop\"openGL projects"
g++ file.c++ -o file -mwindows glut32.lib -lopengl32 -lglu32
file
