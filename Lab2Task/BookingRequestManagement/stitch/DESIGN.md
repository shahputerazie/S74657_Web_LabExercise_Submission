# Design System Document: Academic Velocity

## 1. Overview & Creative North Star
**The Creative North Star: "The Academic Curator"**
This design system moves away from the "industrial utility" of typical fleet management software and toward a high-end editorial experience. We are not just managing vehicles; we are stewarding university resources. The aesthetic combines the weight and authority of a historic institution with the fluid, glass-like precision of modern aerospace interfaces.

By utilizing **Intentional Asymmetry** and **Tonal Depth**, we break the rigid "admin grid." We treat information as a curated gallery—prioritizing white space, sophisticated layering, and typographic hierarchy to reduce cognitive load for administrators while maintaining a feeling of premium reliability.

---

## 2. Colors & Surface Architecture
Our palette uses deep university navies and slate grays to ground the experience in "Trust," while using light-flooded surfaces to ensure "Modernity."

### The "No-Line" Rule
**Explicit Instruction:** Traditional 1px solid borders (`#CCCCCC`) are strictly prohibited for sectioning content. Boundaries must be defined through:
1.  **Background Color Shifts:** A `surface-container-low` card sitting on a `surface` background.
2.  **Tonal Transitions:** Using subtle variations between `surface-container` tiers to imply edges.

### Surface Hierarchy & Nesting
Treat the UI as a series of physical layers—like stacked sheets of fine stationary or frosted glass. 
- **Base Layer:** `surface` (#f7f9fb)
- **Primary Layout Sections:** `surface-container-low` (#f2f4f6)
- **Interactive Cards/Tables:** `surface-container-lowest` (#ffffff) for maximum "pop" and focus.
- **Persistent Navigation (Sidebar):** `primary-container` (#002147) to provide an authoritative, grounding anchor on the left.

### The "Glass & Gradient" Rule
To elevate "Standard Navy" into something bespoke:
- **Floating Elements:** Use `surface-container-lowest` at 80% opacity with a `20px` backdrop-blur to create a "frosted glass" effect for modals or dropdowns.
- **Signature Textures:** Apply a subtle linear gradient to Primary CTAs: from `primary` (#000a1e) to `surface-tint` (#465f88). This adds "soul" and a sense of movement.

---

## 3. Typography: The Editorial Voice
We use a dual-font strategy to balance character with legibility.

- **The Display/Headline (Manrope):** A geometric sans-serif that feels engineered yet approachable. Use `display-lg` and `headline-md` with generous tracking (-0.02em) to create an authoritative, "Institutional" feel.
- **The Interface/Body (Inter):** The workhorse. Used for `body-md` and `label-sm`. Inter’s high x-height ensures that dense data tables in the vehicle booking system remain highly legible even at small sizes.

**Typographic Hierarchy:**
*   **Headlines:** Always in `on-surface` (#191c1e) to command attention.
*   **Metadata/Labels:** Use `on-surface-variant` (#44474e) to create a clear visual step-down from primary content.

---

## 4. Elevation & Depth
We eschew the "drop shadow" of 2014 in favor of **Tonal Layering**.

- **The Layering Principle:** Depth is achieved by stacking. A `surface-container-lowest` card placed on a `surface-container-high` background creates a natural lift without a single pixel of shadow.
- **Ambient Shadows:** Where a floating effect is required (e.g., a "New Booking" fab), use an extra-diffused shadow: `box-shadow: 0 12px 40px rgba(0, 10, 30, 0.06);`. The shadow color is a tint of our `primary` blue, never pure black.
- **The "Ghost Border":** If a container requires a boundary (e.g., search bars), use `outline-variant` (#c4c6cf) at **15% opacity**. It should be felt, not seen.

---

## 5. Components

### Navigation Sidebar
- **Style:** Use `primary-container` (#002147). 
- **Interaction:** Active states should not use a box; use a "pill" shape (`rounded-full`) in `surface-tint` with 20% opacity and a high-contrast white icon.

### Data Tables (The Vehicle Ledger)
- **Constraint:** **No horizontal or vertical lines.**
- **Implementation:** Use `body-md` for row text. Separate rows using a 4px vertical gap and alternating background colors between `surface-container-lowest` and `surface-container-low`.
- **Header:** Use `label-md` in uppercase with 0.05em letter spacing for an "Editorial Table" look.

### Action Buttons
- **Primary:** Gradient fill (Primary to Surface-Tint), `rounded-md` (0.375rem).
- **Secondary:** Transparent fill with a "Ghost Border" (15% `outline-variant`).
- **Tertiary:** No background; `on-primary-container` text color.

### Status Badges (Vehicle Availability)
- **Style:** Small, `rounded-full` pills.
- **Color Logic:** 
    - *Available:* `secondary-container` text on `surface-container-highest`.
    - *In Use:* `primary-fixed-dim` text on `primary-container`.
    - *Maintenance:* `on-error-container` on `error-container`.

### Input Fields
- **Style:** "Soft Inset." Use `surface-container-highest` background with no border. Upon focus, transition to a `surface-container-lowest` background with a subtle 1px `surface-tint` ghost border.

---

## 6. Do’s and Don’ts

### Do
- **Do** use whitespace as a structural element. If two sections feel cluttered, add 48px of `surface` space rather than a line.
- **Do** use `manrope` for numbers in the dashboard (e.g., "42 Vehicles Available"). The geometric nature of the font makes data feel "designed."
- **Do** utilize `backdrop-blur` on top-navigation bars to keep the user grounded in the "Physical Layers" metaphor.

### Don’t
- **Don’t** use high-contrast pure black (#000000) for text. Always use `on-surface` (#191c1e).
- **Don’t** use sharp 0px corners. This is a university system; it should feel "Professional but Human." Stick to the `md` (0.375rem) or `lg` (0.5rem) roundedness scale.
- **Don’t** use standard "Success Green." Use the `secondary` and `tertiary` palettes for a more sophisticated, "Academic" color harmony that avoids the "Traffic Light" look.