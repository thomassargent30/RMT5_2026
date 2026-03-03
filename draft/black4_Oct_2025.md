
# Chapter 5 Corrections: Linear Quadratic Dynamic Programming

## Executive Summary

This document contains corrections for Chapter 5 of the book on Linear Quadratic Dynamic Programming. The primary issues found are:

1. **Systematic notation errors**: Extensive use of "→" instead of "−" (minus) and "∞" (infinity)
2. **Mathematical typos**: Missing operators, incorrect subscripts
3. **Minor grammatical issues**: Word choice corrections

---

## Page 1 (125)

No errors found.

---

## Page 2 (126)

### Issue 1: Infinity notation in text
**Location:** Opening paragraph of Section 5.2  
**Current:** "maximize over choice of {ut}→t=0"  
**Issue:** Arrow symbol used instead of infinity  
**Correction:** "maximize over choice of {ut}∞t=0"

### Issue 2: Summation notation in equation (5.2.1)
**Location:** Equation (5.2.1)  
**Current:** −∑→t=0  
**Issue:** Arrow used for infinity in summation  
**Correction:** −∑∞t=0

### Issue 3: Footnote 1 formatting
**Location:** Footnote 1  
**Current:** "ωx!Ax ωx"  
**Issue:** Unclear notation and spacing  
**Correction:** "∂(x'Ax)/∂x = (A + A')x; ∂(y'Bz)/∂y = Bz, ∂(y'Bz)/∂z = B'y"

---

## Page 3 (127)

### Issue 4: Return function notation
**Location:** Paragraph after section heading  
**Current:** "− (x'tRxt + u'tQut + 2u'tHxt)"  
**Issue:** Uses prime notation inconsistently  
**Note:** Verify this matches the notation established earlier in the chapter

---

## Page 4 (128)

### Issue 5: Arrow vs minus sign in matrix
**Location:** Section 5.2.3, first paragraph  
**Current:** "eigenvalues of A→BF0 are less than 1/√ω"  
**Issue:** Arrow used instead of minus sign  
**Correction:** "eigenvalues of A−BF0 are less than 1/√ω"

### Issue 6: Same issue in equation context
**Location:** Before equation (5.2.10)  
**Current:** "1/√ω in modulus, the algorithm iterates"  
**Note:** Verify the condition 1/√ω is correct (appears to be correct for discounted case)

---

**Equation (5.3.2):**
- Current: "xt+1 = Axt + But + Cεt+1, t ≥ 0"
- Issue: The symbol "ց" should be "≥"
- **Suggested correction:** Already uses "≥" - no correction needed

**Wait, reviewing original:**
- The document uses "ց" which appears to be meant as "≥"
- **Verification needed:** Confirm whether "ց" is intentional notation or should be "≥"

## Page 6 (130)

**In the proof:**
- Current: "v (x) = max u −{x'Rx + u'Qu + ωx'A'P Ax + ω2x'A'PBu"
- Issue: Missing brace closure and unclear formatting
- **Suggested correction:** Verify the equation bracketing is correct in original formatting

**End of proof:**
- Current: "d = ω (1 → ω)^−1 trace (PCC')"
- Issue: Uses "→" instead of "−"
- **Suggested correction:** "d = β(1 − β)^{−1} trace(PCC')"

## Page 7 (131)

**Footnote 4:**
- Current: "Therefore, in linear quadratic versions of the optimum savings problem, there are no precautionary savings."
- **Grammatical suggestion:** "Therefore, in linear quadratic versions of the optimal savings problem, there are no precautionary savings."
- Reason: "optimal" is the correct adjective form here

**Section 5.3.2, first line:**
- Current: "Define the transformed state and control variables ˆxt = ω^{t/2} xt, uˆt = ω^{t/2} ut"
- **Note:** Verify hat notation is rendering correctly (appears correct)

## Page 8 (132)

**Equation (5.4.1):**
- The equations appear correct

**Section 5.4, last paragraph:**
- Current: "we shall get a sharp characterization"
- **Note:** This is correct; "shall" is appropriate in formal/academic writing

## Page 9 (133)

**First paragraph:**
- Current: "limtր→ xt = 0"
- Issue: Notation unclear - should be lim_{t→∞}
- **Suggested correction:** "lim_{t→∞} xt = 0"

**Proposition 1:**
- Current: "Proof: If xt ⇐↓ 0"
- Issue: Unclear symbol
- **Suggested correction:** "Proof: If xt ≠ 0" or verify intended meaning

## Page 10 (134)

**Definition of x*₁t:**
- The notation appears consistent

**Footnote 8:**
- Current: "For continuous-time linear system"
- **Suggested correction:** "For continuous-time linear systems"

**Footnote 9:**
- Current: "The conditions under which (A → BF) is stable"
- Issue: Uses arrow instead of minus
- **Suggested correction:** "The conditions under which (A − BF) is stable"

## Page 11 (135)

**Equation (5.6.1):**
- Appears correct

**Footnote 10:**
- Current: "Such formulations are recommended by Chow (1997)"
- **Note:** Verify citation year is 1997 (checking references would confirm)

## Page 12 (136)

**Matrix M definition (5.6.5):**
- Current formatting appears mathematically correct

**Definition of symplectic:**
- Current: "MJM' = J"
- **Note:** Verify prime notation is consistent throughout (it is)

## Page 13 (137)

**Equation (5.6.11):**
- Current: "y*₂t = V 21xt + V 22µt"
- Issue: Spacing in subscripts
- **Suggested correction:** "y*_{2t} = V_{21}x_t + V_{22}μ_t"

**Following text:**
- Current: "Because W22 is an unstable matrix"
- **Note:** Correct

## Page 14 (138)

**Equation discussion:**
- Current: "−[V 22]^{−1} V 21 = V21V^{−1}_{11}"
- **Note:** Verify subscript formatting is consistent

## Page 15 (139)

**Last paragraph:**
- Current: "See chapter 12 for some applications"
- **Note:** Verify chapter 12 exists and covers this topic

## Page 16 (140)

**Equation (5.7.5):**
- Appears correct

**Footnote 14:**
- Current: "Apply the formula (a → bd^{−1}c)^{−1} = a^{−1} + a^{−1}b(d → ca^{−1}b)^{−1}ca^{−1}"
- Issue: Uses arrows instead of minus signs
- **Suggested correction:** "Apply the formula (a − bd^{−1}c)^{−1} = a^{−1} + a^{−1}b(d − ca^{−1}b)^{−1}ca^{−1}"

## Page 17 (141)

**Equation (5.8.1b):**
- Current: "yt = Gxt + vt"
- **Note:** Correct

**Footnote 15:**
- Current: "We derived the Kalman filter as a recursive application of population regression in chapter 2, page 57."
- **Note:** Verify page reference is correct

## Page 18 (142)

**Equation (5.8.4b):**
- Current: "yt = Gxˆt + at"
- **Note:** Hat notation appears correct

**Footnote 16:**
- Current: "Align (A, B, R, Q, F, P) for a dynamic program with (A', G',CC', R, K', Σ)"
- **Note:** Verify this alignment is correct

## Page 19 (143)

**Exercise 5.1:**
- Current: "Here xt is an n × 1 state vector"
- Issue: Uses "×" which might render as "↑" in the document
- **Note:** Verify symbol consistency throughout

## Page 20 (144)

**Exercise 5.3:**
- Current: "Assume that ρ1, ρ2 are such that (1 → ρ1z → ρ2z2) = 0 implies |z| > 1"
- Issue: Uses arrows instead of minus signs
- **Suggested correction:** "Assume that ρ₁, ρ₂ are such that (1 − ρ₁z − ρ₂z²) = 0 implies |z| > 1"

## Page 21 (145)

**Exercise 5.4, part c:**
- Current: "(λ, π, ϕ, θ)=(→1, 1, .95, 1)"
- Issue: Arrow before 1
- **Suggested correction:** "(λ, π, ϕ, θ) = (−1, 1, .95, 1)"

## Page 22 (146)

**Exercise 5.6:**
- Current: "E0" 
- **Note:** Subscript formatting correct

## Page 23 (147)

**Exercise 5.7, part c:**
- Current: "Show that for all of these equilibria except the one that is associated with the minimal p0"
- **Note:** Correct

## Page 24 (148)

**Equation (3):**
- Current: "E∑^∞_{t=0} ωtW(Tt)"
- **Note:** Correct

## Page 25 (149)

**Exercise 5.9:**
- Current: "−.5E0 ∑^∞_{t=0}"
- Issue: Spacing around summation
- **Minor formatting note:** Ensure consistent spacing

## Page 26 (150)

**Exercise 5.10:**
- Current: "yt+1 = µy (1 → ρ1 → ρ2)"
- Issue: Arrows instead of minus signs
- **Suggested correction:** "y_{t+1} = μ_y(1 − ρ₁ − ρ₂)"

## Page 27 (151)

**Exercise 5.12, equation (3):**
- Current: "pt = A0 → A1Yt + ut"
- Issue: Arrow instead of minus
- **Suggested correction:** "p_t = A_0 − A_1Y_t + u_t"

## Page 28 (152)

**Exercise 5.13:**
- Current: "E0 ∑^∞_{t=0} ωt{−.5 (ct → b)^2 − .5εa²_t}"
- Issue: Arrow instead of minus in (ct − b)
- **Suggested correction:** "E_0 ∑^∞_{t=0} ω^t{−.5(c_t − b)² − .5εa²_t}"

## Page 29 (153)

**Exercise 5.14:**
- Current: "yt+1 = (1 → ρ1 → ρ2)"
- Issue: Arrows instead of minus signs
- **Suggested correction:** "y_{t+1} = (1 − ρ₁ − ρ₂)"

## Page 30 (154)

**Exercise 5.15, equation (1):**
- Current: "yt = ∑^∞_{j=0} ωjA'jRxt+j"
- **Note:** Verify the summation and powers are correct

## Page 31 (155)

**Exercise 5.16:**
- Current: "Kt+1 = ϕKt + it−2"
- Issue: Subscript formatting
- **Suggested correction:** "K_{t+1} = ϕK_t + i_{t−2}"

## Page 32 (156)

**Exercise 5.17:**
- Current: "r (xt, ut) = −(x'_tRxt+u'_tQut)"
- Issue: Missing space/operator between terms
- **Suggested correction:** "r(x_t, u_t) = −(x'_tRx_t + u'_tQu_t)"

---

## Summary of Major Issues:

1. **Arrow symbols (→) vs minus signs (−):** Throughout the document, "→" appears to be used instead of "−" in many mathematical expressions. This needs systematic correction.

2. **Infinity symbol:** The symbol "→" is used for infinity in summations instead of "∞"

3. **Subscript/superscript formatting:** Some inconsistencies in how subscripts and superscripts are formatted

4. **Prime notation:** Generally consistent, but verify rendering

5. **Exercise 5.17, equation for r(xt, ut):** Missing addition operator between the two quadratic terms

## Recommendations:

1. Perform a global search-and-replace for mathematical symbols to ensure consistency
2. Verify all equation references point to correct equation numbers
3. Check all chapter and page cross-references
4. Verify all Matlab program names mentioned in footnotes
5. Ensure all matrix dimensions are correctly stated
6. Double-check all parameter restrictions (e.g., ω ∈ (0,1))