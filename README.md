# T20 Cricket Game on Nexys A7 


## Project Details
**University   :** Shiv Nadar University, Delhi-NCR, India
**Course       :** Digital System Design With FPGAs (EED 359)
**Supervisor   :** Dr. Amitabh Chatterjee, Associate Professor, School of Engineering, Shiv Nadar University, Delhi-NCR, India
**Project Title:** T20 Cricket Game on Nexys A7


## Team Members
**Member 1:** 
	Gonela Sreeman 
	B.Tech. in Electronics and Communication 
	Batch of 2024
	2010110264
**Member 2:**
	Madhuri Chitturi
	B.Tech. in Electronics and Communication 
	Batch of 2024
	2010110376
**Member 3:**
	Akshaya Kanivannan
	B.Tech. in Electronics and Communication 
	Batch of 2024
	2010110785

          
## Introduction
* This project aims to implement a realistic cricket game on a Nexys A7 FPGA board using Verilog. 
* The game consists of two innings. Teams take turns batting, attempting to score as many runs as possible before completing 20 deliveries or losing 5 wickets. 
* It incorporates various modules to simulate a cricket match, including a pseudo-random number generator (LFSR), button debouncing, seven-segment LED display for score tracking, scrolling LEDs, and tri-state LEDs.

## Components
### Seven-Segment Display: 
Let us consider Bits 7-0 on the seven-segment display.  
- B7 will always show ‘t’ denoting TEAM.  
- B6 will show either 1 or 2 to denote which team is batting. 
- B5-B4 will show the number of valid deliveries (ball count). 
- B3-B1 will display a team's current number of runs in decimal and can range from 0 runs to 255 runs. 
- B0 is used to display the number of wickets against the same team that has their runs displayed. 

### Push Buttons: 
- Up button simulates a delivery, updating displays based on the outcome. 
- Middle button pressed in combination with up button acts as a game reset.
- Down button pressed in combination with up button switches between batting teams, displaying the alternate team's score. 

### Tri-Color (RGB) LEDs: 
- One LED glows blue when an inning is over, indicating the end of the game for Team 1. 
- After game is over and winner has been decided, the other LED glows in a celebratory rainbow transition. 

### LEDs:
The sixteen LEDs scroll in a celebratory fashion after game is over. 


## Comments
* The top module of the code is cricket_game.v
* Enabling tb.v file will allow the running of simulation (This file is not required for working on board)
* The constraints file cons.xdc is specifically written for Nexys A7 board based on Artix-7™ FPGA from Xilinx®

 
## Recommendations and Future Work
- Further testing and optimization for real-time performance.
- Enhancements to the user interface for a more immersive gaming experience.
- Future iterations will include sound output and VGA integration for enhanced audio-visual feedback.
- Integration of additional features, such as player statistics and graphical elements.

 
## Acknowledgments
> We extend our heartfelt gratitude to Dr. Amitabh Chatterjee, the course professor, and Dr. Atul Singh, our dedicated lab TA, for their invaluable guidance and support throughout the project. 
> Their expertise and encouragement significantly contributed to the successful completion of this project. 
 

## References
1. https://digilent.com/reference/programmable-logic/nexys-a7/reference-manual
2. https://github.com/Yogesh0211/Design-of-a-Cricket-Game-Using-FPGAs
3. https://www.udemy.com/course/fpga-projects-using-verilog
4. https://digital.wpi.edu/concern/student_works/73666694f?locale=en
5. https://gist.github.com/flarn2006/66a98158f24f3d309eccaf666c123a2f
