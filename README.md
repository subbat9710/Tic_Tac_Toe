   Tic Tac Toe
  -----x-------
  
#Wikipedia Strategy

Consider a board with the nine positions numbered as follows:

1	2	3
4	5	6
7	8	9
When X plays 1 as their opening move, then O should take 5. Then X takes 9 (in this situation, O should not take 3 or 7, O should take 2, 4, 6 or 8):

X1 → O5 → X9 → O2 → X8 → O7 → X3 → O6 → X4, this game will be a draw.
or 6 (in this situation, O should not take 4 or 7, O should take 2, 3, 8 or 9. In fact, taking 9 is the best move, since a non-perfect player X may take 4, then O can take 7 to win).

X1 → O5 → X6 → O2 → X8, then O should not take 3, or X can take 7 to win, and O should not take 4, or X can take 9 to win, O should take 7 or 9.
X1 → O5 → X6 → O2 → X8 → O7 → X3 → O9 → X4, this game will be a draw.
X1 → O5 → X6 → O2 → X8 → O9 → X4 (7) → O7 (4) → X3, this game will be a draw.
X1 → O5 → X6 → O3 → X7 → O4 → X8 (9) → O9 (8) → X2, this game will be a draw.
X1 → O5 → X6 → O8 → X2 → O3 → X7 → O4 → X9, this game will be a draw.
X1 → O5 → X6 → O9, then X should not take 4, or O can take 7 to win, X should take 2, 3, 7 or 8.
X1 → O5 → X6 → O9 → X2 → O3 → X7 → O4 → X8, this game will be a draw.
X1 → O5 → X6 → O9 → X3 → O2 → X8 → O4 (7) → X7 (4), this game will be a draw.
X1 → O5 → X6 → O9 → X7 → O4 → X2 (3) → O3 (2) → X8, this game will be a draw
X1 → O5 → X6 → O9 → X8 → O2 (3, 4, 7) → X4/7 (4/7, 2/3, 2/3) → O7/4 (7/4, 3/2, 3/2) → X3 (2, 7, 4), this game will be a draw.
In both of these situations (X takes 9 or 6 as second move), X has a {\displaystyle {\frac {1}{3}}} {\frac {1}{3}} property to win.

If X is not a perfect player, X may take 2 or 3 as second move. Then this game will be a draw, X cannot win.

X1 → O5 → X2 → O3 → X7 → O4 → X6 → O8 (9) → X9 (8), this game will be a draw.
X1 → O5 → X3 → O2 → X8 → O4 (6) → X6 (4) → O9 (7) → X7 (9), this game will be a draw.
If X plays 1 opening move, and O is not a perfect player, the following may happen:

Although O takes the only good position (5) as first move, but O takes a bad position as second move:

X1 → O5 → X9 → O3 → X7, then X can take 4 or 8 to win.
X1 → O5 → X6 → O4 → X3, then X can take 2 or 9 to win.
X1 → O5 → X6 → O7 → X3, then X can take 2 or 9 to win.
Although O takes good positions as the first two moves, but O takes a bad position as third move:

X1 → O5 → X6 → O2 → X8 → O3 → X7, then X can take 4 or 9 to win.
X1 → O5 → X6 → O2 → X8 → O4 → X9, then X can take 3 or 7 to win.
O takes a bad position as first move (except of 5, all other positions are bad):

X1 → O3 → X7 → O4 → X9, then X can take 5 or 8 to win.
X1 → O9 → X3 → O2 → X7, then X can take 4 or 5 to win.
X1 → O2 → X5 → O9 → X7, then X can take 3 or 4 to win.
X1 → O6 → X5 → O9 → X3, then X can take 2 or 7 to win.
