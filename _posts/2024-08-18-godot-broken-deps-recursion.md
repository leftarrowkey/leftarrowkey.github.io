---
layout: post
title: Godot -- How to fix broken dependencies between 2 files that depend on eachother.
---

# The Problem
When making a game, I had created a goal object, which had a "next level" property, containing a PackedScene, which I had made default to the first level of the game.
However, I also had an instance of this object in the first level, which I had assumed would be fine, as it would only reload the level when you beat it.
Unfortunately, upon trying to re-open the level after closing it, I was met with an error, declaring that the scene had broken dependencies, specifically the goal object.
Confused, I attempted to open the goal object, only to be met with the same error, only this time referencing the level that I couldn't open.
Both complained that the something was "Busy", and neither could be opened.
# The Solution
After a great deal of annoyance, I eventually figured out that Godot does not like a scene depending on itself, even if it's indirect.
The solution was to somehow remove one's reference to the other (either change the default "next level", or remove the goal object), but that would require opening one or the other.
After trying and failing to manually edit the goal object in a text editor, I eventually fixed it by *renaming the goal object's scene (which was instantiated inside the level), creating a new, empty scene, saved with the name that the goal object used to have, loading the level, deleting the (now empty) goal object, and then moving the goal object scene back to it's original path, and changing the default "next level".*
This is moderately involved, but given that the other solutions presented on the internet seem to consist of just rolling back the project to an earlier version (potentially losing work), this seems preferrable.
