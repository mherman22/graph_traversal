# Family Relationships in Prolog

## Overview

This Prolog code defines a set of family relationships using facts and rules. The relationships include parent-child, sibling, and extended family relationships. The relationships are defined as follows:

## Facts

### Father

- `father(X, Y)` - This fact denotes that `X` is the father of `Y`.

### Mother

- `mother(X, Y)` - This fact denotes that `X` is the mother of `Y`.

### Male

- `male(X)` - This fact denotes that `X` is male.

### Female

- `female(X)` - This fact denotes that `X` is female.

## Rules

### Parent

- `parent(X, Y)` - This rule determines that `X` is a parent of `Y` if `X` is either the father or the mother of `Y`. This is derived from:
  - `parent(X, Y) :- father(X, Y).`
  - `parent(X, Y) :- mother(X, Y).`

### Brother

- `brother(X, Y)` - This rule determines that `X` is a brother of `Y` if:
  - `X` is male.
  - `X` and `Y` share at least one parent.
  - `X` is not the same person as `Y`.

### Sister

- `sister(X, Y)` - This rule determines that `X` is a sister of `Y` if:
  - `X` is female.
  - `X` and `Y` share at least one parent.
  - `X` is not the same person as `Y`.

### Uncle

- `uncle(X, Y)` - This rule determines that `X` is an uncle of `Y` if:
  - `X` is a brother of one of `Y`'s parents.

### Niece

- `niece(X, Y)` - This rule determines that `X` is a niece of `Y` if:
  - `X` is female.
  - `X`'s parent is a sibling of `Y`.

### Sibling

- `sibling(X, Y)` - This rule determines that `X` and `Y` are siblings if:
  - They share the same father.
  - They share the same mother.
  - `X` is not the same person as `Y`.

## Example Relationships

Using the provided facts, the following relationships can be deduced:

- **Isaac** is the child of **Abraham** and **Sarah**.
- **Lot**, **Milcah**, and **Yiscah** are the children of **Haran**.
- **Isaac** has siblings **Lot**, **Milcah**, and **Yiscah** as a result of shared parents (father **Abraham** and mother **Sarah**).
- **Abraham**, **Nachor**, and **Haran** are brothers, sharing the same father **Terach**.
- **Isaac** is a niece of **Nachor** because **Isaac**'s father **Abraham** is a sibling of **Nachor**.
- **Lot** is an uncle to **Isaac** because **Lot** is a brother to **Isaac**'s parent **Haran**.

This Prolog code can be used to explore and query family relationships within this specific set of facts.
