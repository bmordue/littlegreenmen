#!/usr/bin/env python

# rename turns_gen.yml to turns.yml
f = open("turns_gen.yml","w+")
for x in range(1,30):
    f.write("firstgameturns" + str(x) + ":\n")
    f.write("   id: " + str(x) + "\n")
    f.write("   sequence: " + str(x) + "\n")
    f.write("   game_id: 1\n\n")
f.close()
