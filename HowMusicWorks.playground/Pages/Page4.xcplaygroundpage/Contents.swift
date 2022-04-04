/*:
 
 # The pythagorean comma
 
 So in the last scene I showed you how you fit 12 notes in an octave following the pythagorean tuning, now to go lower or higher than that octave you just need to divide or multiply, respectively, by 2 every other note in that octave so you can play in bigger ranges!
 
 ***
 
 Well, Pythagoras' tuning system seems to work very well... and that's true... to an extent.\
 So, when you execute this scene, you'll see that I've increased the range of notes you can play following this rule of taking every note we calculated earlier and multiplying it by 2.
 
 ***
 
 With this scene, you cannot vary the frequency of the first, so instead of calling it the first note of the scale I'm gonna call it A (A4 to be more precise), because it is always constant at 440 Hz.
 
 - Important:
 You'll see that now there are two A notes (A4 and A5), and what it means is that **A4 is exactly one octave below A5**, this is true for every other note, not just the A.
 
 ***
 
 Now try this is the experiment:
 
 - Experiment:
 Try to play an A4 and an E4. And compare what it sounds like to a G4 and a D5 played together.
 
 Once you conclude this experiment you'll hear that A4 E4 sounds A LOT better than G4 D5, and that's a big problem, because A4 E4 is a fifth just like G4 D5 is also a fifth.\
This happens because to play a fifth the notes need to be in a ratio of 3/2, but the ratio between G4 and D5 IS NOT 3/2 (or 1.5), if you calculate it yourself, you'll see that the ratio is actually 1.42222. That is why it doesn't sound good at all.
 
 ***
 
So that means Pythagoras' system is broken and it is impossible to compose music that sounds good with intervals too far away from the original note???
 
 ***
 
 Well, if you listen to music today, you know that's not true at all, so how did we fix it?
 
 [Previous](@previous) | [Next](@next)
 
 */

import PlaygroundSupport

PlaygroundPage.current.setLiveView(InterfaceP4())

