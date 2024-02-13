---
layout: post
title: How to fix accidentally overwriting BeamNG default maps on Linux
---

# THE PROBLEM
Earlier I was messing with the BeamNG map editor, and accidentally saved a map with the same name as small grid. Any support I could find was for windows, which probably should have worked, as the game is running through Proton, but all of them said that custom levels were in the documents folder for the game's proton instance, but that folder does not exist.

# THE SOLUTION
Custom maps are actually located in `users/steamuser/AppData/Local/BeamNG.drive/<version>/levels`, within the proton instance for BeamNG, located in `compatdata/284160/pfx/drive_c/`, within the steamapps folder.

rename the folder containing your custom level to something not matching a default level (or delete it if you don't want to keep it). This will instead leave another map with the new folder name on the selection screen, containing your custom map.
