---
layout: post
title: Undergraduate Honors Thesis
categories: Various
---
 
At the University of Southern Mississippi, in order to graduate with a latin designation on your degree, there are certain [requirements to be met](https://www.usm.edu/english/latin-honors-designation-graduation). In order to get my designation, I had to complete a senior project, which is this thesis, and pass a comprehensive Computer Science exam. I completed both and graduated with a _summa cum laude_ designation.

My thesis was titled "Alignment of Robot Orientations Using Limited Sensing Capabilities". In short, the thesis dealt with getting two robots with limited sensor technology to line up in front of each other. The idea being that many multi-robotic applications require the robots to start facing each other. 

The two robots used in the project were the [Scribbler S2](https://www.parallax.com/product/28136) robots. These robots came with limited sensors. They contained a speaker, a microphone, light sensors, infrared emitters, and infrared detectors. This project did not make use of the light sensors. The infrared sensors worked by emitting infrared forward from the emitters, the infrared would then bounce off any objects in front of them, and the infrared detectors would detect the signal strength bounced back giving the robot obstacle detectiong. 

{:refdef: style="text-align: center;"}
![Scribber S2 Robots]({{"/images/scribblers.png"}})
{: refdef}

Working with two robots, each robot could pick up the others sensor if it was in front of it. The problem was, the sensors worked in a wide arc and the signals could reflect off of objects, so the robots couldn't just assume it was facing the other robot when a signal was detected.

In order to solve the problem, I approached it with a brute force method. The robots simply took turns rotating in circles and measuring the signal strength. Each circle was broken into slices of a certain number of degrees. The robots performed the following series of steps:

- Robot 1 would take a signal reading.
- Robot 1 would signal Robot 2 it was complete.
- Robot 2 would turn to the next slice.
- Robot 2 would signal Robot 1 it had completed the turn.
- These steps would be repeated until Robot 2 had made a complete circle.
- Robot 1 would turn to its next slice.
- All the previous steps would be repeated.
- Once completed, Robot 1 had a table of maximum signal strengths.
- Robot 1 turned to its maximum position.
- Robot 1 signaled Robot 2 which position it should turn to.
- Robot 2 received the signal and turned to that position.
- The robots were then aligned.

To accomplish this method, there was one major problem. The robots had no built in communication sensors or algorithms. The only sensors to be used were the speaker and microphone which were not very well made. So, while the rotations and measurements were fairly straight forward, the communication presented somewhat of a challenge.

In order to solve the problem, I decided to create a messaging system that made use of three tones from the speaker. I used a low tone, medium tone, and high tone. These frequencies were easily discernable from one another. Many messages were needed including a message for each slice and several different confirmation messages. In order to create several messages, the tones were strung together. The robot listening would listen to the whole sound wave, and then process to get the sequence of tones. The main problem with this was the cheap speaker and microphone. The sound waves were not always clear, so a smoothing procedure had to be applied to each wave. A demonstration can be seen in the graphs below.

{:refdef: style="text-align: center;"}
![Rough]({{"/images/message_graph_rough.png"}})
![Smooth]({{"/images/message_graph_smooth.png"}})
{: refdef}

In the graphs above, we have a red line representing the frequencies of the signal received and a blue line which represents the cutoff for the low, medium, and high tones. Anything above the top blue line is considered high, anything below the bottom blue linw is considered low, and anything in between is considered medium. In the first graph, you can see several dips highlighted in yellow that are noise that trigger false tones. In bottom graph, you can see what it looks like after the smoothing process was applied.

After getting this part working, the initial brute force algorithm was fairly easy to implement. For a more detailed explanation of how all of this was accomplished, the full thesis is provided below.

<object data="/papers/Undergraduate_Thesis.pdf" type="application/pdf" width="100%" height="750">
  Your web browser doesn't have a PDF plugin. Instead you can <a href="/papers/Undergraduate_Thesis.pdf">click here to download the PDF file.</a>
</object>


