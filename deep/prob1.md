---
layout: page
title: 
permalink: /deep/prob1
---

  <header class="post-header">
    <h1 class="post-title">Probability</h1>
  </header>
  <br><br>
<p>
<i>Probability theory is nothing but common sense reduced to calculation</i> - Pierre Simon Laplace
<br><br>

The word probability is commonly employed in informal conversations. It is used to express the chance that something will happen. Here are some classical examples: "I will probably work on the weekend" or "It is unlikely that she will comeback." 

<br><br>

<!-- Machine Learning A Probabilistic Approach - page 27 -->
There are at least two formal interpretation of probability, namely <b>frequentist</b> and <b>Bayesian</b>. The first express the number or frequency of an outcome event on a long run experiment. For example, if a coin is tossed 10.000 times how many times it will land heads? If it is a fair coin, we expect to see heads roughly half of the time. Another good example is the experiment of drawing a hand of cards. If we perform the experiment many times, we will find that the probability <i>p</i> of drawing certain card actually equals the proportion of times that particular card was drawn in a long run.

<br><br>

The second interpretation is used to express uncertainty or likelihood of an event without necessary performing an experiment many times. This is the Bayesian probability. It uses information related to some outcome in order to calculate the actual probability (also referred to as degrees of belief) of an event. For example, if we want to know the probability of a person having a centain disease we could use Bayes' theorem to calculate this probability using not just the probability of any person having the disease, but combining it with relevant information such as symptoms, age, laboratorial tests, etc. The frequentist approach is not feasable in this case since it would require many patients with the exactly same condition so that we could find the proportion (also probability) of that disease.

<br><br>

<!-- Deep Learning book - page 56 -->
On the contrary of many branches of Computer Science that deals with deterministic events, for Machine Learning the second interpretation of probability (Bayesian interpretation) is extremely relevant. That's because Machine Learning algorithms are required to have the ability to reason in the presence of uncertainty. For example, we might want our algorithm to predict customer behavior online and infer which products he/she would be mostly interested to add in the cart. Of couse, we can create a deterministic model for that, but it can be quite complicated to do so. Image the following rule "Women at age x that buy product A and B are likely to buy product C, except if they do not have children". It could be very hard to develop whereas a model that simply states that most women buy product C based on some probability distribution would be less expensive to develop.

<br><br>

<b>Discrete Random Variables</b>

<br><br>

A discrete random variable is a variable that can assume different values randomly. Image the outcome of tossing a coin or a die. We could represent the set of outcomes for these two events using the discrete random variables <i>A</i> and <i>B</i>, where <i>A</i> = {tail, head} and <i>B</i> = {1, 2, 3, 4, 5, 6}. The probability of <i>A</i> is (0 &lt;= P(A) &lt;= 1). Since it is a random process, a probability distribution (or probability mass function) is associated with each discrete variable and is used to describe the probability of each event. For example, the probability of <i>P</i>(<i>A</i>=tail) is 0.5 and the probability of <i>P</i>(<i>B</i>=1) is 0.16, and it is the same for each event or state of these discrete random variables. Both are uniform distributions in this case, i.e. every event has the same probability as described in the figure bellow. Generally, we denote the probability of an event or state <i>A = a</i> as <i>P(A=a)</i>. 

<br><br>

<center>
<img src="{{ site.baseurl }}/img/coin.png" height="242" width="300">
<img src="{{ site.baseurl }}/img/die.png" height="242" width="300">
</center>

<!--
Code for generating graph in R

# Tossing a coin
n <- floor(runif(1000000)*2)
t <- table(n)
barplot(t/1000000, xlab="A = 'Tossing a coin'", ylab="P(A)", names.arg=c("Tail", "Head"), col="darkred")

# Tossing a die
n <- floor(runif(1000000)*6) + 1
t <- table(n)
barplot(t/1000000, xlab="B = 'Tossing a die'", ylab="P(B)", col="darkred")

-->
 
<br><br>

<b>Union of two events</b>

<br><br>
The union of two events A and B describes the probability of occurence the one or the other and can be expressed as follows:
<br><br>

<i>P</i>(<i>A U B</i>) = <i>P</i>(<i>A</i>) + <i>P</i>(<i>B</i>) - <i>P</i>(<i>A &#x2229; B</i>)

<br><br>

For the two experiments aforementioned, the events are independent and for that reason <i>P</i>(<i>A &#x2229; B</i>) = 0. Notice the first figure bellow where there is no overlap or intersection between the set of two events. It well represents the events described above. The probability of the union of tossing a coin and a die is just the sum of the two probabilities. The second figure shows the case where the events are dependent and is possible to observe some overlap between the two. In this case, <i>P</i>(<i>A &#x2229; B</i>) &lt;&gt; 0 and we must subtract it from the sum of individual probabilities.

<br><br>

<center>
<img src="{{ site.baseurl }}/img/independent.png" height="202" width="600">
</center>

<br><br>

<b>Joint probabilities</b>

<br><br>

The joint probability of two dependent events is the probability of both occuring, i.e. the joint probability of event A and B is given by

<br><br>

<i>P</i>(<i>A &#x2229; B</i>) = <i>P</i>(<i>A | B</i>)<i>P</i>(<i>B</i>)

<br><br>

This is also called the <b>product rule</b> and, of course, we consider here the events to be dependents of each other because the fact that one event happened may influence the probability of the other event as described in the equation above. We can also think of the individual states of B and define the marginal probability using the <b>sum rule</b> as shown below

<br><br>

<i>P</i>(<i>A</i>) = &Sigma;<i>P</i>(<i>A &#x2229; B</i>) = &Sigma;<i>P</i>(<i>A | B = b</i>)<i>P</i>(<i>B = b</i>)

<br><br>

And by symmetry

<br><br>

<i>P</i>(<i>B</i>) = &Sigma;<i>P</i>(<i>B &#x2229; A</i>) = &Sigma;<i>P</i>(<i>B | A = a</i>)<i>P</i>(<i>A = a</i>)

<br><br>

<b>Conditional Probability</b>

<br><br>

Conditional probability is the probability of some event given that another event is true. For example, we could want to know the probability of having a disease given that the patient tested positive. Conditional probability can be defined as

<br><br>

<i>P</i>(<i>A | B</i>) = <i>P</i>(<i>B &#x2229; A</i>) / <i>P</i>(<i>B</i>)

<br><br>

<b>Bayes rule</b>

<br><br>

Bayes rule results of the combination of conditional probability and sum and product rules. The idea behind this rule is that if we know <i>P</i>(<i>A | B</i>), then the probability of <i>P</i>(<i>B | A</i>) is given by

<br><br>

<i>P</i>(<i>B | A</i>) = <i>P</i>(<i>B | A</i>)<i>P</i>(<i>B</i>) / <i>P</i>(<i>B</i>)
<br><br>

We can actually derivate it from conditional probability. Let's consider

<br><br>

<i>P</i>(<i>A &#x2229; B</i>) = <i>P</i>(<i>A | B</i>)<i>P</i>(<i>B</i>)

<br><br>

Which leads to

<br><br>

<i>P</i>(<i>A | B</i>) = <i>P</i>(<i>A &#x2229; B</i>) / <i>P</i>(<i>B</i>)

<br><br>

Since

<br><br>

<i>P</i>(<i>A &#x2229; B</i>) = <i>P</i>(<i>B &#x2229; A</i>) = <i>P</i>(<i>B | A</i>)<i>P</i>(<i>A</i>)

<br><br>

Then

<br><br>

<i>P</i>(<i>A | B</i>) = <i>P</i>(<i>B | A</i>)<i>P</i>(<i>A</i>) / <i>P</i>(<i>B</i>)

<br><br>

The idea here is that we can use evidence of B to update our belief about hypothesis A. In the formula above, the so-called posterior belief <i>P</i>(<i>A | B</i>) is obtained by using prior knowledge about <i>P</i>(<i>A</i>) and multiplying it by <i>P</i>(<i>B | A</i>), which express the likelihood of B occurring considering that A is true.

<br><br>

As an example, let's think of the following situation:

<br><br>

Let A represent the event "Person is an engineer"

<br><br>

Let B represent the event "Person likes math"

<br><br>

And we know that <i>P</i>(<i>A</i>) = 0.2, i.e. our prior knowledge is that the probability of a person being an engineer is 20%. This probability can be updated if we have information about event B (of course the two events can not be independent in this case). So, we want to compute <i>P</i>(<i>A | B</i>) or the probability of being an engineer given that the person likes math. And this is going to be, according to Bayes rule, as follows

<br><br>

<i>P</i>(<i>A | B</i>) = <i>P</i>(<i>B | A</i>)<i>P</i>(<i>A</i>) / <i>P</i>(<i>B</i>) or

<br><br>

<i>P</i>(<i>A | B</i>) = <i>P</i>(<i>B | A</i>)<i>P</i>(<i>A</i>) / (<i>P</i>(<i>B | A</i>)<i>P</i>(<i>A</i>) + <i>P</i>(<i>B' | A</i>)<i>P</i>(<i>A</i>)), since <i>P</i>(<i>B</i>)  = <i>P</i>(<i>B | A</i>)<i>P</i>(<i>A</i>) + <i>P</i>(<i>B' | A</i>)<i>P</i>(<i>A</i>)

<br><br>

It states that the probability of being an engineer given that the person likes math is equal the probability of liking math and being a engineer divided by the probability of not liking math and being an engineer plus the probability of liking math and not being an engineer.

</p>

