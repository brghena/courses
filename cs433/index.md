---
layout: page
title: CS433
has_children: true
has_toc: false
nav_order: 6
---

# CS433 - Wireless Protocols for the Internet of Things


## Description

The Internet of Things promises a world of computers woven into our physical world. A common need for these devices is low-power, wireless communication. The goal of this course is to introduce students to a variety of wireless networks that target low-power, machine-to-machine communication as is common in the Internet of Things. While we introduce the physical layer and have a goal of getting data to the internet at large, the focus of this course is on the wireless protocols themselves. How are packets structured, and why? How are they designed to enable low-power communication? How do they deal with contention and reliability? What makes them more or less suitable for different applications? We will explore local-area protocols such as Bluetooth Low Energy, Thread (and other 802.15.4 protocols), low-power, wide-area networks (LPWANs) such as LoRaWAN and Sigfox, and other related topics such as backscatter and localization.

The class will include lectures on these topics as well as practical hands-on lab sessions interacting with networks while working in small groups. Students will also complete an individual final design project, a paper writeup designing a deployment of IoT devices and comparing capabilities of multiple networks to support it.


## Prerequisites

 * **CS346/CE346, EE326, or equivalent**: Embedded systems background
 * OR **CS340, or equivalent**: Computer networks background


## Textbook

None.


## Course Learning Goals

 1. Understand tradeoffs in wireless protocol design and how those tradeoffs influence suitability for application goals.
 2. Make or support communication technology design decisions with respect to application requirements, device capabilities, and infrastructure requirements.
 3. Explain the basic operating principles and performance of:
   * Bluetooth Low Energy
   * 802.15.4 and Thread
   * WiFi
   * LoRa
   * Basic Cellular Data
 4. Explain what "star", "mesh", "cell", and various "area networks" mean in wireless networking, and how topology influences system design and performance.
 5. Estimate performance—in throughput, latency, energy use, and reliability—given technical information on a wireless technology.
 6. Demonstrate basic self-sufficiency in the compilation, loading, and testing of previously-unseen software on previously-unseen hardware platforms.


## Labs

Labs are hands-on activities targeted towards increasing practical
understanding of wireless protocols. These will usually consist of programming
some hardware to perform wireless communication. Labs will usually be performed
in small groups. The tentative list of labs are:

 1. Wireshark (individual)
 2. Bluetooth Low Energy
 3. Thread
 4. WiFi
 5. LoRa

In-class time is reserved for labs and students must sign up for a lab session
when registering. However, labs are not expected to finish during this session
and will continue outside of lab time.


## Homeworks

Homeworks are on-paper exercises to practice wireless topics and engage with
datasheets and other resources. They are completed individually. The tentative
list of homeworks are:

 1. Background
 2. BLE Packets
 3. Matter Devices
 4. Cellular Deployment Costs (larger assignment)


## Final Design Project

The final design project is an end-to-end task to design and evaluate a
communication scheme for an Internet of Things application. Loosely, this will
be an exercise of: "You're an engineer at startup X, building application Y,
with requirements 1,2,3,4. What do you design and why?" The expectation is that
students will invest significant time into considering real-world technologies.
The final output of this project is a written report.

