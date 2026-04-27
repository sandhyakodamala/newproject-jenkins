<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>Élue | Timeless E‑Commerce with Wishlist</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Syne:wght@500;600;700&display=swap" rel="stylesheet" />

    <!-- Font Awesome 6 (free) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fafafc;
            font-family: 'Inter', sans-serif;
            color: #1a1e2b;
            line-height: 1.45;
            scroll-behavior: smooth;
        }

        /* modern, airy container */
        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* smooth transitions & cards */
        a {
            text-decoration: none;
            color: inherit;
        }

        /* header – clean, glassmorphism */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.88);
            backdrop-filter: blur(14px);
            border-bottom: 1px solid rgba(0, 0, 0, 0.04);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
        }

        .brand {
            font-family: 'Syne', sans-serif;
            font-weight: 700;
            font-size: 1.7rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0B2B40, #1B4F6E);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand span {
            background: none;
            color: #2C7DA0;
            -webkit-background-clip: unset;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .nav-links a {
            font-weight: 500;
            font-size: 0.95rem;
            transition: all 0.2s ease;
            color: #2c3a40;
        }

        .nav-links a:hover {
            color: #2C7DA0;
        }

        /* search bar - refined */
        .search-wrapper {
            display: flex;
            align-items: center;
            background: #ffffff;
            border-radius: 60px;
            padding: 0 16px;
            gap: 10px;
            border: 1px solid #e2e8f0;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.02);
            transition: all 0.2s;
        }

        .search-wrapper:focus-within {
            border-color: #2C7DA0;
            box-shadow: 0 0 0 3px rgba(44, 125, 160, 0.1);
        }

        .search-wrapper input {
            border: none;
            background: transparent;
            padding: 12px 0;
            font-size: 0.9rem;
            width: 200px;
            outline: none;
        }

        .search-wrapper button {
            background: none;
            border: none;
            cursor: pointer;
            color: #6b7280;
            font-size: 1rem;
        }

        .header-actions {
            display: flex;
            gap: 18px;
            align-items: center;
        }

        .icon-btn {
            font-size: 1.25rem;
            color: #2d3e45;
            transition: color 0.2s;
            cursor: pointer;
            background: none;
            border: none;
            position: relative;
        }

        .cart {
            position: relative;
            display: flex;
        }

        .cart-count, .wishlist-count-badge {
            position: absolute;
            top: -8px;
            right: -12px;
            background: #2C7DA0;
            color: white;
            font-size: 0.7rem;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .wishlist-count-badge {
            right: -10px;
            top: -8px;
            background: #c2410c;
        }

        /* mobile menu toggle */
        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* hero – minimal but expressive */
        .hero {
            background: linear-gradient(112deg, #EFF6FA 0%, #FFFFFF 100%);
            margin-top: 0;
            padding: 64px 0;
            border-radius: 0 0 32px 32px;
        }

        .hero-content {
            max-width: 700px;
        }

        .hero h1 {
            font-family: 'Syne', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            line-height: 1.2;
            background: linear-gradient(135deg, #1B4F6E, #2C7DA0);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .hero p {
            font-size: 1.1rem;
            color: #334e68;
            margin: 1.2rem 0 2rem;
        }

        .btn-group {
            display: flex;
            gap: 1rem;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.9rem;
            transition: all 0.2s;
            cursor: pointer;
            border: none;
        }

        .btn-primary {
            background: #1d5e7c;
            color: white;
            box-shadow: 0 2px 8px rgba(29, 94, 124, 0.2);
        }

        .btn-primary:hover {
            background: #0f485f;
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid #cbd5e1;
            color: #2d3e45;
        }

        .btn-outline:hover {
            border-color: #2C7DA0;
            background: #f1f9ff;
        }

        /* section style */
        .section {
            padding: 64px 0;
        }

        .section-title {
            font-family: 'Syne', sans-serif;
            font-size: 1.9rem;
            font-weight: 600;
            letter-spacing: -0.01em;
            margin-bottom: 12px;
        }

        .section-sub {
            color: #5c6f87;
            margin-bottom: 40px;
        }

        /* categories grid */
        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }

        .cat-card {
            background: white;
            border-radius: 28px;
            padding: 28px 12px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
            border: 1px solid #edf2f7;
            transition: all 0.2s ease;
            cursor: pointer;
        }

        .cat-card:hover {
            transform: translateY(-5px);
            border-color: #cbdde9;
            box-shadow: 0 20px 30px -12px rgba(0, 0, 0, 0.05);
        }

        .cat-icon {
            font-size: 2.4rem;
            color: #2C7DA0;
            margin-bottom: 12px;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 32px;
        }

        .product-card {
            background: white;
            border-radius: 28px;
            overflow: hidden;
            transition: all 0.25s ease;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.02);
            border: 1px solid #ecf3f9;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 24px 40px -12px rgba(0, 0, 0, 0.1);
            border-color: #dee9f0;
        }

        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            background: #f4f9fe;
        }

        .product-info {
            padding: 18px 16px 16px;
        }

        .product-title {
            font-weight: 600;
            font-size: 1rem;
        }

        .product-cat {
            font-size: 0.75rem;
            color: #6c86a3;
            margin-top: 4px;
            text-transform: capitalize;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            margin: 12px 0 8px;
        }

        .current-price {
            font-weight: 700;
            font-size: 1.2rem;
            color: #1a3e50;
        }

        .old-price {
            font-size: 0.8rem;
            text-decoration: line-through;
            color: #9aaebf;
        }

        .rating {
            font-size: 0.8rem;
            color: #f4b942;
        }

        .product-actions {
            display: flex;
            gap: 12px;
            padding: 4px 16px 18px;
        }

        .add-cart {
            flex: 1;
            background: #f1f6fa;
            border: none;
            padding: 10px 0;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.8rem;
            cursor: pointer;
            transition: 0.2s;
            color: #1f5e7c;
        }

        .add-cart:hover {
            background: #e3edf4;
        }

        .wishlist-btn {
            background: transparent;
            border: 1px solid #e2edf2;
            border-radius: 40px;
            width: 40px;
            cursor: pointer;
            transition: all 0.2s;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 1rem;
            color: #8ba0b0;
        }

        .wishlist-btn.active {
            color: #e11d48;
            border-color: #ffdce5;
            background: #fff0f3;
        }

        .wishlist-btn:hover {
            border-color: #cbd5e1;
            transform: scale(1.02);
        }

        /* Wishlist panel */
        .wishlist-panel {
            position: fixed;
            top: 0;
            right: -380px;
            width: 360px;
            height: 100vh;
            background: white;
            box-shadow: -8px 0 30px rgba(0, 0, 0, 0.1);
            z-index: 200;
            transition: right 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            display: flex;
            flex-direction: column;
            border-left: 1px solid #eef2f5;
        }

        .wishlist-panel.open {
            right: 0;
        }

        .wishlist-header {
            padding: 24px;
            border-bottom: 1px solid #ecf3f8;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .wishlist-items {
            flex: 1;
            overflow-y: auto;
            padding: 16px;
        }

        .wishlist-item {
            display: flex;
            gap: 14px;
            align-items: center;
            padding: 12px;
            border-bottom: 1px solid #f0f4f9;
        }

        .wishlist-item img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 16px;
        }

        .wishlist-item-info {
            flex: 1;
        }

        .remove-wish {
            background: none;
            border: none;
            cursor: pointer;
            color: #b91c1c;
            font-size: 1rem;
        }

        .empty-wish {
            text-align: center;
            padding: 32px;
            color: #8499b4;
        }

        /* Deal section */
        .deal-card {
            display: flex;
            flex-wrap: wrap;
            background: #ffffff;
            border-radius: 40px;
            overflow: hidden;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.03);
            border: 1px solid #ebf2f8;
        }

        .deal-img {
            flex: 1.2;
            min-width: 240px;
            height: 320px;
            object-fit: cover;
        }

        .deal-content {
            flex: 1;
            padding: 36px 32px;
        }

        .timer {
            display: flex;
            gap: 16px;
            margin: 24px 0;
        }

        .time-box {
            background: #ecf5f9;
            border-radius: 24px;
            padding: 12px 0;
            text-align: center;
            min-width: 70px;
        }

        .time-number {
            font-size: 1.8rem;
            font-weight: 700;
            color: #1f5e7c;
        }

        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding-bottom: 12px;
        }

        .testimonial-card {
            min-width: 300px;
            background: white;
            border-radius: 28px;
            padding: 24px;
            border: 1px solid #eef3fa;
        }

        .newsletter {
            background: linear-gradient(115deg, #EFF6FA, #FFFFFF);
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            border: 1px solid #e6f0f5;
        }

        .newsletter input {
            padding: 14px 18px;
            border-radius: 80px;
            border: 1px solid #cfdfea;
            width: 280px;
            margin-right: 12px;
            outline: none;
        }

        footer {
            border-top: 1px solid #eef2f5;
            padding: 48px 0 32px;
            color: #4c5d72;
        }

        @media (max-width: 900px) {
            .nav-links { display: none; }
            .mobile-toggle { display: block; }
            .search-wrapper input { width: 140px; }
            .hero h1 { font-size: 2.2rem; }
            .wishlist-panel { width: 100%; right: -100%; }
        }
        @media (max-width: 600px) {
            .container { padding: 0 20px; }
            .deal-content { padding: 24px; }
            .newsletter input { width: 100%; margin-bottom: 12px; }
        }
        .badge-new {
            background: #2C7DA0;
            color: white;
            font-size: 0.7rem;
            border-radius: 60px;
            padding: 4px 12px;
            display: inline-block;
        }
    </style>
</head>

<body>

    <header>
        <div class="container header-inner">
            <div style="display: flex; align-items: center; gap: 14px;">
                <button class="mobile-toggle" id="mobileMenuBtn" aria-label="Menu"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">ÉLUE<span>.</span></a>
            </div>

            <div class="nav-links" id="desktopNav">
                <a href="#">Home</a>
                <a href="#" id="catScrollBtn">Categories</a>
                <a href="#dealsSection">Deals</a>
                <a href="#">Studio</a>
            </div>

            <div style="display: flex; gap: 16px; align-items: center;">
                <div class="search-wrapper">
                    <input type="text" id="globalSearch" placeholder="Search products...">
                    <button id="searchTrigger"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions">
                    <button class="icon-btn" id="openWishlistBtn" title="My Wishlist">
                        <i class="far fa-heart"></i>
                        <span class="wishlist-count-badge" id="wishlistCounter">0</span>
                    </button>
                    <div class="cart">
                        <i class="fas fa-bag-shopping icon-btn"></i>
                        <span class="cart-count" id="cartCounter">0</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Mobile menu panel -->
        <div id="mobilePanel" style="display: none; background: white; border-top: 1px solid #eef2f8; padding: 20px 28px;">
            <div style="display: flex; flex-direction: column; gap: 16px;">
                <a href="#">Home</a>
                <a href="#" id="mobileCatLink">Categories</a>
                <a href="#dealsSection">Deals</a>
                <a href="#" id="mobileWishlistLink">Wishlist</a>
            </div>
        </div>
    </header>

    <!-- Wishlist Sidebar -->
    <div class="wishlist-panel" id="wishlistSidebar">
        <div class="wishlist-header">
            <h3 style="font-family: Syne;"><i class="far fa-heart"></i> My Wishlist</h3>
            <button id="closeWishlistBtn" style="background: none; border: none; font-size: 1.4rem; cursor: pointer;">&times;</button>
        </div>
        <div class="wishlist-items" id="wishlistItemsContainer">
            <div class="empty-wish">✨ Your wishlist is empty. <br> Add items you love!</div>
        </div>
    </div>

    <main>
        <!-- Hero -->
        <section class="hero">
            <div class="container hero-content">
                <h1>Where elegance<br>meets everyday.</h1>
                <p>Discover timeless designs, curated quality, and exclusive drops — heart your favorites.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopNowHero">Shop collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-outline" id="exploreDealsHero">Flash sale</button>
                </div>
            </div>
        </section>

        <!-- Categories -->
        <section class="container section" id="categoriesSection">
            <div>
                <h2 class="section-title">Shop by universe</h2>
                <p class="section-sub">Explore curated categories built for modern living</p>
            </div>
            <div class="categories-grid" id="categoriesGrid"></div>
        </section>

        <!-- Products grid -->
        <section class="container section">
            <div style="display: flex; justify-content: space-between; align-items: baseline; flex-wrap: wrap;">
                <div>
                    <h2 class="section-title">Essential picks</h2>
                    <p class="section-sub">Trending & most loved this week</p>
                </div>
                <span class="badge-new" style="background: #Eef2f8; color:#2C7DA0;">✦ new arrivals</span>
            </div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <!-- Flash Sale -->
        <section id="dealsSection" class="container section">
            <div>
                <h2 class="section-title">Flash sale ⚡</h2>
                <p class="section-sub">Limited time — up to 25% off select gear</p>
            </div>
            <div class="deal-card">
                <img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook M2">
                <div class="deal-content">
                    <h3 style="font-size: 1.8rem; font-weight: 600;">MacBook Air M2</h3>
                    <p style="color:#486677;">Supercharged. Ultraportable. Now at an irresistible price.</p>
                    <div class="timer" id="timerRoot">
                        <div class="time-box"><div class="time-number" id="dealDays">0</div><span style="font-size:12px;">Days</span></div>
                        <div class="time-box"><div class="time-number" id="dealHours">00</div><span>Hrs</span></div>
                        <div class="time-box"><div class="time-number" id="dealMinutes">00</div><span>Min</span></div>
                        <div class="time-box"><div class="time-number" id="dealSeconds">00</div><span>Sec</span></div>
                    </div>
                    <div style="display: flex; gap: 16px; align-items: center; margin: 20px 0;">
                        <div><span class="current-price" style="font-size: 2rem;">$999</span> <span class="old-price">$1,199</span></div>
                        <div style="background: #ffecd6; border-radius: 40px; padding: 6px 14px; font-weight: 600; color:#c26b1a;">-17% OFF</div>
                    </div>
                    <button class="btn btn-primary" id="flashDealBtn">Add to bag <i class="fas fa-bag-shopping"></i></button>
                </div>
            </div>
        </section>

        <!-- Testimonials -->
        <section class="container section">
            <h2 class="section-title">Voices we adore</h2>
            <p class="section-sub">Trusted by design lovers & early adopters</p>
            <div class="testimonials" id="testimonialsList"></div>
        </section>

        <!-- Newsletter -->
        <section class="container section">
            <div class="newsletter">
                <i class="fas fa-envelope-open-text" style="font-size: 2rem; color:#2C7DA0; margin-bottom: 16px; display: inline-block;"></i>
                <h3 style="font-family: 'Syne'; font-size: 1.7rem;">Join the inner circle</h3>
                <p style="margin-bottom: 20px;">First access to drops & secret sales — no spam, just beauty.</p>
                <form id="newsletterForm" style="display: flex; flex-wrap: wrap; justify-content: center; gap: 8px;">
                    <input type="email" id="subEmail" placeholder="Your email address" required>
                    <button class="btn btn-primary" type="submit">Subscribe →</button>
                </form>
                <div id="newsMsg" style="margin-top: 16px; font-size: 0.85rem;"></div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 24px;">
            <div><strong style="font-family: Syne;">ÉLUE</strong><p style="margin-top: 8px; max-width: 260px;">Minimalist e‑commerce experience crafted with care.</p></div>
            <div style="display: flex; gap: 48px;">
                <div>Explore<br>About<br>Journal</div>
                <div>Support<br>Returns<br>Contact</div>
            </div>
        </div>
        <div class="container" style="text-align: center; margin-top: 32px; font-size: 0.8rem;">© <span id="currentYear"></span> ÉLUE — timeless commerce</div>
    </footer>

    <script>
        // ----- DATA -----
        const CATEGORIES = [
            { id: 'audio', name: 'Audio', icon: 'fas fa-headphones' },
            { id: 'wearables', name: 'Wearables', icon: 'fas fa-clock' },
            { id: 'laptops', name: 'Laptops', icon: 'fas fa-laptop' },
            { id: 'fashion', name: 'Fashion', icon: 'fas fa-tshirt' },
            { id: 'cameras', name: 'Cameras', icon: 'fas fa-camera' },
            { id: 'accessories', name: 'Accessories', icon: 'fas fa-gem' }
        ];

        const PRODUCTS = [
            { id: 101, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 4.9, reviews: 234, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'wearables', badge: 'just dropped' },
            { id: 102, title: 'Sony WH-1000XM5', price: 399, oldPrice: 499, rating: 4.8, reviews: 412, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio', badge: null },
            { id: 103, title: 'Dyson V15 Detect', price: 699, oldPrice: 799, rating: 4.7, reviews: 89, img: 'https://images.unsplash.com/photo-1558317374-067fb5f30001?auto=format&fit=crop&w=600&q=80', category: 'accessories', badge: 'staff pick' },
            { id: 104, title: 'Mackie Studio Monitors', price: 249, rating: 4.9, reviews: 62, img: 'https://images.unsplash.com/photo-1563330232-57114bb0823c?auto=format&fit=crop&w=600&q=80', category: 'audio', oldPrice: null },
            { id: 105, title: 'Nordic Wool Sweater', price: 129, oldPrice: 189, rating: 4.6, reviews: 178, img: 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&w=600&q=80', category: 'fashion', badge: 'cozy' },
            { id: 106, title: 'Fujifilm X-T5', price: 1699, oldPrice: 1899, rating: 5, reviews: 44, img: 'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80', category: 'cameras', badge: 'hot' }
        ];

        // Wishlist & Cart state
        let wishlistIds = new Set(); 
        let cartItemsCount = 0;

        // DOM elements
        const cartCounterSpan = document.getElementById('cartCounter');
        const wishlistCounterSpan = document.getElementById('wishlistCounter');
        const productsContainer = document.getElementById('productsGrid');
        const categoriesContainer = document.getElementById('categoriesGrid');
        const wishlistSidebar = document.getElementById('wishlistSidebar');
        const wishlistItemsContainer = document.getElementById('wishlistItemsContainer');

        // Helper: update all wishlist UI (counters, buttons state, sidebar)
        function updateWishlistUI() {
            wishlistCounterSpan.innerText = wishlistIds.size;
            // update each product's heart button active state
            document.querySelectorAll('.wishlist-btn').forEach(btn => {
                const pid = parseInt(btn.getAttribute('data-pid'));
                if (wishlistIds.has(pid)) {
                    btn.classList.add('active');
                    btn.innerHTML = '<i class="fas fa-heart"></i>';
                } else {
                    btn.classList.remove('active');
                    btn.innerHTML = '<i class="far fa-heart"></i>';
                }
            });
            renderWishlistSidebar();
        }

        function renderWishlistSidebar() {
            const wishlistProducts = PRODUCTS.filter(p => wishlistIds.has(p.id));
            if (wishlistProducts.length === 0) {
                wishlistItemsContainer.innerHTML = '<div class="empty-wish">🤍 Your wishlist is empty. <br> Add items you love!</div>';
                return;
            }
            wishlistItemsContainer.innerHTML = wishlistProducts.map(p => `
                <div class="wishlist-item" data-wishid="${p.id}">
                    <img src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="wishlist-item-info">
                        <div style="font-weight:600;">${escapeHtml(p.title)}</div>
                        <div class="current-price" style="font-size:0.9rem;">$${p.price}</div>
                    </div>
                    <button class="remove-wish" data-removeid="${p.id}" aria-label="Remove"><i class="fas fa-trash-alt"></i></button>
                </div>
            `).join('');
            document.querySelectorAll('.remove-wish').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.getAttribute('data-removeid'));
                    wishlistIds.delete(id);
                    updateWishlistUI();
                });
            });
        }

        function addToWishlist(productId) {
            if (wishlistIds.has(productId)) {
                wishlistIds.delete(productId);
            } else {
                wishlistIds.add(productId);
            }
            updateWishlistUI();
        }

        function toggleWishlistFromButton(pid) {
            addToWishlist(pid);
        }

        // Cart logic
        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (product) {
                cartItemsCount++;
                cartCounterSpan.innerText = cartItemsCount;
                const btn = document.querySelector(`.add-cart[data-pid="${productId}"]`);
                if (btn) {
                    const original = btn.innerHTML;
                    btn.innerHTML = '✓ Added';
                    setTimeout(() => { btn.innerHTML = original; }, 1000);
                }
            }
        }

        // Render products
        function renderProducts(filteredArray = PRODUCTS) {
            productsContainer.innerHTML = '';
            filteredArray.forEach(p => {
                const stars = '★'.repeat(Math.floor(p.rating)) + (p.rating % 1 >= 0.5 ? '½' : '');
                const oldPriceHtml = p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : '';
                const badgeHtml = p.badge ? `<span style="background:#eef2f8; font-size:0.7rem; padding:3px 12px; border-radius:20px;">${p.badge}</span>` : '';
                const isWishlisted = wishlistIds.has(p.id);
                const heartIcon = isWishlisted ? '<i class="fas fa-heart"></i>' : '<i class="far fa-heart"></i>';
                const activeClass = isWishlisted ? 'active' : '';
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-info">
                        <div style="display:flex; justify-content:space-between;"><div class="product-title">${escapeHtml(p.title)}</div>${badgeHtml}</div>
                        <div class="product-cat">${p.category}</div>
                        <div class="price-row">
                            <div><span class="current-price">$${p.price}</span> ${oldPriceHtml}</div>
                            <div class="rating">${stars} <span style="color:#8ba0b0;">(${p.reviews})</span></div>
                        </div>
                    </div>
                    <div class="product-actions">
                        <button class="add-cart" data-pid="${p.id}"><i class="fas fa-bag-shopping"></i>  Add to cart</button>
                        <button class="wishlist-btn ${activeClass}" data-pid="${p.id}" aria-label="wishlist">${heartIcon}</button>
                    </div>
                `;
                productsContainer.appendChild(card);
            });
            // attach event listeners after render
            document.querySelectorAll('.add-cart').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    const id = parseInt(btn.getAttribute('data-pid'));
                    addToCart(id);
                });
            });
            document.querySelectorAll('.wishlist-btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.stopPropagation();
                    const pid = parseInt(btn.getAttribute('data-pid'));
                    toggleWishlistFromButton(pid);
                });
            });
        }

        function renderCategories() {
            categoriesContainer.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const el = document.createElement('div');
                el.className = 'cat-card';
                el.innerHTML = `<div class="cat-icon"><i class="${cat.icon}"></i></div><h4 style="font-weight:500;">${cat.name}</h4><p style="font-size:12px; margin-top:6px; color:#6c86a3;">shop now →</p>`;
                el.addEventListener('click', () => {
                    const searchField = document.getElementById('globalSearch');
                    searchField.value = cat.name;
                    filterProductByQuery(cat.name);
                    document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth', block: 'start' });
                });
                categoriesContainer.appendChild(el);
            });
        }

        function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){ if(m === '&') return '&amp;'; if(m === '<') return '&lt;'; if(m === '>') return '&gt;'; return m; }); }

        function filterProductByQuery(query) {
            const q = query.trim().toLowerCase();
            if (!q) { renderProducts(PRODUCTS); return; }
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }

        // testimonials
        const testimonialsData = [
            { name: "Sophia Carter", text: "The clean UI and fast delivery blew my mind. Coming back for more.", stars: 5 },
            { name: "James Wu", text: "Minimal, intuitive and great product curation. Love the flash deals!", stars: 5 },
            { name: "Elena Rossi", text: "Finally a modern store that feels premium and welcoming.", stars: 4 }
        ];
        function renderTestimonials() {
            const container = document.getElementById('testimonialsList');
            if (container) {
                container.innerHTML = testimonialsData.map(t => `
                    <div class="testimonial-card">
                        <div class="rating" style="margin-bottom:12px;">${'★'.repeat(t.stars)}</div>
                        <p style="font-style:normal;">“${t.text}”</p>
                        <div style="margin-top:16px; font-weight:600;">${t.name}</div>
                    </div>
                `).join('');
            }
        }

        // Countdown
        function initDealTimer() {
            const targetDate = new Date();
            targetDate.setDate(targetDate.getDate() + 1);
            targetDate.setHours(23, 59, 0, 0);
            function tick() {
                const diff = targetDate - new Date();
                if (diff <= 0) { 
                    document.getElementById('dealDays').innerText = 0; document.getElementById('dealHours').innerText = "00";
                    document.getElementById('dealMinutes').innerText = "00"; document.getElementById('dealSeconds').innerText = "00";
                    return;
                }
                const days = Math.floor(diff / (1000*3600*24));
                const hours = Math.floor((diff % (86400000)) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById('dealDays').innerText = days;
                document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
                document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
                document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
            }
            tick(); setInterval(tick, 1000);
        }

        // Event bindings
        document.getElementById('openWishlistBtn')?.addEventListener('click', () => wishlistSidebar.classList.add('open'));
        document.getElementById('closeWishlistBtn')?.addEventListener('click', () => wishlistSidebar.classList.remove('open'));
        document.getElementById('mobileWishlistLink')?.addEventListener('click', (e) => {
            e.preventDefault();
            wishlistSidebar.classList.add('open');
            document.getElementById('mobilePanel').style.display = 'none';
        });
        document.getElementById('mobileMenuBtn')?.addEventListener('click', () => {
            const panel = document.getElementById('mobilePanel');
            panel.style.display = panel.style.display === 'none' ? 'flex' : 'none';
        });
        document.getElementById('searchTrigger')?.addEventListener('click', () => filterProductByQuery(document.getElementById('globalSearch').value));
        document.getElementById('globalSearch')?.addEventListener('keypress', (e) => { if(e.key === 'Enter') filterProductByQuery(e.target.value); });
        document.getElementById('shopNowHero')?.addEventListener('click', () => document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('exploreDealsHero')?.addEventListener('click', () => document.getElementById('dealsSection').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('flashDealBtn')?.addEventListener('click', () => { cartItemsCount++; cartCounterSpan.innerText = cartItemsCount; alert('MacBook Air added to cart (demo)'); });
        document.getElementById('newsletterForm')?.addEventListener('submit', (e) => {
            e.preventDefault();
            const emailInput = document.getElementById('subEmail');
            const msgDiv = document.getElementById('newsMsg');
            if(emailInput.value.includes('@') && emailInput.value.includes('.')) {
                msgDiv.innerHTML = '✨ Thanks! You’re now on the list.';
                msgDiv.style.color = '#2C7DA0';
                emailInput.value = '';
                setTimeout(() => msgDiv.innerHTML = '', 2500);
            } else { msgDiv.innerHTML = 'Please enter a valid email.'; msgDiv.style.color = '#c2410c'; }
        });
        document.getElementById('catScrollBtn')?.addEventListener('click', (e) => { e.preventDefault(); document.getElementById('categoriesSection').scrollIntoView({ behavior: 'smooth' }); });
        document.getElementById('mobileCatLink')?.addEventListener('click', (e) => { e.preventDefault(); document.getElementById('categoriesSection').scrollIntoView({ behavior: 'smooth' }); document.getElementById('mobilePanel').style.display = 'none'; });
        document.getElementById('currentYear').innerText = new Date().getFullYear();

        // Initialization
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        initDealTimer();
        updateWishlistUI();
        cartCounterSpan.innerText = 0;
    </script>
</body>

</html>
