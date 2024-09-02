# Graph Traversal - Reachability Program

## Overview

This Prolog program solves a simple graph theory problem: determining which towns in Uganda are reachable by road from a given town. The program reads a list of towns and the roads connecting them and uses a recursive rule to check if one town can be reached from another.

### Problem Description

Imagine you're a road network planner responsible for ensuring that any town in Uganda can be reached from Kampala by road, possibly via other towns. The problem is to determine, given a set of towns and roads, which towns are not reachable from a given town.

### Example Scenario

Consider the following road network:

- Town `a` is connected to towns `b` and `c`.
- Town `b` is connected to town `d`.
- Town `c` is connected to town `e`.
- Town `d` is connected to town `f`.
- Town `e` is connected to town `g`.
- Town `f` and `g` have no direct connections to other towns.
- Town `h` is isolated and not connected to any other town.

The goal is to determine which towns can be reached from any starting town.

### Prolog Code

The following Prolog code represents the road network and defines the rule to determine reachability:

```prolog
% Facts defining the road network
roads(a, [b, c]).
roads(b, [d]).
roads(c, [e]).
roads(d, [f]).
roads(e, [g]).
roads(f, []).
roads(g, []).
roads(h, []).

% Rule to determine if town Y is reachable from town X
reachable(X, Y) :-
    roads(X, Neighbors),
    member(Y, Neighbors).

reachable(X, Y) :-
    roads(X, Neighbors),
    member(Z, Neighbors),
    reachable(Z, Y).
```
## Testing the Program
You can test the program using various queries to check if one town is reachable from another. For example:

- Is `f` reachable from `a`?
```
?- reachable(a, f).
```
Expected Output: ```true```

- Is `h` reachable from `a`?
```
?- reachable(a, h).

```
Expected Output: ```false```

## How to Run the Program
### Prerequisites
SWI-Prolog: Ensure that SWI-Prolog is installed on your machine.

- **Linux**: You can install SWI-Prolog using the following command: ```sudo apt-get install swi-prolog```
- **Windows**: Download and install SWI-Prolog from the official website: SWI-Prolog Download
