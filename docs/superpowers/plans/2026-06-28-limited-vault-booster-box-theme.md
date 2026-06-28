# Limited Vault Booster Box Theme Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a Limited Vault storefront focused on sealed TCG booster boxes and display boxes.

**Architecture:** Keep the Dawn theme foundation and make focused changes to homepage composition, custom sections, product/cart copy, and verification. The implementation uses Limited Vault section names, a category-first homepage, and standard Dawn product cards with quick add.

**Tech Stack:** Shopify Liquid, Shopify JSON templates, Dawn theme section/snippet patterns, PowerShell, ripgrep, local JSON validation, optional Shopify Liquid validation when external disclosure is approved.

---

## File Structure

- Modify: `templates/index.json`
  - Build the Limited Vault homepage with hero, category gallery, featured booster boxes, new/limited arrivals, and sealed-product trust band.
- Create: `sections/lv-category-gallery.liquid`
  - Render four editable TCG category tiles.
- Create: `sections/lv-featured-collection-grid.liquid`
  - Render featured sealed box product grids with Dawn quick add.
- Create: `sections/lv-trust-band.liquid`
  - Render sealed-product trust messages.
- Modify: `sections/main-product.liquid`
  - Keep the product page focused on standard purchase information.
- Modify: `sections/main-cart-footer.liquid`
  - Keep the cart focused on totals and checkout.

## Completed Tasks

- [x] Product and cart promotional reminders were removed from the active theme.
- [x] Limited Vault product grid section was created.
- [x] Limited Vault category gallery section was created.
- [x] Limited Vault trust band section was created.
- [x] Homepage JSON was rebuilt around Limited Vault.
- [x] Previous direction-specific section files were removed from the active theme.
- [x] Previous direction-specific planning documents were removed.

## Verification Plan

- [x] Parse `templates/index.json` with Node.
- [x] Search active theme files for removed direction-specific terms and old section identifiers.
- [ ] Run Shopify Liquid validation if the user explicitly approves external validation that may transmit theme contents.
- [ ] Run a browser visual check when a local theme preview is available.

## Final Local Commands

```powershell
node -e "JSON.parse(require('fs').readFileSync('templates/index.json','utf8')); console.log('templates/index.json OK')"
rg -n "<removed terms pattern>" templates sections snippets assets config
git status --short
git log -5 --oneline
```
