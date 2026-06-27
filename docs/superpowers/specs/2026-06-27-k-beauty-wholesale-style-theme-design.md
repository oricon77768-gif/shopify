# K-Beauty Wholesale-Style Shopify Theme Design

## Summary

Build a real Shopify theme for an international Korean beauty store. The theme will be based on Shopify Dawn and customized for a high-order-value shopping experience: regular customers can buy directly, while the storefront strongly encourages larger carts through visible spend-based savings messages.

The theme will reference the product browsing style of Hello Seoul: dense product discovery, broad category navigation, Korean beauty brand/category emphasis, promotion bars, and repeated product sections. It will not copy content or visual assets from the reference site.

## Goals

- Create a production-ready Shopify theme foundation using Dawn as the base.
- Target international customers with English-only storefront copy.
- Present a Korean beauty catalog in a fast, product-forward layout.
- Encourage higher order totals through clear bulk-savings messaging.
- Keep actual discount calculation and application inside Shopify Admin discounts.
- Make the home, collection, product card, and cart surfaces useful for large-cart buying.

## Non-Goals

- Do not implement custom discount logic in Liquid or JavaScript.
- Do not hide prices behind B2B account approval.
- Do not build a custom checkout flow.
- Do not add multilingual support in the first version.
- Do not copy the Hello Seoul theme, images, product data, or brand identity.

## Audience

The primary customer is an international shopper buying Korean skincare, makeup, and beauty products. They may be shopping for personal stock-up orders, friends and family, resale-adjacent needs, or group purchases. They should feel that the store is reliable, easy to browse, and rewarding for larger baskets.

## Theme Direction

The storefront should feel like a polished K-beauty retailer with a wholesale-inspired buying rhythm. The design should be cleaner and more operational than a luxury beauty editorial site: visible categories, compact product cards, clear savings tiers, quick cart actions, and repeated merchandising sections.

The key message is:

> Stock up on Korean beauty and save more.

## Technical Foundation

- Base theme: Shopify Dawn.
- Platform: Shopify Online Store 2.0.
- Language: English only.
- Discount handling: Shopify Admin automatic discounts or discount codes.
- Theme responsibility: display savings tier messaging and encourage larger carts.
- Data source: native Shopify products, collections, menus, and theme settings.

## Home Page Structure

The first version should include:

1. Announcement bar
   - Shipping, worldwide delivery, or spend-and-save campaign messaging.
   - Example: "Spend more, save more on Korean beauty essentials."

2. Header
   - Logo area.
   - Search.
   - Account.
   - Cart.
   - Primary navigation for Shop All, New In, Skincare, Makeup, Sunscreens, Moisturisers, Serums, Brands, and Sale.

3. Hero section
   - Product and offer focused.
   - Message around stocking up and unlocking higher savings.
   - Calls to action for Best Sellers, New Arrivals, and Skincare.

4. Savings tier section
   - Merchant-editable tiers.
   - Example tiers: spend $100, $250, $500, and $1,000.
   - Copy should clarify that discounts are applied according to the store promotion setup.

5. Featured product sections
   - New Arrivals.
   - Best Sellers.
   - Sunscreens.
   - Moisturisers.
   - Serums.
   - Makeup.

6. Category shortcuts
   - Compact cards or tiles for major beauty categories.
   - Designed for fast browsing rather than editorial storytelling.

7. Trust and shipping band
   - Worldwide shipping, authentic Korean products, secure checkout, and customer support.

## Product Card Design

Product cards should prioritize fast comparison and quick buying:

- Product image.
- Optional sale/new/bestseller badge.
- Vendor or brand name.
- Product title.
- Price and compare-at price when available.
- Rating placeholder if a review app is later added.
- Quick add button where Shopify product data supports it.
- Short savings nudge such as "Add more to unlock bigger savings."

Cards should be compact enough for dense catalog browsing but not cramped on mobile.

## Collection Page

Collection pages should support catalog-style browsing:

- Keep Dawn collection filtering and sorting as the base.
- Prioritize filters for availability, price, brand/vendor, product type, and category.
- Use a compact responsive product grid.
- Add a collection-level savings banner near the top.
- Preserve mobile usability with clean filter drawer behavior.

## Product Page

Product pages should remain conversion focused:

- Large product media.
- Clear price and variant selection.
- Quantity selector.
- Add to cart and dynamic checkout buttons.
- Savings-tier reminder near purchase controls.
- Authenticity, shipping, and returns reassurance.
- Related products or complementary products below.

The product page does not calculate or apply discounts. It only communicates that larger orders may unlock better savings according to current store promotions.

## Cart Experience

The cart should encourage higher order totals:

- Show an editable savings tier message.
- Show a next-tier prompt when feasible with theme-side cart total display.
- Avoid promising exact discounts unless the merchant settings match the active Shopify Admin discount campaign.
- Keep checkout path clear and fast.

If exact next-tier calculations become risky or inconsistent with Admin discount rules, use static tier messaging instead.

## Theme Settings

Provide merchant-editable settings where practical:

- Savings headline.
- Savings tier labels and thresholds.
- Announcement text.
- Hero heading, subheading, and calls to action.
- Featured collections for home sections.
- Trust band text.

Settings should stay minimal enough that the theme is easy to configure.

## Error Handling And Edge Cases

- If a featured collection is not selected, the section should show no broken layout.
- If products have no image, use Shopify placeholder behavior.
- If compare-at price is missing, do not show a sale state.
- If a product has variants that prevent quick add, link to the product page instead.
- If discount messaging is disabled, the theme should still function as a normal catalog storefront.

## Testing And Verification

Before implementation is considered complete:

- Run Shopify theme validation where available.
- Preview the theme locally through Shopify CLI.
- Check desktop and mobile layouts.
- Verify home page sections render with and without configured collections.
- Verify product cards do not overflow with long product names.
- Verify cart messaging does not conflict with Shopify Admin discount behavior.
- Verify key flows: search, collection browsing, product page, add to cart, cart, and checkout handoff.

## Implementation Notes

Implementation should start by creating or pulling a Dawn-based theme into the workspace. Custom work should stay scoped to theme sections, snippets, templates, assets, and settings. The first implementation pass should prioritize a usable storefront foundation over advanced app integrations.

