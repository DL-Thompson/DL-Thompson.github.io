---
layout: post
title: CSC411 - Android Coupon Assistant
categories: Various
---

This project was for my CSC411 Database Management class. This was a group project worked on by three people. We were given free reign over the project choice as long as it used SQL databases. For this project, we decided to create a coupon scanning database. 

The idea of the project was that customers could scan a product in the store using a bar code reader from the camera on their phone, and the phone would then query our database to find relevant coupons that the customer could then scan at the register from their phone. The project consisted of two main parts which was the front end android development and the backend PHP and database development. I worked on the PHP and database development.

For the PHP side, I created a backend service that could be connected to via the internet. Using this service, coupons could be added or searched. The Android application would scan the item bar code and query the PHP backend with the data. The backend would then return any coupons that matched which were then displayed on the phone.

The code for this project can be found on my [Github page.](https://github.com/DL-Thompson/AndroidCouponAssistant)