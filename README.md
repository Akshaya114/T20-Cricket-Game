# T20 Cricket Game on Nexys A7 

**Project Details** 
University   : Shiv Nadar University, Delhi-NCR, India
Course       : Digital System Design With FPGAs (EED 359)
Supervisor   : Dr. Amitabh Chatterjee
               Associate Professor
               School of Engineering
               Shiv Nadar University, Delhi-NCR, India
Project Title: T20 Cricket Game on Nexys A7

**Team Members**
Member 1: Gonela Sreeman 
          B.Tech. in Electronics and Communication 
          Batch of 2024
          2010110264
Member 2: Madhuri Chitturi
          B.Tech. in Electronics and Communication 
          Batch of 2024
          **2010110376**
Member 3: Akshaya Kanivannan
          B.Tech. in Electronics and Communication 
          Batch of 2024
          2010110785
          
Introduction:
This project aims to implement a realistic cricket game on a Nexys A7 FPGA board using Verilog. It incorporates various modules to simulate a cricket match, including a pseudo-random number generator (LFSR), button debouncing, seven-segment LED display for score tracking, and other elements to create a lifelike cricket scoreboard. 

Structure of the Game: 
The game consists of two innings. Teams take turns batting, attempting to score as many runs as possible before completing 20 deliveries or losing 5 wickets. The modules include LFSR, debouncing, D flip-flop, comparator, scrolling LEDs, tri-state LEDs, 7-segment display, and a slow clock. 


Modules: 

LFSR Module: 

Utilizes a 6-bit linear feedback shift register for pseudo-random number generation. 

Enhances the period to 31 using XOR sum and a seed of 6'b111111 (15 in decimal). 

Generates random numbers for scoring and wickets. 


Debouncing Module: 

Addresses button bouncing issues by using D flip-flops with a slower clock. 

Ensures a stable state for button signals over multiple clock periods. 


Seven Segment Display: 

Utilizes the seven-segment display to show various game metrics. 

Converts binary scores, wickets, and ball counts to BCD for display. 


Tri-State LEDs: 

Each tri-color LED has three input signals driving internal LEDs (red, blue, green). 

Produces composite colors, creating a rainbow effect for celebratory displays. 


Slow Clock Module: 

Slows down the system clock (100 MHz) for stable transitions in the seven-segment display. 

Achieved using an up-counter to generate a clock pulse at a specified frequency. 

 


Implementation: 


Seven-Segment Display: 

Let us consider Bits 7-0 on the seven-segment display.  

B7 will always show ‘t’ denoting TEAM.  

B6 will show either 1 or 2 to denote which team is batting. 

B5-B4 will show the number of valid deliveries (ball count). 

B3-B1 will display a team's current number of runs in decimal and can range from 0 runs to 255 runs. 

B0 is used to display the number of wickets against the same team that has their runs displayed. 


Buttons: 
Up button simulates a delivery, updating displays based on the outcome. 

Middle button acts as a game reset. 

Down button switches between batting teams, displaying the alternate team's score. 


Tri-State LEDs: 
Glow blue when an inning is over, indicating the end of the game for Team 1. 


Game End: 
Automatically compares scores after both teams have played. 

Displays the winner's score, and LEDs scroll in a celebratory rainbow transition. 



Conclusion and Results: 
The project successfully implements a cricket game on the Nexys a7 FPGA board. Key features include a realistic scoring system, button inputs for user interaction, and celebratory displays. The use of modules such as LFSR, debouncing, and slow clock contributes to the overall functionality and realism of the game. 

 

Recommendations and Future Work: 
Further testing and optimization for real-time performance.

Integration of additional features, such as player statistics and graphical elements. 

Enhancements to the user interface for a more immersive gaming experience. 

Future iterations will include sound output and VGA integration for enhanced audio-visual feedback. 

 
 
Acknowledgments: 
We extend our heartfelt gratitude to Dr. Amitabh Chatterjee, out professor and Dr. Atul Singh, our dedicated lab TA, for their invaluable guidance and support throughout the project. Their expertise and encouragement significantly contributed to the successful completion of this project. 

 

References: 
Nexys a7 FPGA Board Documentation 
Verilog Hardware Description Language Guide 
