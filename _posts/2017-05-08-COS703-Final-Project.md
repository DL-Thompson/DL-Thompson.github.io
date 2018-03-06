---
layout: post
title: COS703 - Final Project
categories: Featured
---

This is the final project for my COS703 Data Handling Techniques course. All other assignments from this course were questions from the textbook, so I'm not going to post those for other people to copy.

In this project, I will be using [OpenAI Gym](https://gym.openai.com/docs/) to test two reinforcement learning algorithms. The first algorithm to be tested is [Deep Q-Learning](https://www.cs.toronto.edu/~vmnih/docs/dqn.pdf). The second algorithm to be tested is [Deep Recurrent Q-Learning](https://arxiv.org/pdf/1507.06527.pdf) which is a derivative work of the first algorithm.

### Deep Q-Learning
Deep Q-Learning is a reinforcement learning algorithm created by [DeepMind](https://deepmind.com/research/dqn/). The algorithm uses a deep neural network to perform Q-Learning reinforcement learning. This algorithm was famously tested on Atari games. The algorithm was able to play better than humans at most Atari games using just the images from the video game screen as input. The input for the neural network was a small consecutive series of game screen images.

### Deep Recurrent Q-Learning
This is a derivative of the Deep Q-Learning algorithm. In the paper that used this algorithm, they changed the problem they were trying to solve. In the Deep Q-Learning paper, they used a sequence of game screen images to solve the problem. In this paper, they used a single game screen. [Long Short-Term Memory (LSTM) ](https://en.wikipedia.org/wiki/Long_short-term_memory) units are used in recurrent neural networks in order to "remember" the previous game screens.

### OpenAI Gym
OpenAI Gym is a tool for testing reinforcement learning algorithms. It provides several testing environments. In this project, I used the [cart pole problem](https://gym.openai.com/envs/CartPole-v0/) which is a small car that can move left or right in order to balance a pole that it is holding. For the Deep Q-learning algorithm I will be using the full problem that includes cart position, cart velocity, pole angle, and pole velocity. For the Deep Recurrent Q-Learning algorithm, I will be using only cart position and pole position. The LSTM part of the recurrent network will need to "remember" previous positions in order to infer the velocity.

### Results
I was able to successfully complete this project. Both algorithms performed successfully. The details can be found in the project paper below.

<object data="/papers/COS703-Final-Project.pdf" type="application/pdf" width="100%" height="750">
  Your web browser doesn't have a PDF plugin. Instead you can <a href="/papers/COS703-Final-Project.pdf">click here to download the PDF file.</a>
</object>