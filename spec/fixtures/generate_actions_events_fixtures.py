#!/usr/bin/env python

# NOTE: overwrites any existing file

f = open("game_actions.yml","w+")
action_id = 0
for actor in range(1,6):
   for turn in range(1,4):
      action_id += 1
      f.write("ac_game1-actor" + str(actor) + "turn" + str(turn) + ":\n")
      f.write("   id: " + str(action_id) + "\n")
      f.write("   description: \"{ actor: " + str(actor) + ", moves: 'ruldruldrl' }\"\n")
      f.write("   turn_id: " + str(turn) + "\n\n")
f.close()

f = open("game_events.yml","w+")
event_id = 0
for actor in range(1,6):
   for turn in range(1,4):
      event_id += 1
      f.write("ev_game1-actor" + str(actor) + "turn" + str(turn) + ":\n")
      f.write("   id: " + str(event_id) + "\n")
      f.write("   description: \"{ actor: " + str(actor) + ", moves: 'ruldruldrl' }\"\n")
      f.write("   turn_id: " + str(turn) + "\n\n")
f.close()
