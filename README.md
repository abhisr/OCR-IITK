OCR-IITK
========
IIT KANPUR
PROGRAMMING CLUB SUMMER PROJECT 2013
IMPLEMENTATION OF AN OCR
  (Done during Summer camp at iit k  from 15th may  to 25th june 2013)

Done By
  Abhishek Srivastava abhidak @ iitk.ac.in
  Rishav Choudhary    rishavc @ iitk.ac.in

Implementation done using MATLAB

  The .mat file present in program are result of training by three layered neural network(1024 -> 200 -> 65) with
  modified version of code available in Exercise of Coursera Course Machine Learning (By Andrew NG).
  
  It can also be trained using neural network implementation available in MATLAB itself.

HOW TO USE

One is needed to download the whole code and save in a folder and it can be run using matlab in two ways.

  1. Add the folder to Matlab Path and give the command ocrnn.
                      or
  2. Change the working directory of matlab to that folder and give the command ocrnn.

TIME 
   It takes 03 - 20 seconds depending upon the resolution (and total no of pixels) of the image.


Limitations.
1. Its can't work with more skew cases (More skew than height of one letter across one line.
one may get letter mixing in such a case.
