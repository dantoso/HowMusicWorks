# Sounds and feelings

Hey there! This is the project I've submmited to WWDC 2022, it's a very short app, but it was a very big challenge for me to make it and I'm very proud of it.

The goal of my app is to show you how music works in a fundamental level, how sound waves make us feel things

## What exactly is it?

It's a sound frequency generator with a graphical interface that can be edited in real time. 
You can control 3 sound waves that are added up to form a resultant wave, you can listen to this wave at the same time that you see its form drawn on the screen. The waves' frequencies can be controlled by sliders, pickers and buttons. The app has 4 pages, each one with a different wave controller interface.

In each page there is also an info button that you can tap to read some text to learn about the basics of tuning systems, every text is related to the page you access it from.
It's really cool to toy with it, I promise.

## How does it work?

Here's a little of onboarding on the code I've written. 

I've separated the app's core logic in 4 parts: wave abstraction, wave drawing, wave controls and sound generation. Let's start from the beggining.

### Wave abstraction

So, to show and play waves, I needed first to find a way to compute and process them. So I created a protocol called Wave, that represented the important information I needed about a general wave (a pure wave or a resultant of the sum of 3 pure waves)

<img width="597" alt="Captura de Tela 2022-04-29 às 17 39 24" src="https://user-images.githubusercontent.com/80010223/166066294-41578085-5753-4c9a-8ead-49d1e314eee3.png">

Then I made the actual abstractions for the kinds of waves I would need in my app.

PureWave:

<img width="785" alt="Captura de Tela 2022-04-29 às 17 42 25" src="https://user-images.githubusercontent.com/80010223/166066495-c1b0978f-27a9-43ab-806e-a3e9362a6fe7.png">

And a WaveSum:

<img width="992" alt="Captura de Tela 2022-04-29 às 17 43 42" src="https://user-images.githubusercontent.com/80010223/166066683-db36a025-7c0a-4047-a44d-1fd48cc20100.png">

