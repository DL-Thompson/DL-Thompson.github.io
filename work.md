---
layout: default
title: Work Experience
subtitle: This section includes an outline of my work experience and details of the various things I worked on.
use-site-title: true
urap_id: UDA3eX4LRe8
---

***

### Graduate Research Assistant (Jun 2014 - Aug 2017)

 - University of Southern Mississippi - Hattiesburg, MS

 After I graduated with my Bachelor Degree, I was hired by the professor in charge of the previous apprenticeship program as a research assistant. I was hired using his personal grant funding. I held this position for the summer before I started graduate school and the entire time I was in graduate school.

 This job was focused on research in robotics, reinforcement learning, and machine learning. Many of our projects were robotics related. The majority of those projects involved incorporating different kinds of machine learning algorithms.  There were far too many projects worked on during this time to discuss in depth in this section. I will begin listing some under the [projects]({{ site.baseurl }}/projects) section of this website.

 The following is a brief list of some select duties and activities performed on this job:

 - I coordinated the creation of a new undergraduate robotics class. I prepared a course outline, slides, example code, assignments, and demonstrations. I also instructed the majority of the first run of the course using the prepared materials.

 - I read many research papers and had in depth discussions regarding them with my advisor. This was usually done weekly during the summer and several times through the other two semesters.

 - I worked on many projects involving the Robotics Operating System (ROS) and Gazebo. This included building robot models and worlds in Gazebo. I made use of both C++ and Python for the ROS interfaces.

 - Many of the projects I worked on made use of neural networks. We often worked on incorporating Deep Q-Learning in many of our projects.

 - Many of the projects made use of Finite State Machines.

 - Some of the ROS robotic projects required the use of cameras. OpenCV was used, and I am familiar with several computer vision algorithms.

 - I often used robots and their sensors in order to collect data. The data was then cleaned and transformed into data sets to be used in machine learning algorithms.

 - I developed technical writing skills working on research papers with my advisor to be submitted to publications. I did literature review sections, typed up algorithm pseudocode, created graphs, and coordinated with my advisor to put the paper together using LaTeX.

 ***

### Undergraduate Research Assistant (May 2013 - Aug 2013)

 - University of Southern Mississippi - Hattiesburg, MS

This was a summer apprenticeship under the U.S. Army Research Office [Undergraduate Research Apprenticeship Program (URAP)](http://www.usaeop.com/programs/apprenticeships/urap/).

This apprenticeship consisted of a single professor, a graduate student, and a group of three undergraduate students. A brief summary of the program follows. The project was initially advertised as the following:

{: .box-note}
The objective of this research is to develop a decision theoretic framework for multi-robotic systems, to serve as a tool for analysis of prevalent swarm intelligence techniques. The students will gain basic knowledge about game and decision theories, reinforcement learning, distributed AI and multi-robotics, and hands-on experience with robot swarms -- both in simulation (Webots) and with real robots.

Over the first few weeks of the program, we learned basic artificial intelligence techniques that would be used. We focused mostly on the Markov Decision Process and Q-Learning. While initially planning to use [Webots](https://en.wikipedia.org/wiki/Webots), that program was abandoned in favor of a [Kilobot](https://en.wikipedia.org/wiki/Kilobot) simulator called [KBSim](https://github.com/ajhalme/kbsim). We made several modifications to the code of this simulator to better suit our needs. 

Next, we got familiar with the simulator by implementing some simple algorithms. Some of the algorithms used were a foraging algorithm where the kilobots cooperated to search for food. We implented a simple obstacle avoidance algorithm. We also implented the Boids algorithm which simulates animal flocking behavior.

We spent the next several weeks reviewing many published papers that related to the research we were working on.

After this research was complete, we began work on one of the problems we were assigned which was using some of the previously studied techniques to cause the robots to spread out covering a maximum area. After implementing and testing these methods in our python simulator to verify that they worked, we needed to do more testing. Since the python simulator was slow, we created a non visual simulator in C++ which let us run the algorithms and get results more quickly. This C++ code would output files that could then be loaded back into the python simulator to visually see what the robots were doing. The files that were loaded were called policies, and they made use of a [Periodic Finite State Controller](https://papers.nips.cc/paper/4297-periodic-finite-state-controllers-for-efficient-pomdp-and-dec-pomdp-planning.pdf) in order to control the robots.

We successfully achieved getting the robots to disperse using the methods we learned during the program. As part of the URAP program, we were required to make a presentation that covered everything we worked on during the apprenticeship. The video of that presentation can be seen below. 

{% include youtube-player.html id=page.urap_id %}
