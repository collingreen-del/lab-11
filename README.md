# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

## Summary

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

a modulo n-counter divides clock frequency by the amount of clock pulses, N, to complete the sequence. if the counter toggles an output each sequench competion, the output must toggle twice, high and low. This means when this happens you must then multiple N by 2. So, you multiply 2*the full cycle, then use it to divide by the clock frequency. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

Ring counter output goes to all 1's due to their flip-flops starting in an undefined state. The FPGA board will recognize the start as undefined unless given a specific reset state. With ring counter's output needing a singular 1 to circulate throught the bits, having the wrong reset state can cause the board logic to propagate the starting value of the flip flops, causing a potential state of 1111.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

