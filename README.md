# VisageVault

## Purpose:
VisageVault is a facial authentication and object identification system designed for secure and intelligent image analysis. 
Built with computer vision and machine learning at its core, this project enables facial recognition, object detection, 
and real-time decision-making across image and video data streams.
0
Primarily coded in C++ to utilize low-level bit streaming and also to make it more challenging for myself to learn C++.
Leaving the option to code in Python or similiar languages up in the air due to ease of library usage and more powerful
language for AI and ML.

## How to generate a build
1. Run this command from root directory:
    - cmake -S . -B build 

    This says run cmake at your 'pwd' cmd where -S is where the src/main.cpp is and -B is where the dir build is to output
    your cmake files into.

    **important** CMakeLists.txt has to go in your root folder

2. Specifying C++ Standard:
   - Add set(CMAKE_CXX_STANDARD 17)
   - Add set(CMAKE_CXX_STANDARD_REQUIRED True)
   This is the version of C++ I will be using in my project and will make the using of c++ 17 required

3. Enable testing
   - Add enable_testing()
   - Add add_subdirectory(tests)
   This will enable to ability to create testing files and a subdir called tests. You will need to add
   another CMakeLists.txt file inside of the tests directory with commands directly referencing what 
   will be running the tests and how they will be run. I am using CTest to run tests and will be creating
   the tests as I develop.

4. These are the final commands in order to run cmake and run ctest
   - mkdir build
   - cmake -S . -B build
   - ctest --test-dir build -C Debug

## Features
Current:
- Readme
- basic setup; cmake and ctest

In-progress:
- Setup of Yolo8 and OpenCV
- Setup of object identification
- Learn how AI/ML is used with Yolo8 and object identification

Future:
- Create a database for storing facial auth features as hashes(SHA256, AES,...)
- Be able to access the vector database and pull records about personal identification based on facial recognition(i.e. some search system)