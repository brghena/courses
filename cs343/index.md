---
layout: page
title: CS343
has_children: true
has_toc: false
---

# CS343 - Operating Systems


## Description

A fundamental overview of operating systems (OSes) with an emphasis on practice. Topics covered include: OS structure, OS models, OS abstractions, concurrency sources, concurrency challenges, concurrency control, scheduling and resource management, virtual memory, device drivers, protection and security, memory management, file systems, and design principles. Requires substantial low-level programming projects at both user-level and within a kernel.

This course introduces you to the basic, foundational concepts and principles of operating systems, many of which generalize to other areas of computer science and engineering. You will learn many of these concepts and principles by applying them in practice on a modern machine through labs that are designed to put you in the shoes of a systems-level developer operating at both user-level and within the kernel. OS (and systems more broadly) is very much a learn-by-doing kind of area.

The hardware environment that we will focus on is Intel/AMD machines running in 64 bit mode ("x86-64" or "x64"), which is the commonplace platform for systems ranging from laptops to supercomputers today. Lab work is done in the C programming language on user-level Linux or in the Nautilus kernel framework ("NK"), a research kernel developed at Northwestern and other institutions. The experience you gain in NK will generalize to the Linux kernel, for the most part.


## Prerequisites

 * **CS211 or equivalent**: C programming experience and Unix environments
 * **CS213, CE205, or equivalent**: Introduction to systems and computer organization
 * **CS214 or equivalent**: Data structures


## Textbook

Andrew S. Tanenbaum and Herbert Bos, **Modern Operating Systems, 4th Edition**, Pearson, 2014, (ISBN-13: 978-0133591620, ISBN-10: 013359162X)


## Detailed Course Topics

 * **OS Structure**: kernel, device drivers, file systems, network stacks, schedulers, system calls, libraries, toolchains, language virtual machines, user interface/shell, applications, etc.
 * **OS Models**: monolithic kernel, microkernel, virtual machine monitor/hypervisor, jail/zone/container, and more esoteric models.
 * **OS Abstractions**: thread, name space, address space, process, IPC, virtual machine, container, file, directory, stream, etc.  Plus abstraction design within the kernel (devices, file systems, ...)
 * **Concurrency Sources**: multiprocessors, devices, interrupts, threads, processes, horror stories, …
 * **Concurrency Challenges**: memory system coherence/consistency, race conditions, deadlock, livelock, horror stories, …
 * **Concurrency Control**: interrupt control, atomics, spinlocks, critical sections, blocking vs waiting, mutexes, semaphores,condvars, monitors, barriers, lockfree/waitfree models, plus typical synchronization problems such as producer-consumer, reader-writer, and dining philosophers.
 * **Scheduling and Resource Management**: basic theory, FCFS, GPS, SRPT, dynamic priority (e.g. Unix), lottery, fixed priority, preemptive vs non-preemptive, real-time vs non-real-time, horror stories, …
 * **Virtual Memory**: hardware-software co-design, paging, swapping, segmentation and (possibly) current alternatives. 
 * **Device Drivers**: interrupts, DMA vs PIO, MMIO vs PMIO, atomics, hardware memory barriers, software memory barriers.
 * **Protection and Security**: kernel/user mode, mode/ring transitions, role of encryption, interaction with virtual memory, horror stories.
 * **Memory Management**: page allocation versus heap allocation, garbage collection, allocation in special contexts (e.g. interrupt context), page replacement, working set.
 * **File Systems**: issues/interfaces, data structures on block devices, examples (V7, FAT+, ext2+)
 * **Principles**: policy versus mechanism, orthogonality, worse-is-better, lazy evaluation, caching, end-to-end argument, mythical man-month, no silver bullet, hw/sw co-design


## Labs

Large programming assignments often performed in groups. The specific labs and details of them vary per quarter. Recently common labs have been:

 * **Producer-Consumer Lab**: learn about concurrency control
 * **Scheduling Lab**: learn about scheduling with a discrete event simulator
 * **Driver Lab**: extend a kernel with a new device driver
 * **Paging Lab**: implement virtual memory within a kernel

