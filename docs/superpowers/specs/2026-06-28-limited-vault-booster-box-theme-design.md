# Limited Vault Booster Box Theme Design

## Goal

Build a Shopify theme direction for Limited Vault, a modern gallery-style storefront focused on sealed TCG booster boxes and display boxes.

The storefront replaces the previous merchandising direction with a category-first sealed box shopping experience.

## Store Positioning

Limited Vault sells sealed booster boxes and display boxes for TCG collectors and players. The first version focuses on:

- Pokemon
- Yu-Gi-Oh!
- Magic
- One Piece

The store should feel calm, curated, and trustworthy. It should present sealed boxes as collectible objects without becoming slow or overly editorial.

## Customer

The primary customer already understands TCG products and wants a reliable place to buy sealed boxes. They care about brand, set name, language or edition, box configuration, price, and stock status.

The store should also be approachable enough for a buyer who knows the game brand but is still choosing between sets.

## Visual Direction

Use a modern gallery style:

- Clean white or near-white backgrounds.
- Strong product imagery with generous spacing.
- Minimal decoration.
- Clear typography.
- Compact product information.
- Restrained accent colors that can work across multiple TCG brands.

## Recommended Approach

Use a Category Gallery Commerce approach.

The homepage should first guide shoppers into the four major categories: Pokemon, Yu-Gi-Oh!, Magic, and One Piece. Each category should look like a curated gallery entry, then lead into product grids where shoppers can quickly add booster boxes to cart.

This approach balances the requested gallery feeling with a fast purchase flow.

## Homepage Structure

1. Hero
   - Brand: Limited Vault.
   - Message: sealed TCG booster boxes and display boxes.
   - Primary action: shop booster boxes.
   - Secondary action: explore categories.

2. Category gallery
   - Four large category tiles:
     - Pokemon
     - Yu-Gi-Oh!
     - Magic
     - One Piece
   - Each tile links to its collection.
   - Tiles should feel visual and browsable, not like dense admin filters.

3. Featured booster boxes
   - A product grid for selected sealed boxes.
   - Product cards emphasize enough information to support quick purchase.

4. New or limited arrivals
   - Optional homepage section for newly added or low-stock boxes.
   - The message should be inventory-focused, not discount-focused.

5. Trust band
   - Authentic sealed products.
   - Secure checkout.
   - Careful packing.
   - Fast support.

## Product Card Requirements

Product cards should support quick purchase from collection and featured grids.

Each card should prioritize:

- Product image.
- Set name.
- TCG brand.
- Language or edition when available.
- Box configuration, such as 24-pack display or booster box.
- Stock state.
- Price.
- Quick add button.

The card should not rely on discount-heavy messaging. Discounts can still appear through standard Shopify price behavior if configured by the merchant.

## Collection Pages

Collection pages should support category-first shopping.

Recommended collections:

- Pokemon Booster Boxes
- Yu-Gi-Oh! Booster Boxes
- Magic Booster Boxes
- One Piece Booster Boxes

Collection pages should retain Shopify filtering and sorting, but the visual weight should remain on the products. Filters should help shoppers narrow by availability, price, product type, vendor, and tags.

## Product Pages

Product pages remain important but are not the primary first-version purchase path.

They should clearly show:

- Product title.
- Price.
- Availability.
- Variant options if used.
- Box contents or configuration.
- Language or edition.
- Shipping and authenticity reassurance.
- Related products from the same category when available.

## Cart

The cart should stay simple and conversion-focused. It should keep checkout actions clear and can use sealed-product reassurance such as secure checkout, careful packing, or shipping notes.

## Data Assumptions

The first implementation can use these default Shopify collection handles:

- `pokemon`
- `yu-gi-oh`
- `magic`
- `one-piece`

If the store later uses different collection handles, merchants can update links through theme settings or template JSON.

Product metadata can initially come from product titles, vendors, product types, tags, variants, and descriptions. Dedicated metafields for language, edition, and box configuration can be added later if needed.

## Error Handling And Empty States

Sections must handle missing collections or empty product lists gracefully.

If a category collection is missing, the theme should still render editable text and avoid broken layout. If a featured product grid has no products, it should show Shopify's standard empty-state behavior or hide the product list cleanly.

## Testing

Implementation should be verified with:

- Theme syntax validation for edited Liquid files when external validation is approved.
- Local JSON syntax checks.
- Local search for removed storefront direction terms after cleanup.
- Desktop and mobile visual checks of homepage, collection page, product page, and cart.
- Quick-add behavior from product grids.
- Empty or missing collection fallback checks where practical.

## Out Of Scope For First Version

- Auction flows.
- Live drop countdowns.
- Inventory reservation systems.
- Grading, serial-number, or single-card marketplace features.
- Custom backend logic.
- Automatic price comparison or market data.

