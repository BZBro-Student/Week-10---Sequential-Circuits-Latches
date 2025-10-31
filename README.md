# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
You have to use behavioral verilog because structural verilog will not run a looped signal.
### What is the meaning of always @(*) in a sensitivity block?
It is similar to an event listener that re-executes code whenever any input is changed.
### What importance is memory to digital circuits?
It allows your circuit to keep a stored state for usage later even if it is not actively being used by the circuit. I wouldn't want to forget everything, would you?
