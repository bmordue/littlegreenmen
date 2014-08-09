#!/usr/bin/env python

# NOTE: Overwrites any existing file

f = open("turns.yml","w+")
for x in range(1,30):
    f.write("firstgameturns" + str(x) + ":\n")
    f.write("   id: " + str(x) + "\n")
    f.write("   sequence: " + str(x) + "\n")
    f.write("   game_id: 1\n\n")
f.close()
