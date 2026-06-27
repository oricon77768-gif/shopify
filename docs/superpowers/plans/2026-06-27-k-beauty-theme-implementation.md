# K-Beauty Theme Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a Dawn-based Shopify theme for an international K-beauty store that encourages larger order totals through editable spend-and-save messaging.

**Architecture:** Start from Shopify Dawn, then add focused theme sections and snippets rather than rewriting core commerce behavior. Shopify Admin handles real discount rules; the theme only displays merchant-editable savings messages on the home, collection/product merchandising surfaces, and cart.

**Tech Stack:** Shopify Dawn, Liquid, JSON templates, CSS in theme assets/sections, Shopify CLI validation where available, Git/GitHub.

---

## File Structure

- Create or import Dawn theme files at repository root: `assets/`, `config/`, `layout/`, `locales/`, `sections/`, `snippets/`, `templates/`.
- Modify `templates/index.json` to arrange the home page.
- Create `sections/ks-savings-tiers.liquid` for editable spend-and-save tiers.
- Create `sections/ks-featured-collection-grid.liquid` for compact product rows on the home page.
- Create `sections/ks-trust-band.liquid` for worldwide shipping/authenticity/support messages.
- Modify or extend product card rendering through Dawn's existing card snippet after inspecting the imported version.
- Modify cart template or cart sections after inspecting Dawn's imported cart files.
- Keep all discount calculation inside Shopify Admin; theme code must not apply discounts.

## Task 1: Import Dawn And Confirm Theme Baseline

**Files:**
- Create: Dawn theme files at repository root.
- Preserve: `docs/superpowers/specs/2026-06-27-k-beauty-wholesale-style-theme-design.md`
- Preserve: `docs/superpowers/plans/2026-06-27-k-beauty-theme-implementation.md`

- [ ] **Step 1: Check repository state**

Run:

```powershell
git status -sb
git remote -v
```

Expected: current branch tracks `origin/master`; only the plan file may be uncommitted.

- [ ] **Step 2: Import Shopify Dawn**

Run one of these based on available tools:

```powershell
git clone https://github.com/Shopify/dawn.git .dawn-source
```

Then copy Dawn theme directories from `.dawn-source` into the repository root:

```powershell
Copy-Item -LiteralPath .dawn-source\assets -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\config -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\layout -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\locales -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\sections -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\snippets -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\templates -Destination . -Recurse
Copy-Item -LiteralPath .dawn-source\package.json -Destination .
Copy-Item -LiteralPath .dawn-source\package-lock.json -Destination .
```

Expected: Shopify theme folders exist at repository root.

- [ ] **Step 3: Remove temporary Dawn checkout**

Run:

```powershell
Remove-Item -LiteralPath .dawn-source -Recurse -Force
```

Expected: `.dawn-source` no longer exists.

- [ ] **Step 4: Commit imported baseline**

Run:

```powershell
git add assets config layout locales sections snippets templates package.json package-lock.json docs/superpowers/plans/2026-06-27-k-beauty-theme-implementation.md
git commit -m "Add Dawn theme baseline"
```

Expected: commit succeeds.

## Task 2: Add Savings Tier Section

**Files:**
- Create: `sections/ks-savings-tiers.liquid`
- Modify: `locales/en.default.schema.json` only if Dawn requires schema translations for section labels.

- [ ] **Step 1: Search Shopify Liquid docs**

Run:

```powershell
node C:\Users\나\.codex\plugins\cache\openai-curated-remote\shopify\2.0.0\skills\shopify-liquid\scripts\search_docs.mjs "section schema blocks" --model gpt-5 --client-name codex --client-version desktop --artifact-id ks-savings-tiers --revision 1
```

Expected: section schema guidance is available.

- [ ] **Step 2: Create `sections/ks-savings-tiers.liquid`**

Create a section with:

- A heading setting.
- A subheading rich text setting.
- Four default tier blocks.
- Block settings for threshold and label.
- Section CSS for a compact responsive grid.
- No discount application logic.

The section should render nothing broken when merchants delete all tier blocks.

- [ ] **Step 3: Validate Liquid**

Run:

```powershell
node C:\Users\나\.codex\plugins\cache\openai-curated-remote\shopify\2.0.0\skills\shopify-liquid\scripts\validate.mjs --theme-path . --files sections/ks-savings-tiers.liquid --model gpt-5 --client-name codex --client-version desktop --artifact-id ks-savings-tiers --revision 1
```

Expected: validation passes.

- [ ] **Step 4: Commit savings section**

Run:

```powershell
git add sections/ks-savings-tiers.liquid
git commit -m "Add savings tier section"
```

Expected: commit succeeds.

## Task 3: Add Home Merchandising Sections

**Files:**
- Create: `sections/ks-featured-collection-grid.liquid`
- Create: `sections/ks-trust-band.liquid`
- Modify: `templates/index.json`

- [ ] **Step 1: Search Shopify Liquid docs**

Run:

```powershell
node C:\Users\나\.codex\plugins\cache\openai-curated-remote\shopify\2.0.0\skills\shopify-liquid\scripts\search_docs.mjs "collection product card section" --model gpt-5 --client-name codex --client-version desktop --artifact-id ks-home-merchandising --revision 1
```

Expected: collection setting and product iteration guidance is available.

- [ ] **Step 2: Create compact featured collection section**

Create `sections/ks-featured-collection-grid.liquid` with:

- Collection picker setting.
- Heading and CTA settings.
- Product limit setting.
- Responsive grid.
- Rendering through Dawn's product card snippet after confirming its name and parameters.
- Empty state text only inside Shopify design mode or a quiet blank state if no collection is selected.

- [ ] **Step 3: Create trust band**

Create `sections/ks-trust-band.liquid` with:

- Three merchant-editable trust items.
- Defaults for worldwide shipping, authentic Korean products, and secure checkout.
- Compact layout that works below product sections.

- [ ] **Step 4: Update home template**

Modify `templates/index.json` so the home page includes:

- Existing Dawn hero or image banner configured for stock-up messaging.
- `ks-savings-tiers`.
- Multiple `ks-featured-collection-grid` sections for New Arrivals, Best Sellers, Sunscreens, Moisturisers, Serums, and Makeup.
- `ks-trust-band`.

- [ ] **Step 5: Validate Liquid and JSON**

Run:

```powershell
node C:\Users\나\.codex\plugins\cache\openai-curated-remote\shopify\2.0.0\skills\shopify-liquid\scripts\validate.mjs --theme-path . --files sections/ks-featured-collection-grid.liquid,sections/ks-trust-band.liquid,templates/index.json --model gpt-5 --client-name codex --client-version desktop --artifact-id ks-home-merchandising --revision 1
```

Expected: validation passes.

- [ ] **Step 6: Commit home merchandising**

Run:

```powershell
git add sections/ks-featured-collection-grid.liquid sections/ks-trust-band.liquid templates/index.json
git commit -m "Add K-beauty home merchandising"
```

Expected: commit succeeds.

## Task 4: Add Product And Cart Savings Messaging

**Files:**
- Modify: Dawn product information section after inspection.
- Modify: Dawn cart items or cart footer section after inspection.

- [ ] **Step 1: Inspect Dawn product and cart files**

Run:

```powershell
rg "main-product|cart-items|cart-footer|cart__" sections snippets templates
```

Expected: exact Dawn files for product and cart surfaces are identified.

- [ ] **Step 2: Search Shopify Liquid docs**

Run:

```powershell
node C:\Users\나\.codex\plugins\cache\openai-curated-remote\shopify\2.0.0\skills\shopify-liquid\scripts\search_docs.mjs "cart total price product section settings" --model gpt-5 --client-name codex --client-version desktop --artifact-id ks-cart-product-messaging --revision 1
```

Expected: cart object and section setting guidance is available.

- [ ] **Step 3: Add product page savings reminder**

Add merchant-editable text near the product purchase controls:

```text
Stock up and unlock bigger savings at checkout.
```

The message must be optional through a section setting.

- [ ] **Step 4: Add cart savings reminder**

Add cart-level text near totals:

```text
Spend more to unlock the next savings tier. Discounts are applied according to current store promotions.
```

The message must not calculate or promise exact discounts unless the theme setting text is changed by the merchant.

- [ ] **Step 5: Validate changed files**

Run the validator with the exact changed file list discovered in Step 1:

```powershell
node C:\Users\나\.codex\plugins\cache\openai-curated-remote\shopify\2.0.0\skills\shopify-liquid\scripts\validate.mjs --theme-path . --files sections/main-product.liquid,sections/main-cart-footer.liquid --model gpt-5 --client-name codex --client-version desktop --artifact-id ks-cart-product-messaging --revision 1
```

Expected: validation passes. If Dawn uses different filenames, replace the file list with the actual modified paths.

- [ ] **Step 6: Commit product and cart messaging**

Run:

```powershell
git add sections/main-product.liquid sections/main-cart-footer.liquid
git commit -m "Add savings messaging to product and cart"
```

Expected: commit succeeds. If Dawn uses different filenames, stage the actual modified paths.

## Task 5: Verify, Push, And Report

**Files:**
- No required file edits unless verification finds issues.

- [ ] **Step 1: Run theme validation**

Run:

```powershell
npm install
npm test
```

Expected: the theme's available checks pass. If dependencies cannot install because network access is unavailable, record that blocker and run any local validation already available.

- [ ] **Step 2: Check git status**

Run:

```powershell
git status -sb
```

Expected: clean working tree.

- [ ] **Step 3: Push to GitHub**

Run:

```powershell
git push
```

Expected: new commits are uploaded to `https://github.com/oricon77768-gif/shopify`.

- [ ] **Step 4: Final report**

Report:

- Theme baseline imported.
- New sections added.
- Product/cart savings messaging added.
- Validation commands and results.
- GitHub push result.

## Self-Review

- Spec coverage: Dawn foundation, English international focus, product-forward home, spend-and-save messaging, no custom discount logic, product cards, collection/home/cart surfaces, and verification are covered.
- Placeholder scan: no `TBD`, `TODO`, or unspecified implementation steps remain.
- Type consistency: section filenames and artifact IDs are consistent; Dawn product/cart filenames must be confirmed after import before modifying them.

