/*:
 
 # Pythagorean tuning
 
 A long long time ago, Pythagoras (a very smart greek guy) noticed that the pitch of a sound was determined by the size of the thing vibrating to produce the sound.\
 Along with that, he also noticed that when two things, one twice the size of the other, vibrate together, they make a very pleasing sound.\
 When a note's frequency is double the frequency of another, it is said (in western music theory) that this note is the octave of the original.
 
 ***
 
 After he found that out, he started testing other ratios and so he came up with 3 to 2 (a fifth) 5 to 4 (a third) and so on. He kept testing these notes until he came up with 12 different notes. All derived from multiplying an original frequency by these ratios. This original frequency is called the first.
 
 ***
 ## Try to play some tunes or some cool chords!
 
 - Experiment:
 Play a first, a third and a fifth at the same time to play an A major chord. And then after playing the A major for some time just change the third to a minor third and feel how a simple change from an A major to an A minor chord brings sadness to the sound
 
 - Experiment:
 
 In this scene, instead of sliders, you use pickers to control the frequency, each option in the picker is one of the notes that pythagoras came up with. The original note or first for now is 440 Hz, but you can change the original frequnency for any you want right here:
 */

// Put any frequency you like, but once you change this frequency, be sure to select an option for the picker of every wave (the first might still be 440 Hz before you select something).

// Because high frequencies are dangerous for the ears (and drawing them in the screen in an optimized way needs a little more work)
// I limited the frequency of the first to a maximum of 1000 and a minimum of 0 Hz.

PythagoreanTuning.first = 440

// You can command click this code to see how Pythagoras calculated each one of these notes based on the frequency of the first.

/*:

[Previous](@previous) | [Next](@next)

*/

import PlaygroundSupport

PlaygroundPage.current.setLiveView(InterfaceP3())


