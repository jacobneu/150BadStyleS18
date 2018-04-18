# 15-150 Bad Style Competition S18

### Notice sent out to all 15-150 TAs by Head TA Jacob Neumann
I am hereby declaring a 150 Bad Style Competition. Show off your skills at making abominable SML monstrosities, and overall make 150, CMU, and the world a worse place by releasing your unholy creations on the general public!

## The Rules
The rules are as follows:
- All submissions must conform to the following technical specification: your submission must be in SML, not use any structures disallowed by the autograder, compile cleanly on autolab (using SMLNJ 110.81), and pass the tests (mentioned below).
- Submissions must not exploit/hack the infrastructure of the autograder
- Your code should not contain anything which personally identifies you (we're going to be using anonymous nicknames for fair voting)

## The Awards:
Four awards will be given:
- The Course Choice Award - Awarded to the submission which receives the highest number of votes. All rule-following entries are eligible.
- The Chris Grossack Award for Achievements in Ridiculous Overkill - Awarded for the most unnecessarily elaborate submission which does so much more than was needed to solve the original problem. To be judged by Jacob (Jacob's entry/entries are ineligible for this award, but all other rule-following entries are eligible).
- The Vijay Ramamurthy Award for Achievements in Jokery and Memecraft - Awarded for garbage submissions that manage to make a mockery of everything legitimate about 150 and insert childish jokes and reference into the code. To be judged by Jacob (Jacob's entry/entries are ineligible for this award, but all other rule-following entries are eligible).
- The Jeanne Luning Prak Award for Achievements in Technical Awfulness - Awarded to the submission which best captures the content of Bob Harper's nightmares. Points will be given for abusing how the SML type system was supposed to work, doing foul things with references & exceptions, and in general doing the kinds of things we tell the students not to do. The number of value restrictions raised by the code will be taken into consideration. To be judged by Jacob (Jacob's entry/entries are ineligible for this award, but all other rule-following entries are eligible).

The awards will be announced on the 15-150 S18 Piazza soon after voting concludes.

## Voting:
To cast your ballot, please go to:
[https://goo.gl/forms/kCMuVhcsYQ2rZFxg2](https://goo.gl/forms/kCMuVhcsYQ2rZFxg2)

Each submission is identified by its nickname and the artist. Multiple votes are allowed and encouraged (don't actually votespam though). Votes will be accepted until 23:59 on Tuesday, April 24th 2018. There are no late days.

## The Submissions
One submitter used their actual name. Their name has been redacted, so this submitter is unable to curry favor with the voters using their winning personality and natural charm. The two Alonzo Churches are, in fact, distinct people who independently picked the same nickname.

0. (* make_garph, "if true=true then true else false" *)
1. (* Alonzo Church, "Values are Functions" *)
2. (* fella, Untitled *)
3. (* JCB, Untitled *)
4. (* B@53C@53, "I generated this code using a python script
                 but I think writing the python script
                 took longer than just typing the code would
                 have RIP." *)
5. (* DirtyHacks, "angery about exn" *)
6. (* Auroroa BORO, "Stackd Hams" *)
7. (* Alonzo Church, "Church Encodings" *)
8. (* Unsure Casual Guy, "SML is Plain English" *)


## The Problem:
You will be asked to implement a basic stack structure called Stackd (where the d is for "dumb"). An 'a stack should be a value of the abstract type 'a t, which you'll define along with the following operations:
```
    push : 'a -> 'a t -> 'a t
    pop : 'a t -> 'a * 'a t
    empty : unit -> 'a t
    null : 'a t -> bool
```
which push to the stack, pop from the stack, return an empty stack, and check whether a stack is empty, respectively. There is also an exception Empty, which should be raised if we pop off an empty stack. Our solution implements all four operations in constant time, but if you can implement them asymptotically slower then that's excellent.

### Good luck, and may your code be confusing, unreadable garbage!
