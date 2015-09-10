**Battleships (Git pong with Time Hyson) **
============================================
Week two Makers Academy - Battleships project.

Description
------------

Collaboration with Tim Hyson on his battleships. Forked from Tims Repo.

Battleships (or Battleship) is a game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid.

We have been tasked to create a fully functioning game of battleships using OOD & TDD principles.

Installation/Dependencies
--------------------------
- Ruby Version 2.2.0
- Fully tested with Rspec 3.3.2   

Other Info:
------------


User Stories
------------
```
As a player
So that I can prepare for the game
I would like to place a ship in a board location

<!-- As a player
So that I can play a more interesting game
I would like to have a range of ship sizes to choose from -->

<!-- As a player
So that I can create a layout of ships to fox my opponent
I would like to be able to choose the directions my ships face in -->

<!-- As a player
So that I can have a coherent game
I would like ships to be constrained to be on the board -->

<!-- As a player
So that I can have a coherent game
I would like ships to be constrained not to overlap -->

As a player
So that I can win the game
I would like to be able to fire at my opponents board

<!-- As a player
So that I can refine my strategy
I would like to know when I have sunk an opponent's ship -->

<!-- As a player
So that I know when to finish playing
I would like to know when I have won or lost -->

<!-- As a player
So that I can consider my next shot
I would like an overview of my hits and misses so far -->

<!-- As a player
So that I can play against a human opponent
I would like to play a two-player game -->
```

###Board
  <!-- 'can have a ship' -->
  'can receive a hit on ship'
  'reports missed hit when no ship at position'
  'reports hit when ship at position'

###Player
  <!-- 'has a board'
  'has ships' -->
  'can place ships'
  'has hits overview'
  'has miss overview'

###Ship
  <!-- 'has a position when created' -->
