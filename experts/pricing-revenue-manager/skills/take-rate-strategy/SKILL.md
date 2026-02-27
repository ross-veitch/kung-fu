# Take Rate Strategy

How OTAs, marketplaces, and platforms set, optimise, and defend their take rate — the percentage of transaction value captured as revenue.

---

## What take rate is

Take rate = Net revenue / GMV (Gross Merchandise Value). It's the platform's "cut" of every transaction.

**Benchmarks** (approximate, varies by market and segment):
- **Hotel OTAs**: 15–25% commission (Booking.com ~15–18%, Expedia ~18–22%, Agoda varies by market)
- **Metasearch**: CPC-based (not directly comparable), effective take rate equivalent 2–8%
- **Airline OTAs**: 3–8% (much lower than hotels due to airline bargaining power and NDC pressure)
- **Vacation rentals**: 12–20% (Airbnb charges 3% host + 14% guest in most markets = ~17% effective)
- **Ride-hailing**: 20–30% (Uber ~28%, varies by market)
- **Food delivery**: 25–35% (restaurant commission)
- **General marketplace**: 10–20% (Amazon ~15%, varies by category)

---

## Take rate models

### Commission model (agency)
The platform earns a percentage commission on each booking. The supplier sets the price; the platform adds its commission. This is the dominant model in hotel distribution.

**Pros**: Simple, aligned with supplier (both want higher price × volume).
**Cons**: Rate parity pressure (suppliers want to offer lower prices direct), commission compression from market competition.

### Net rate model (merchant)
The platform buys inventory at wholesale (net) rates and marks up to the consumer. The platform controls the consumer-facing price.

**Pros**: Full pricing control, ability to bundle and package, no rate parity constraint.
**Cons**: Inventory risk (unsold rooms/seats), working capital requirements, FX risk.

### Hybrid models
Most large OTAs operate both: commission for rate-parity markets, net rate for markets where they want pricing flexibility. Booking.com is primarily commission-based; Expedia has historically been more merchant-based.

### CPC / CPA models (metasearch)
Metasearch platforms (Google, Kayak, Trivago) charge on a cost-per-click or cost-per-acquisition basis. The OTA or supplier pays per referral. Effective take rate is lower but the platform carries no booking or payment processing risk.

---

## Take rate optimisation levers

### Price architecture
- **Base commission + performance tiers**: Higher visibility/ranking for suppliers who offer higher commission (Booking.com Preferred Partner program)
- **Ancillary revenue**: Cross-sell insurance, transfers, experiences alongside the core booking. Ancillary has higher margins and doesn't compress the core take rate.
- **Dynamic margin**: Vary the markup in net rate model based on demand elasticity. High-demand periods can support higher margins; low-demand periods need competitive pricing.

### Value-added services
- **Fintech layer**: Payment processing, BNPL (Buy Now Pay Later), currency conversion — each adds 1–3% of additional revenue
- **Advertising / sponsored listings**: Suppliers pay for prominence. Hotel Ads, Sponsored Placements. This is incremental revenue that doesn't affect the consumer price.
- **Data and insights**: Sell market intelligence back to suppliers (RevPAR trends, competitive pricing, demand signals)

### Structural
- **Loyalty programs**: Lock in users to reduce price sensitivity and increase repeat bookings (reducing CAC, improving unit economics even at same take rate)
- **Supply exclusivity**: Exclusive inventory or exclusive rates for a period; reduces competitive pressure
- **Two-sided fees**: Charge both buyer and seller (Airbnb model). Splits the perceived cost; total take rate can be higher because each side sees a smaller number

---

## Take rate pressures

### Compression forces
- **Supplier direct channels**: Airlines and major hotel chains invest heavily in direct booking (Marriott's "Book Direct" campaign, airline websites). This is the structural long-term threat to OTA take rates.
- **Google**: Google Hotel Ads and Google Flights are partially disintermediating OTAs. Google's CPC model undercuts traditional OTA commissions.
- **NDC (New Distribution Capability)**: Airlines using NDC to bypass GDS and reduce distribution costs, putting pressure on OTA airline take rates.
- **Market competition**: In competitive markets, OTAs compete by offering lower commissions to attract supply (price war).

### Defence mechanisms
- **Demand aggregation value**: The OTA's core value prop is demand — traffic the supplier can't generate themselves. Demonstrate ROI: "Our bookings cost you 18%, but your direct CAC is 22%."
- **Technology moats**: Better search/UX, mobile apps, personalisation, loyalty — make the OTA channel genuinely better for the consumer.
- **Market power**: In markets where one OTA dominates demand (Booking.com in Europe), suppliers have limited negotiating leverage.

---

## Measuring take rate health

| Metric | What it tells you |
|--------|-------------------|
| Blended take rate | Overall revenue efficiency (Net Revenue / GMV) |
| Take rate by segment | Where margin comes from (hotels vs flights vs ancillary) |
| Take rate trend (YoY) | Compression or expansion trajectory |
| Contribution margin by channel | After traffic acquisition cost, which channels are profitable? |
| LTV:CAC ratio | Are you acquiring customers who generate enough lifetime margin? |
