## Notes on application of Bayes Law

These notes continue and complete line of argument sketeched on board last few minutes
of our class on Friday September 15.

We study how a decision maker who knows two possible probability distributions for successive i.i.d. wage draws that nature makes optimally uses conditional probabilities to infer which of the two distributions nature is drawing from.  

In effect, the decision maker does not know a hidden "state" or "parameter" that indexes whether nature draws from $F$ or from $G$.  

He does know that that  "state" or "parameter" can possibly take one of only two values,
say $0$ or $1$.


Our decision maker uses  an unknown   parameter to index whether nature permanently draws from density $f$ or from density $g$ as a random variable with a known (prior) probability $\pi_{-1}$. The parameter takes one of two values that indexes whether nature is drawing from $f$ or $g$.  He use a "prior" (meaning "before seeing any data") probabilty mass function to express his uncertainty about this parameter.  

Our  Bayesian statistician then  pretends that he ``knows the truth'' from the beginning: by this we mean that before seeing any data, the Bayesian statistician knows a joint probability distribution over histories $w^t$ and a  random event  that tells how  at time $-1$ nature once and for all  permanently selected either density $f$  or density $g$.

With these things in place, the decision maker
uses that joint distribution to compute the conditional distribution of the random variable indexing $f$ or $g$,  conditional on an observed history $w^t$.  

Computing a conditional distribution in this way is often called  ``Bayes law''. 

If the $w$ is a continuous random variable, we assume that the two distributions $F$ and $G$ have densities $f$ and $g$  respectively, and that $F$ and $G$ put positive probabilities on 
the same events.  

If $w$ is a discrete random variable, we assume that $f$ and $g$ are probability mass functions that put positive probabilities on the same set of possible $w$'s. 

These assumptions will make likelihood ratios well defined. 

In more detail, define the joint densities $f(w^t)= \prod_{s=0}^t f(w_s) $ and $g(w^t)= \prod_{s=0}^t g(w_s) $.

Define the likelihood ratio process $L(w^t) = {\frac{f(w^t)}{g(w^t)}}$.

Let the agent's subjective joint distribution over history $w^t$ be 
$$p
(w^t) = \pi_{-1} f(w^t) + (1 - \pi_{-1}) g(w^t).
$$


Let $a = {f, g}$ be a dummy variable that indexes whether nature permanently draws from $f$ or $g$.

The probability distribution of history $w^t$ conditional on $a = f$ is

$$ p(w^t | a=f) = f(w_t) $$

The agent's subjective joint distribution over $w_t, a=f$, i.e,  the history and the event that $a =f$, is 

$$ p(w^t, a=f) = f(w^t) \pi_{-1} $$

Use the standard mathematical laws of probability to compute the conditional probability

$$
p(a = f |w^t)  = {\frac{p(w^t, a=f)}{p(w_t)}} 
$$

or

$$
p(a = f |w^t)  = {\frac{f(w^t) \pi_{-1}}{\pi_{-1} f(w^t) + (1 - \pi_{-1}) g(w^t)}} 
$$

Dividing both the numerator and denominator of the above equation by $g(w^t)$ gives

$$ \tag{1}
\pi_t \equiv p(a = f |w^t) = {\frac{L(w^t) \pi_{-1}}{ \pi_{-1} L(w^t) + (1 - \pi_{-1})}}
$$

Thus, the posterio probability that $a = f$, namely, $\pi_t =  p(a = f |w^t)$, is a function of the initial prior probability $\pi_{-1}$ and the likelihood ratio $L(w^t)$. 

When $w^t$ is governed by the joint density $f(w^t)$,$L(w^t)$ diverges to $+ \infty$;  when  $w^t$ is governed by the joint density $g(w^t)$, $L(w^t)$ converges to $0$.  

It follows that when $w^t$ is governed by the joint density $f(w^t)$, the posterior probability that $a=f$, namely, $\pi_t$, converges  to $1$; and that  when  $w^t$ is governed by the joint density $g(w^t)$,$\pi_t$ converges to $0$.  


Where $l(w_t) = {\frac{f(w_t)}{g(w_t)}}$, we can represent $L(w^t)$ recursively via 

$$ 
L(w^t) = l(w_t) L(w^{t-1})
$$

If we use this definition in (1) and rearrange we obtain the recursion

$$ \tag{2}
\pi_t = { \frac{\pi_{t-1}l(w_t)}{ \pi_{t-1} l(w_t) + (1 - \pi_{t-1})}}
$$

Evidently, the posterior probability $\pi_{t-1}$ is a **sufficient statistic** for the parameter that indexes whether nature is drawing from $f$ or $g$: it contains all of the information about that parameter conveyed by history $w^t$.




