# Matt's Product Principles

> **Provenance:** The article below is transferred verbatim from Matt's final LinkedIn article, *Matt's Product Principles*. Only this provenance statement was added.

*Six principles I've refined over 10+ years building products in regulated, high-stakes environments: from crisis management software to clinical trial technology*

## #1: No Patient Left Behind

SiteRx's company motto is already "No Patient Left Behind" as a reference to our mission of democratizing access to clinical trials, making sure we always serve every patient possible. But in our technology, this also translates into my #1 principle.

- Never hide a patient that exists in the UI just because someone isn't permissioned to see them. Instead, indicate that the patient exists but they can't access the details.
- Every patient should be findable wherever they are in their journey. No one falls through the cracks into an invisible state.
- No technical limitation should ever stop a patient from advancing. If there's a bug or a sync job that isn't running, that's top priority work, not a backlog item.

This applies more generically, maybe I'll re-write if my work stops being related to patients.

---

## #2: The Screen Should Never Lie

I find myself saying "the screen should never lie" a lot. Or I'll say "no, that means the screen is lying:"

- **Bad data is worse than no data.** If a checkbox can only be "true" or "false" but the "false" state might actually mean "unknown," you have a lying interface. Users make decisions based on what they see. When the screen lies, trust erodes, and the whole system gets questioned.
- **Loading states should show spinners, not "no results" until the result loads.** A user might think the patient doesn't have an MRI (and move on!) when in reality, the chat hasn't loaded yet.
- **Calendar views that can't show all events need overflow indicators.** This has burned me before, and obviously applies more generically too.
- **Fields that aren't being updated should be removed, not left stale.**

If you can't guarantee the data is right, then disclose the limitation in every context where it's showing. But that often has holes, and I try to use as a last resort.

---

## #3: Don't Make The User Think

Borrowed from the classic book *Don't Make Me Think*, by Steve Krug.

- Users shouldn't be afraid to click something because they don't know what it will do. Everything should be self explanatory without other outside context.
- No black boxes: If your queue has a scoring algorithm, surface how it works.
- If your workflow has hidden logic, make it visible.

This reduces mistakes, increases speed, and improves onboarding of new employees/users.

---

## #4: Canonical Everything

Inspired by Naomi Gleit's "Canonical Everything" (mentioned on her Lenny's Podcast appearance).

- One (Canonical) single source of truth. Always.
- Every other artifact and context needs to be able to be found from the single Canonical source.
- If a decision lives in three Slack threads, two Google Docs, and someone's memory, it doesn't really exist.
- This applies to project specs, customer lists, release notes, and especially anything you'll need to reference six months from now. You should always be able to follow the whole reference chain.

Cursor is an incredible tool to ensure that new context gets updated in every place. You can write a Cursor rule for processing new context, and updating it in relevant project places. It's a reason Cursor is my primary working tool (at time of this writing, this space is moving fast).

---

## #5: Titles Should Be Action Words

This sounds trivial until you've searched through hundreds of Jira tickets titled "Login Bug" or "Dashboard."

- Bad: "Slack display name"  
  Good: "Request to correct my Slack display name"
- Bad: "Dialogue box"  
  Good: "Add dialogue box for Physician confirmation flow"

Action-oriented titles force clarity about what's actually being done, reduces mistakes, and makes lists of work more scannable. Maybe all of these items are about reducing cognitive load.

---

## #6: Shared Links Are Not Documentation

A linked Google Sheet in a ticket does not count as documentation. If that employee leaves, the file is modified or deleted, a Slack thread moves, or we change systems, that context is lost.

If information needs to persist, it needs to be captured, not just linked. If you're doing a bulk change on a bunch of patient IDs, paste the actual patient IDs into the ticket. This ensures we don't lose the historical context if that shared sheet goes away, and the ticket would come up in a patient ID search). Lots of ways to address this:

- Just ugly paste the full list into the comments, and say "Google Sheet attached for usability, providing the full list here for documentation"
- Attach a downloaded copy of the .csv, PDF, whatever
- Screenshot the Slack thread AND provide the Slack link, so you see frozen-in-time context, AND can jump into it

Future you (and future auditors) will thank present you.

---

## Bonus: Working With Me

I have one other principle taken from my (spicy) internal ReadMe, and one soapbox:

### Clarity Is Kindness

Unclear feedback delivered warmly still leaves people confused. Clear feedback delivered harshly still moves things forward.

|           | ✅ Clear | ❌ Unclear |
| --------- | :-----: | :-------: |
| **Warm**  | 😊😊😊  |    😞     |
| **Harsh** |   😊    |  😞😞😞   |

If you have to choose between being clear or being warm, choose clear. But the best communicators are both.

Taken from Brené Brown, who has the better quote, but is too long for my daily use: "Clear is Kind. Unclear is Unkind."

### Soapbox: No Hello

Best summarized at [nohello.net](https://nohello.net), please get right to the point of your message.

To send your thoughts as one message: `Shift+Enter` (or Mac `Shift+Return`) will produce line-breaks to deliver it with one ping.

I'm a warm and bubbly person, I love warmth. But we're pushing at effectiveness all day. Add your warm sentiments at the end of the message, all as one ping.
