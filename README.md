# zram
[![Build Status](https://travis-ci.org/cristifalcas/puppet-zram.png?branch=master)](https://travis-ci.org/cristifalcas/puppet-zram)

#### Table of Contents

1. [Overview](#overview)
2. [Setup - The basics of getting started with zram](#setup)
    * [What zram affects](#what-zram-affects)
    * [Beginning with zram](#beginning-with-zram)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Contributing - Guide for contributing to the module](#development)

## Overview

zram (also called zRAM and, initially, compcache) is a Linux kernel feature that provides a form of 
virtual memory compression. zram increases performance by avoiding paging to disk and using a compressed 
block device in RAM instead, inside which paging takes place until it is necessary to use the swap space 
on a hard disk drive. Since using RAM is an alternative way to provide swapping on RAM, zram allows Linux 
to make more use of RAM when swapping/paging is required, especially on older computers with less RAM installed

## Setup

### What zram affects

* An init script is installed that will start zram
* A companion script is copied in /opt/zram/zram_stats.sh that shows statistics about ram/swap usage.

### Beginning with zram

Install a zram enabled kernel:
* uek kernels from Oracle Linux
* any kernel from an el7 distribution

## Usage

    include zram


## Limitations

The module requires a kernel with zram module.

It was only tested with OracleLinux 6 and OracleLinux 7 distributions.

## Contributing

* Fork the project
* Commit and push until you are happy with your contribution
* Send a pull request with a description of your changes

