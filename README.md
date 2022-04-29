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

I've separated the app's core logic in 3 parts: wave abstraction, wave drawing and sound generation. Let's start from the beggining.


### Wave abstraction

So, to show and play waves, I needed first to find a way to compute and process them. So I created a protocol called Wave, that represented the important information I needed about a general wave (a pure wave or a resultant of the sum of 3 pure waves)

<img width="597" alt="Captura de Tela 2022-04-29 às 17 39 24" src="https://user-images.githubusercontent.com/80010223/166066294-41578085-5753-4c9a-8ead-49d1e314eee3.png">

Then I made the actual abstractions for the kinds of waves I would need in my app.

PureWave:

<img width="785" alt="Captura de Tela 2022-04-29 às 17 42 25" src="https://user-images.githubusercontent.com/80010223/166066495-c1b0978f-27a9-43ab-806e-a3e9362a6fe7.png">

And a WaveSum:

<img width="992" alt="Captura de Tela 2022-04-29 às 17 43 42" src="https://user-images.githubusercontent.com/80010223/166066683-db36a025-7c0a-4047-a44d-1fd48cc20100.png">

Now that I had a way to represent the waves, I had to draw them.

### Wave drawing

Alright, so to draw and show the drawings on the screen I made a SwiftUI view that displays in its body a custom shape, called WavePath:

<img width="733" alt="Captura de Tela 2022-04-29 às 17 56 49" src="https://user-images.githubusercontent.com/80010223/166068121-cac481a1-2207-4974-b722-826e704714b0.png">

So now that I had a way to draw any kind of wave I wanted on the screen, I needed to play them


### Sound generation

This was definetively the hardest thing I had to code in this project. First there wasn't a lot of documentation about how to generate pure frequency sounds programmaticaly in swift, I had to dig a lot to find something, and I did! This is the amazing [medium post](https://betterprogramming.pub/building-a-synthesizer-in-swift-866cd15b731) explaining how to use the ***AVSourceNode***, which is the property of the Synth class that does all the sound generation magic, you can see that my code is completely based on what Grant explains there.

However, the approach he made in the medium post did not allow me to change the sound in real time, there were some severe bugs to the sound playing when I edited the sound wave frequency while listening to it. To fix that, I dug a little deeper and saw that he had a [github repository](https://github.com/GrantJEmerson/SwiftSynth) with updated code! And guess what? He made it in a way that the sound could be edited in real time without deafening the user! (Grant, I have no idea who you are, but your posts made this project possible, so mad respect, and thank you :D)

After studying his code I made the corrections in my own code and also adapted it to not only play a single frequency (as his project), but 3 frequencies at the same time!

It was an amazing experience and I could not feel more rewarded when I pressed play... and it simply played the sound I was telling it to play.


## Ending

Of course that isn't near all that I went through to make this work, there were a lot of much harder to solve bugs and I had to break and rebuild my head multiple times to get to a UI that felt good, satisfied me and didn't break my Synth, wave drawing or any other feature.

So that's it, hope you enjoy playing with my project as much as I enjoyed making it!
