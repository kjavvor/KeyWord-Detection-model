# KeyWord Detection Project

### By Kamil Jaworski

## Introduction

This project focuses on the development of a keyword spotting system capable of detecting a small set of predefined keywords, such as "ok google" or "hey siri". These keywords can be spoken by different individuals, amidst background noise or during continuous speech. Keyword detection plays a pivotal role in enhancing user interaction with technology via voice commands. It is foundational for virtual assistants, voice-controlled applications, and accessibility tools, providing accurate recognition of specific words or phrases.

## Objective

The primary goal of this project is to create a system that accurately recognizes specific keywords from a limited dictionary, spoken by various speakers. This capability is crucial for implementing efficient voice-activated controls and commands in software applications.

## Methodology

The project was executed in the following stages:

### Data Set

We utilized the Google Speech Commands Data Set v0.02 for this project. This dataset comprises one-second `.wav` audio files, each containing a single spoken English word. These words, from a small set of commands, are spoken by a wide array of speakers, making the dataset ideal for training machine learning models aimed at recognizing spoken commands.

#### Data Organization

The audio files are organized into folders based on the word they contain. To categorize the files into `Training`, `Validation`, and `Testing` groups, a custom pre-coded hash function was employed for straightforward sorting. This approach allows users to define the distribution percentages for the Validation and Testing data, with the remainder automatically designated for Training.

### Dataset Source

- **Download**: [Google Speech Commands Data Set v0.02](http://download.tensorflow.org/data/speech_commands_v0.02.tar.gz)
- **Further Reading**: [ArXiv Link](https://arxiv.org/abs/1804.03209)

## Acknowledgments

This project would not have been possible without the comprehensive data provided by the Google Speech Commands dataset and the invaluable research and insights from the machine learning community.

