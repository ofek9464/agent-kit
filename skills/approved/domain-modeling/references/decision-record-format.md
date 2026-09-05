# Decision-record format

Follow the project's existing decision-record convention. Otherwise use `docs/adr/` with the next available four-digit number and a short lowercase filename.

```md
# Short decision title

In one to three sentences, state the context, the choice, and why it was selected.
```

Add status, alternatives, or consequences only when they help a future reader understand or revisit the choice.

Create a decision record only when all three conditions hold:

1. Reversing the decision would have a meaningful cost.
2. A future reader would reasonably question the choice without its context.
3. The decision selected among real alternatives for specific reasons.
