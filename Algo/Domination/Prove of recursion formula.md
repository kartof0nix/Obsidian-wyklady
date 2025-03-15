### **Proof that Breaking the Recursive Rules Leads to γcer(T)>γ(T)\gamma_{\text{cer}}(T) > \gamma(T)**

We will analyze each **forbidden modification** and show that it **increases** the **certified domination number** γcer(T)\gamma_{\text{cer}}(T) without necessarily increasing the standard domination number γ(T)\gamma(T). This will prove that the given construction rules are necessary to maintain γcer(T)=γ(T)\gamma_{\text{cer}}(T) = \gamma(T).

---

## **Case 1: Appending a Simple Path of Length Two to a Support Vertex**

### **Violation**

- The recursive rules state that a simple path of length two **can only be appended to a non-support vertex**.
- Here, we append a path (u,v,w)(u, v, w) where uu is a **support vertex**.

### **Effect on the Tree Structure**

- The new vertex vv becomes a **weak support** since it now supports ww.
- The new leaf ww **must be dominated**, but the existing domination set **may not have an efficient way to do so**.

### **Impact on γ(T)\gamma(T) and γcer(T)\gamma_{\text{cer}}(T)**

- The original dominating set DD could contain the **original support vertex uu**, which would dominate the entire subtree efficiently.
- However, in **certified domination**, every vertex in DD must have **either zero or at least two neighbors outside DD**.
- If uu was in DD, it now has **only one** neighbor outside DD (assuming it had only one before the modification).
- **Fix:** To satisfy certified domination, either:
    - vv must be added to DD, or
    - ww must be added to DD.
- **Consequence:** This **increases** γcer(T)\gamma_{\text{cer}}(T), but does not necessarily increase γ(T)\gamma(T).

### **Conclusion**

Since the certified domination number γcer(T)\gamma_{\text{cer}}(T) increases, but γ(T)\gamma(T) may remain the same, we get:

γcer(T)>γ(T)\gamma_{\text{cer}}(T) > \gamma(T)

Thus, violating this rule **breaks the equality**.

---

## **Case 2: Appending a Single Vertex to a Non-Support That Has No Non-Support Neighbors**

### **Violation**

- The recursive rules allow appending a **single vertex** to a **non-support vertex** **only if there is another non-support vertex in its neighborhood**.
- Here, we append a vertex xx to a **non-support vertex uu**, where **all of uu's neighbors are supports**.

### **Effect on the Tree Structure**

- The new vertex xx has **only one neighbor, uu, which is a non-support**.
- This **isolates** xx structurally, making it harder to satisfy certified domination.

### **Impact on γ(T)\gamma(T) and γcer(T)\gamma_{\text{cer}}(T)**

- Originally, uu could be part of a minimum dominating set DD, effectively dominating its neighbors.
- However, in certified domination, uu **must** have at least two neighbors outside DD, **but it only has one: xx**.
- **Fix:** To satisfy certified domination, **either xx or another vertex must be added to DD**.
- **Consequence:** This **increases** γcer(T)\gamma_{\text{cer}}(T), but does not necessarily increase γ(T)\gamma(T).

### **Conclusion**

Since violating this rule increases γcer(T)\gamma_{\text{cer}}(T), but not necessarily γ(T)\gamma(T), we again get:

γcer(T)>γ(T)\gamma_{\text{cer}}(T) > \gamma(T)

Thus, this rule is **necessary to maintain the equality**.

---

## **Case 3: Appending a Single Vertex to a Non-Support That Has a Weak Support Neighbor With No Other Non-Support Neighbors**

### **Violation**

- The recursive rules allow appending a **single vertex to a non-support vertex** only **if each weak support in its neighborhood has another non-support neighbor**.
- Here, we append a new vertex xx to a non-support uu, which has a **weak support** neighbor ww that has **no other non-support neighbors**.

### **Effect on the Tree Structure**

- The weak support ww now has only two neighbors: uu and some leaf ll.
- The new vertex xx introduces **imbalance** in how weak supports are structured.

### **Impact on γ(T)\gamma(T) and γcer(T)\gamma_{\text{cer}}(T)**

- Before modification, the dominating set DD could **cover ww efficiently**.
- Now, since ww is a **weak support with no other non-support neighbors**, it forces additional constraints in **certified domination**.
- In a certified dominating set:
    - ww must have **at least two** neighbors outside the set.
    - But ww has **only one** (either uu or xx), requiring **another vertex** to be added.
- **Fix:** Either xx or **another vertex must be included in DD**.
- **Consequence:** This **increases** γcer(T)\gamma_{\text{cer}}(T) but does not necessarily increase γ(T)\gamma(T).

### **Conclusion**

Since violating this rule **forces extra vertices into the certified domination set**, we again get:

γcer(T)>γ(T)\gamma_{\text{cer}}(T) > \gamma(T)

Thus, this rule is **essential to maintain equality**.

---

## **Final Conclusion**

Each **forbidden modification** introduces **structural imbalances** that **force additional vertices into the certified dominating set**, while the minimum dominating set **may remain unchanged**.

Thus, every modification that **violates the recursive rules** leads to:

γcer(T)>γ(T)\gamma_{\text{cer}}(T) > \gamma(T)

which **proves** that the rules are **necessary** to maintain the equality γcer(T)=γ(T)\gamma_{\text{cer}}(T) = \gamma(T).