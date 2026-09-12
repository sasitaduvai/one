<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta name="theme-color" content="#0b0d12" />
    <title>NexusShop — Curated Storefront</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Manrope:wght@500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        :root{
            --ink:#0b0d12;
            --ink-2:#171a22;
            --paper:#f5f3ee;
            --card:#fffdf9;
            --line:#dedbd3;
            --muted:#74736d;
            --soft:#ebe8df;
            --lime:#d8ff52;
            --violet:#8c7cff;
            --orange:#ff7357;
            --white:#ffffff;
            --radius:22px;
            --radius-sm:14px;
            --container:1320px;
            --ease:cubic-bezier(.2,.75,.25,1);
            --shadow:0 16px 50px rgba(11,13,18,.08);
        }

        *{box-sizing:border-box;margin:0;padding:0}
        html{scroll-behavior:smooth}
        body{
            font-family:"DM Sans",system-ui,sans-serif;
            color:var(--ink);
            background:var(--paper);
            line-height:1.5;
            -webkit-font-smoothing:antialiased;
        }
        a{color:inherit;text-decoration:none}
        button,input{font:inherit}
        button{border:0;cursor:pointer}
        img{display:block;max-width:100%}
        .container{width:min(var(--container),calc(100% - 40px));margin:auto}
        .sr-only{
            position:absolute;width:1px;height:1px;padding:0;margin:-1px;
            overflow:hidden;clip:rect(0,0,0,0);white-space:nowrap;border:0
        }

        /* ===== TOP BAR ===== */
        .announcement{
            background:var(--lime);
            color:var(--ink);
            min-height:34px;
            display:flex;
            align-items:center;
            justify-content:center;
            padding:7px 16px;
            font-size:12px;
            font-weight:800;
            letter-spacing:.12em;
            text-transform:uppercase;
        }
        .announcement span{opacity:.72;margin-left:8px}

        /* ===== HEADER ===== */
        .site-header{
            position:sticky;top:0;z-index:100;
            background:rgba(245,243,238,.93);
            backdrop-filter:blur(18px);
            border-bottom:1px solid var(--line);
        }
        .header-row{
            min-height:78px;
            display:grid;
            grid-template-columns:auto 1fr auto;
            gap:28px;
            align-items:center;
        }
        .brand{
            display:flex;align-items:center;gap:11px;
            font-family:Manrope,sans-serif;
            font-weight:800;font-size:22px;letter-spacing:-.06em;
        }
        .brand-mark{
            width:38px;height:38px;border-radius:11px;
            background:var(--ink);color:var(--lime);
            display:grid;place-items:center;font-size:17px;
            transform:rotate(-6deg);
        }
        .brand em{font-style:normal;color:var(--violet)}
        .desktop-nav{display:flex;justify-content:center}
        .desktop-nav ul{display:flex;gap:5px;list-style:none}
        .desktop-nav a{
            display:block;padding:9px 13px;border-radius:10px;
            color:var(--muted);font-size:13px;font-weight:700;
            transition:.2s var(--ease)
        }
        .desktop-nav a:hover,.desktop-nav a.active{background:var(--ink);color:var(--white)}
        .header-tools{display:flex;align-items:center;gap:8px}
        .search{
            width:210px;height:42px;border:1px solid var(--line);
            border-radius:12px;background:var(--card);
            display:flex;align-items:center;padding:0 12px;gap:8px;
            transition:.2s var(--ease)
        }
        .search:focus-within{border-color:var(--ink);box-shadow:0 0 0 4px rgba(11,13,18,.06)}
        .search i{color:var(--muted);font-size:13px}
        .search input{width:100%;border:0;outline:0;background:transparent;font-size:13px}
        .tool{
            width:42px;height:42px;border-radius:12px;background:transparent;
            display:grid;place-items:center;color:var(--ink);position:relative;
            transition:.2s var(--ease)
        }
        .tool:hover{background:var(--soft)}
        .count{
            position:absolute;top:-3px;right:-3px;width:18px;height:18px;
            border-radius:50%;background:var(--orange);color:#fff;
            border:2px solid var(--paper);display:grid;place-items:center;
            font-size:9px;font-weight:800;transition:.2s var(--ease)
        }
        .mobile-toggle{display:none}

        /* ===== HERO ===== */
        .hero{
            padding:28px 0 0;
        }
        .hero-shell{
            min-height:610px;border-radius:30px;overflow:hidden;
            background:var(--ink);color:#fff;
            position:relative;display:grid;grid-template-columns:1.05fr .95fr;
        }
        .hero-copy{
            padding:74px 70px;position:relative;z-index:2;
            display:flex;flex-direction:column;justify-content:center
        }
        .eyebrow{
            display:inline-flex;align-items:center;gap:8px;
            width:max-content;padding:7px 11px;border:1px solid rgba(255,255,255,.16);
            border-radius:999px;color:var(--lime);font-size:11px;font-weight:800;
            letter-spacing:.12em;text-transform:uppercase;margin-bottom:25px
        }
        .hero h1{
            font-family:Manrope,sans-serif;
            font-size:clamp(48px,6vw,86px);line-height:.96;
            letter-spacing:-.075em;max-width:720px
        }
        .hero h1 .accent{color:var(--lime)}
        .hero-copy p{max-width:510px;color:#aaaeb9;margin:25px 0 32px;font-size:16px}
        .hero-actions{display:flex;gap:10px;flex-wrap:wrap}
        .btn{
            display:inline-flex;align-items:center;justify-content:center;gap:9px;
            min-height:48px;padding:0 20px;border-radius:12px;
            font-size:13px;font-weight:800;transition:.25s var(--ease)
        }
        .btn-primary{background:var(--lime);color:var(--ink)}
        .btn-primary:hover{transform:translateY(-3px);box-shadow:0 12px 28px rgba(216,255,82,.2)}
        .btn-dark{background:#252832;color:#fff;border:1px solid #363a46}
        .btn-dark:hover{background:#303541;transform:translateY(-3px)}
        .hero-art{
            min-height:610px;position:relative;
            background:url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1200&q=85") center/cover;
        }
        .hero-art:after{
            content:"";position:absolute;inset:0;
            background:linear-gradient(90deg,var(--ink) 0%,rgba(11,13,18,.2) 40%,rgba(11,13,18,.05))
        }
        .floating-note{
            position:absolute;z-index:3;right:30px;bottom:30px;
            width:190px;padding:17px;background:rgba(255,255,255,.92);
            color:var(--ink);border-radius:17px;backdrop-filter:blur(10px)
        }
        .floating-note small{display:block;color:var(--muted);font-size:10px;font-weight:800;text-transform:uppercase;letter-spacing:.1em}
        .floating-note strong{display:block;font-family:Manrope;font-size:25px;letter-spacing:-.05em;margin-top:2px}

        /* ===== SECTION HEADERS ===== */
        .section{padding:88px 0}
        .section-head{
            display:flex;align-items:end;justify-content:space-between;
            gap:20px;margin-bottom:30px
        }
        .section-kicker{
            color:var(--violet);font-size:11px;font-weight:800;
            letter-spacing:.14em;text-transform:uppercase;margin-bottom:7px
        }
        .section-head h2{
            font-family:Manrope,sans-serif;font-size:clamp(30px,4vw,46px);
            line-height:1;letter-spacing:-.065em
        }
        .section-head p{color:var(--muted);font-size:14px;margin-top:8px}
        .view-all{
            display:inline-flex;align-items:center;gap:9px;
            padding:10px 13px;border:1px solid var(--line);border-radius:10px;
            font-size:12px;font-weight:800;white-space:nowrap
        }
        .view-all:hover{background:var(--ink);color:#fff;border-color:var(--ink)}

        /* ===== CATEGORIES ===== */
        .category-grid{
            display:grid;grid-template-columns:repeat(6,1fr);gap:12px
        }
        .category{
            min-height:165px;padding:20px;border-radius:18px;
            border:1px solid var(--line);background:var(--card);
            display:flex;flex-direction:column;justify-content:space-between;
            transition:.3s var(--ease);cursor:pointer
        }
        .category:hover{background:var(--ink);color:#fff;transform:translateY(-7px);border-color:var(--ink)}
        .category-icon{
            width:45px;height:45px;border-radius:13px;background:var(--soft);
            display:grid;place-items:center;font-size:17px;color:var(--ink)
        }
        .category:hover .category-icon{background:var(--lime)}
        .category h3{font-family:Manrope;font-size:15px;letter-spacing:-.03em}
        .category small{display:block;color:var(--muted);font-size:11px;margin-top:3px}
        .category:hover small{color:#9da1ad}

        /* ===== PRODUCTS ===== */
        .products-grid{
            display:grid;grid-template-columns:repeat(4,1fr);gap:16px
        }
        .product{
            background:var(--card);border:1px solid var(--line);border-radius:19px;
            overflow:hidden;transition:.3s var(--ease);position:relative
        }
        .product:hover{transform:translateY(-6px);box-shadow:var(--shadow);border-color:#c9c5ba}
        .product-media{aspect-ratio:1/1;overflow:hidden;background:var(--soft);position:relative}
        .product-media img{width:100%;height:100%;object-fit:cover;transition:.5s var(--ease)}
        .product:hover .product-media img{transform:scale(1.055)}
        .pill{
            position:absolute;top:12px;left:12px;padding:5px 9px;border-radius:999px;
            background:var(--lime);font-size:9px;font-weight:900;text-transform:uppercase;
            letter-spacing:.1em;z-index:2
        }
        .pill.sale{background:var(--orange);color:#fff}
        .heart{
            position:absolute;top:11px;right:11px;width:35px;height:35px;border-radius:50%;
            background:rgba(255,255,255,.88);display:grid;place-items:center;z-index:2;
            transition:.2s var(--ease)
        }
        .heart:hover{background:#fff;transform:scale(1.08);color:var(--orange)}
        .product-info{padding:17px}
        .product-cat{font-size:9px;font-weight:900;letter-spacing:.13em;text-transform:uppercase;color:var(--muted)}
        .product h3{font-family:Manrope;font-size:15px;letter-spacing:-.03em;margin:6px 0 10px;line-height:1.25}
        .rating{font-size:11px;color:#e29a28;margin-bottom:10px}
        .rating span{color:var(--muted);margin-left:5px}
        .price-line{display:flex;align-items:center;gap:9px;margin-bottom:14px}
        .price{font-family:Manrope;font-size:19px;font-weight:800;letter-spacing:-.04em}
        .old{font-size:12px;color:#a1a098;text-decoration:line-through}
        .add{
            width:100%;height:40px;border-radius:10px;background:var(--ink);color:#fff;
            font-size:11px;font-weight:900;display:flex;align-items:center;justify-content:center;gap:7px;
            transition:.2s var(--ease)
        }
        .add:hover{background:var(--violet)}
        .add.added{background:#28a87b}

        /* ===== DEAL ===== */
        .deal{
            display:grid;grid-template-columns:1fr 1fr;min-height:470px;
            border-radius:24px;overflow:hidden;background:var(--ink);color:#fff
        }
        .deal-image{min-height:470px;background:url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85") center/cover}
        .deal-copy{padding:58px;display:flex;flex-direction:column;justify-content:center}
        .deal-tag{
            color:var(--lime);font-size:10px;font-weight:900;letter-spacing:.15em;
            text-transform:uppercase;margin-bottom:15px
        }
        .deal h2{font-family:Manrope;font-size:clamp(32px,4vw,54px);line-height:1;letter-spacing:-.065em}
        .deal p{color:#a7aab4;font-size:14px;max-width:430px;margin:16px 0 20px}
        .deal-price{font-family:Manrope;font-size:32px;font-weight:800;letter-spacing:-.05em}
        .deal-price del{font-size:16px;color:#6f727c;margin-left:8px;font-weight:500}
        .stock{font-size:11px;color:#9da1ad;margin:7px 0 20px}
        .stock strong{color:var(--orange)}
        .timer{display:grid;grid-template-columns:repeat(4,70px);gap:8px;margin-bottom:26px}
        .timer-box{border:1px solid #2f333d;border-radius:11px;padding:10px 5px;text-align:center}
        .timer-num{font-family:Manrope;font-weight:800;font-size:23px;line-height:1}
        .timer-label{font-size:8px;color:#818590;text-transform:uppercase;letter-spacing:.1em;margin-top:4px}

        /* ===== SOCIAL PROOF ===== */
        .proof{
            display:grid;grid-template-columns:.7fr 1.3fr;gap:50px;align-items:start
        }
        .proof-intro{
            position:sticky;top:120px;padding:34px;background:var(--ink);color:#fff;border-radius:20px
        }
        .proof-intro .score{font-family:Manrope;font-size:62px;font-weight:800;letter-spacing:-.08em;line-height:1}
        .proof-intro .stars{color:var(--lime);font-size:16px;letter-spacing:2px;margin:8px 0}
        .proof-intro p{color:#9da1ad;font-size:13px}
        .reviews{display:grid;grid-template-columns:1fr 1fr;gap:12px}
        .review{
            background:var(--card);border:1px solid var(--line);border-radius:17px;padding:22px
        }
        .review .stars{color:#e29a28;letter-spacing:1px;font-size:12px}
        .review blockquote{font-family:Manrope;font-size:14px;line-height:1.55;letter-spacing:-.02em;margin:13px 0 18px}
        .review-author{display:flex;align-items:center;gap:9px}
        .review-avatar{width:35px;height:35px;border-radius:50%;object-fit:cover}
        .review-author strong{display:block;font-size:11px}
        .review-author small{display:block;color:var(--muted);font-size:10px}

        /* ===== NEWSLETTER ===== */
        .newsletter{
            background:var(--violet);color:#fff;border-radius:24px;padding:50px;
            display:grid;grid-template-columns:1fr 1fr;gap:35px;align-items:center
        }
        .newsletter h2{font-family:Manrope;font-size:clamp(30px,4vw,48px);line-height:1;letter-spacing:-.07em}
        .newsletter p{color:#e2ddff;font-size:13px;margin-top:10px}
        .subscribe{display:flex;background:#fff;border-radius:12px;padding:5px}
        .subscribe input{min-width:0;flex:1;border:0;outline:0;padding:0 14px;color:var(--ink);background:transparent;font-size:13px}
        .subscribe .btn{background:var(--ink);color:#fff;min-height:44px}
        #newsletterMsg{font-size:11px;margin-top:9px;min-height:16px}

        /* ===== FOOTER ===== */
        footer{padding:65px 0 28px}
        .footer-top{display:grid;grid-template-columns:1.7fr repeat(3,1fr);gap:40px;padding-bottom:45px;border-bottom:1px solid var(--line)}
        .footer-brand p{max-width:310px;color:var(--muted);font-size:12px;margin-top:12px}
        .socials{display:flex;gap:7px;margin-top:18px}
        .socials a{width:35px;height:35px;border:1px solid var(--line);border-radius:9px;display:grid;place-items:center;color:var(--muted)}
        .socials a:hover{background:var(--ink);color:#fff;border-color:var(--ink)}
        .footer-col h4{font-size:11px;text-transform:uppercase;letter-spacing:.13em;margin-bottom:13px}
        .footer-col ul{list-style:none;display:grid;gap:7px}
        .footer-col a{color:var(--muted);font-size:12px}
        .footer-col a:hover{color:var(--ink)}
        .footer-bottom{display:flex;justify-content:space-between;gap:20px;padding-top:20px;color:#9b9a94;font-size:10px}

        /* ===== MOBILE MENU ===== */
        #mobileMenu{display:none;border-top:1px solid var(--line);padding:10px 0 16px}
        #mobileMenu ul{list-style:none;display:grid;gap:3px}
        #mobileMenu a{display:block;padding:11px 10px;border-radius:10px;font-weight:700;font-size:13px}
        #mobileMenu a:hover{background:var(--soft)}

        @media(max-width:1100px){
            .header-row{grid-template-columns:auto 1fr auto;gap:15px}
            .desktop-nav{display:none}
            .mobile-toggle{display:grid}
            .category-grid{grid-template-columns:repeat(3,1fr)}
            .products-grid{grid-template-columns:repeat(3,1fr)}
            .hero-shell{grid-template-columns:1fr}
            .hero-art{position:absolute;inset:0;min-height:0}
            .hero-art:after{background:linear-gradient(90deg,rgba(11,13,18,.97),rgba(11,13,18,.55))}
            .hero-copy{min-height:610px}
            .proof{grid-template-columns:1fr}
            .proof-intro{position:static}
            .footer-top{grid-template-columns:1.5fr 1fr 1fr}
            .footer-brand{grid-column:1/-1}
        }
        @media(max-width:760px){
            .container{width:min(var(--container),calc(100% - 28px))}
            .announcement{font-size:9px;letter-spacing:.08em}
            .header-row{min-height:66px}
            .search{width:42px;padding:0;justify-content:center;border:0;background:transparent}
            .search input{display:none}
            .hero{padding-top:14px}
            .hero-shell,.hero-art{border-radius:20px}
            .hero-copy{padding:48px 27px;min-height:520px}
            .hero h1{font-size:49px}
            .floating-note{right:18px;bottom:18px;width:165px}
            .section{padding:58px 0}
            .section-head{align-items:start;flex-direction:column}
            .category-grid{grid-template-columns:repeat(2,1fr)}
            .products-grid{grid-template-columns:repeat(2,1fr);gap:10px}
            .product-info{padding:12px}
            .product h3{font-size:13px}
            .price{font-size:16px}
            .deal{grid-template-columns:1fr}
            .deal-image{min-height:260px}
            .deal-copy{padding:32px 25px}
            .timer{grid-template-columns:repeat(4,1fr)}
            .reviews{grid-template-columns:1fr}
            .newsletter{grid-template-columns:1fr;padding:32px 24px}
            .subscribe{display:grid;gap:5px;background:transparent}
            .subscribe input{height:46px;background:#fff;border-radius:11px}
            .footer-top{grid-template-columns:1fr 1fr;gap:30px}
            .footer-brand{grid-column:1/-1}
            .footer-bottom{flex-direction:column}
        }
        @media(max-width:420px){
            .brand{font-size:18px}
            .brand-mark{width:34px;height:34px}
            .header-tools{gap:2px}
            .hero h1{font-size:42px}
            .hero-copy p{font-size:13px}
            .category{min-height:145px;padding:15px}
            .product-media{aspect-ratio:1/1.05}
            .product-cat{font-size:8px}
            .add{height:37px}
        }
    </style>
</head>

<body>
    <div class="announcement">
        <i class="fa-solid fa-bolt"></i>&nbsp; Free shipping over $75
        <span>•</span> New drops every Friday
    </div>

    <header class="site-header">
        <div class="container header-row">
            <div style="display:flex;align-items:center;gap:8px">
                <button class="tool mobile-toggle" id="mobileToggle" aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars"></i>
                </button>
                <a class="brand" href="#">
                    <span class="brand-mark"><i class="fa-solid fa-bag-shopping"></i></span>
                    <span>Nexus<em>Shop</em></span>
                </a>
            </div>

            <nav class="desktop-nav" aria-label="Main navigation">
                <ul>
                    <li><a class="active" href="#">Home</a></li>
                    <li><a href="#categories">Collections</a></li>
                    <li><a href="#products">Trending</a></li>
                    <li><a href="#deals">Flash Deal</a></li>
                    <li><a href="#testimonials">Reviews</a></li>
                </ul>
            </nav>

            <div class="header-tools">
                <div class="search" role="search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input id="searchInput" type="search" placeholder="Search" aria-label="Search products">
                    <button id="searchBtn" aria-label="Search"><span class="sr-only">Search</span></button>
                </div>
                <button class="tool" title="Account" aria-label="Account"><i class="fa-regular fa-user"></i></button>
                <button class="tool" title="Wishlist" aria-label="Wishlist"><i class="fa-regular fa-heart"></i></button>
                <div style="position:relative">
                    <button class="tool" id="cartBtn" title="Cart" aria-label="Cart">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </button>
                    <span class="count" id="cartCount">0</span>
                </div>
            </div>
        </div>

        <div id="mobileMenu">
            <div class="container">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#categories">Collections</a></li>
                    <li><a href="#products">Trending</a></li>
                    <li><a href="#deals">Flash Deal</a></li>
                    <li><a href="#testimonials">Reviews</a></li>
                    <li><a href="#">Account</a></li>
                    <li><a href="#">Wishlist</a></li>
                </ul>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <div class="hero-shell">
                    <div class="hero-copy">
                        <span class="eyebrow"><i class="fa-solid fa-sparkles"></i> Curated collection 2026</span>
                        <h1>Less noise.<br><span class="accent">Better things.</span></h1>
                        <p>Discover a sharper edit of fashion, tech and everyday accessories. Carefully selected pieces, honest prices and a shopping experience that gets out of your way.</p>
                        <div class="hero-actions">
                            <button class="btn btn-primary" id="shopNow">Shop the edit <i class="fa-solid fa-arrow-right"></i></button>
                            <button class="btn btn-dark" id="exploreDeals"><i class="fa-solid fa-bolt"></i> See today's deal</button>
                        </div>
                    </div>
                    <div class="hero-art">
                        <div class="floating-note">
                            <small>Community pick</small>
                            <strong>4.9/5</strong>
                            <small>from verified shoppers</small>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section" id="categories">
            <div class="container">
                <div class="section-head">
                    <div>
                        <div class="section-kicker">Browse the edit</div>
                        <h2>Shop by mood.</h2>
                        <p>Six focused collections, one simple storefront.</p>
                    </div>
                    <a class="view-all" href="#products">View products <i class="fa-solid fa-arrow-right"></i></a>
                </div>
                <div class="category-grid" id="categoriesGrid" aria-live="polite"></div>
            </div>
        </section>

        <section class="section" id="products">
            <div class="container">
                <div class="section-head">
                    <div>
                        <div class="section-kicker">Trending now</div>
                        <h2>The good stuff.</h2>
                        <p>Popular picks from the NexusShop community.</p>
                    </div>
                    <a class="view-all" href="#deals">Jump to deal <i class="fa-solid fa-arrow-down"></i></a>
                </div>
                <div class="products-grid" id="productsGrid" aria-live="polite"></div>
            </div>
        </section>

        <section class="section" id="deals">
            <div class="container">
                <div class="deal">
                    <div class="deal-image" aria-label="MacBook Air M2"></div>
                    <div class="deal-copy">
                        <div class="deal-tag">⚡ One-day drop</div>
                        <h2>MacBook Air M2</h2>
                        <p>Thin, light and seriously capable. Get the M2 MacBook Air at a limited-time price while stock lasts.</p>
                        <div class="deal-price">$999 <del>$1,199</del></div>
                        <div class="stock">Only <strong>12</strong> items left — don't sleep on it.</div>
                        <div class="timer" id="dealTimer">
                            <div class="timer-box"><div class="timer-num" id="dealDays">0</div><div class="timer-label">Days</div></div>
                            <div class="timer-box"><div class="timer-num" id="dealHours">00</div><div class="timer-label">Hours</div></div>
                            <div class="timer-box"><div class="timer-num" id="dealMinutes">00</div><div class="timer-label">Mins</div></div>
                            <div class="timer-box"><div class="timer-num" id="dealSeconds">00</div><div class="timer-label">Secs</div></div>
                        </div>
                        <button class="btn btn-primary" id="buyDeal"><i class="fa-solid fa-bag-shopping"></i> Add deal to cart</button>
                    </div>
                </div>
            </div>
        </section>

        <section class="section" id="testimonials">
            <div class="container">
                <div class="section-head">
                    <div>
                        <div class="section-kicker">Customer notes</div>
                        <h2>People noticed.</h2>
                        <p>Real feedback from the people shopping the edit.</p>
                    </div>
                </div>
                <div class="proof">
                    <aside class="proof-intro">
                        <div class="score">4.9</div>
                        <div class="stars">★★★★★</div>
                        <p>Average customer rating across recent orders.</p>
                    </aside>
                    <div class="reviews" id="testimonialsList"></div>
                </div>
            </div>
        </section>

        <section class="section" style="padding-top:0">
            <div class="container">
                <div class="newsletter">
                    <div>
                        <div class="section-kicker" style="color:var(--lime)">Don't miss a drop</div>
                        <h2>Good things,<br>straight to you.</h2>
                        <p>Exclusive offers, early access and new arrivals. No inbox clutter.</p>
                    </div>
                    <form id="newsletterForm" onsubmit="return false;">
                        <div class="subscribe">
                            <input id="newsletterEmail" type="email" placeholder="you@example.com" aria-label="Email address" required>
                            <button class="btn" id="subscribeBtn"><i class="fa-solid fa-arrow-right"></i> Subscribe</button>
                        </div>
                        <div id="newsletterMsg"></div>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-top">
                <div class="footer-brand">
                    <a class="brand" href="#"><span class="brand-mark"><i class="fa-solid fa-bag-shopping"></i></span><span>Nexus<em>Shop</em></span></a>
                    <p>A modern e-commerce demo rebuilt around a calmer, more editorial shopping experience.</p>
                    <div class="socials">
                        <a href="#" aria-label="Facebook"><i class="fa-brands fa-facebook-f"></i></a>
                        <a href="#" aria-label="Twitter"><i class="fa-brands fa-x-twitter"></i></a>
                        <a href="#" aria-label="Instagram"><i class="fa-brands fa-instagram"></i></a>
                        <a href="#" aria-label="YouTube"><i class="fa-brands fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h4>Explore</h4>
                    <ul><li><a href="#categories">Collections</a></li><li><a href="#products">Trending</a></li><li><a href="#deals">Deals</a></li><li><a href="#testimonials">Reviews</a></li></ul>
                </div>
                <div class="footer-col">
                    <h4>Support</h4>
                    <ul><li><a href="#">Help Center</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li><li><a href="#">Contact</a></li></ul>
                </div>
                <div class="footer-col">
                    <h4>Company</h4>
                    <ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Journal</a></li><li><a href="#">Privacy</a></li></ul>
                </div>
            </div>
            <div class="footer-bottom">
                <span>© <span id="year"></span> NexusShop. All rights reserved.</span>
                <span>Designed for a cleaner shopping flow.</span>
            </div>
        </div>
    </footer>

    <script>
        const CATEGORIES = [
            {id:'phones',name:'Smartphones',icon:'fa-mobile-screen-button',count:24},
            {id:'laptops',name:'Laptops',icon:'fa-laptop',count:18},
            {id:'clothing',name:'Clothing',icon:'fa-shirt',count:42},
            {id:'gadgets',name:'Gadgets',icon:'fa-headphones',count:31},
            {id:'footwear',name:'Footwear',icon:'fa-shoe-prints',count:27},
            {id:'accessories',name:'Accessories',icon:'fa-watch',count:39}
        ];

        const PRODUCTS = [
            {id:1,title:'iPhone 14 Pro Max',price:1099,oldPrice:1199,rating:5,reviews:128,badge:'New',
             img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85',category:'Smartphones'},
            {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,badge:'',
             img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85',category:'Laptops'},
            {id:3,title:'Apple Watch Series 8',price:349,oldPrice:399,rating:5,reviews:214,badge:'Sale',
             img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
            {id:4,title:'Nike Air Max 270',price:150,rating:4,reviews:53,badge:'',
             img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=700&q=85',category:'Footwear'},
            {id:5,title:'Sony A7 IV Camera',price:2499,rating:5,reviews:42,badge:'New',
             img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85',category:'Gadgets'},
            {id:6,title:'Chanel No. 5',price:120,rating:5,reviews:189,badge:'',
             img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
            {id:7,title:'Travel Backpack',price:79,oldPrice:99,rating:4,reviews:67,badge:'Sale',
             img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=700&q=85',category:'Accessories'},
            {id:8,title:'Sony WH-1000XM5',price:399,rating:5,reviews:156,badge:'',
             img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=700&q=85',category:'Gadgets'}
        ];

        const TESTIMONIALS = [
            {name:'Ava Martin',role:'Verified Buyer',avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80',text:'Fast shipping and excellent support. The product exceeded my expectations!',stars:5},
            {name:'Michael Lee',role:'Frequent Shopper',avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80',text:'Great selection and smooth checkout. Will definitely shop again.',stars:4},
            {name:'Sophia Chen',role:'Designer',avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=100&q=80',text:'Love the quality and the packaging. Everything arrived in perfect condition.',stars:5},
            {name:'James Wilson',role:'Tech Enthusiast',avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=100&q=80',text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',stars:5}
        ];

        let cartCount = 0;

        const $ = id => document.getElementById(id);
        const categoriesGrid = $('categoriesGrid');
        const productsGrid = $('productsGrid');
        const cartCountEl = $('cartCount');
        const searchInput = $('searchInput');
        const mobileToggle = $('mobileToggle');
        const mobileMenu = $('mobileMenu');
        const testimonialsList = $('testimonialsList');
        const newsletterForm = $('newsletterForm');
        const newsletterEmail = $('newsletterEmail');
        const newsletterMsg = $('newsletterMsg');

        function escapeHtml(text){
            return String(text).replace(/[&<>"']/g,s=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[s]));
        }

        function renderCategories(){
            categoriesGrid.innerHTML = CATEGORIES.map(cat => `
                <article class="category" data-category="${escapeHtml(cat.name)}">
                    <div class="category-icon"><i class="fa-solid ${cat.icon}"></i></div>
                    <div>
                        <h3>${escapeHtml(cat.name)}</h3>
                        <small>${cat.count} items</small>
                    </div>
                </article>
            `).join('');

            categoriesGrid.querySelectorAll('.category').forEach(card=>{
                card.addEventListener('click',()=>{
                    searchInput.value=card.dataset.category;
                    filterProducts(card.dataset.category);
                    $('products').scrollIntoView({behavior:'smooth'});
                });
            });
        }

        function renderProducts(list){
            if(!list.length){
                productsGrid.innerHTML='<div style="grid-column:1/-1;text-align:center;padding:60px 20px;color:var(--muted)">No products match that search.</div>';
                return;
            }
            productsGrid.innerHTML=list.map(p=>{
                const badge=p.badge?`<span class="pill ${p.badge==='Sale'?'sale':''}">${p.badge}</span>`:'';
                const old=p.oldPrice?`<span class="old">$${p.oldPrice.toLocaleString()}</span>`:'';
                const stars='★'.repeat(Math.round(p.rating))+'☆'.repeat(5-Math.round(p.rating));
                return `
                    <article class="product">
                        <div class="product-media">
                            <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
                            ${badge}
                            <button class="heart" aria-label="Add ${escapeHtml(p.title)} to wishlist"><i class="fa-regular fa-heart"></i></button>
                        </div>
                        <div class="product-info">
                            <div class="product-cat">${escapeHtml(p.category)}</div>
                            <h3>${escapeHtml(p.title)}</h3>
                            <div class="rating">${stars}<span>(${p.reviews})</span></div>
                            <div class="price-line"><span class="price">$${p.price.toLocaleString()}</span>${old}</div>
                            <button class="add" data-id="${p.id}"><i class="fa-solid fa-plus"></i> Add to cart</button>
                        </div>
                    </article>`;
            }).join('');

            productsGrid.querySelectorAll('.add').forEach(btn=>{
                btn.addEventListener('click',e=>{
                    e.stopPropagation();
                    addToCart(Number(btn.dataset.id),btn);
                });
            });
        }

        function renderTestimonials(){
            testimonialsList.innerHTML=TESTIMONIALS.map(t=>`
                <article class="review">
                    <div class="stars">${'★'.repeat(t.stars)}${'☆'.repeat(5-t.stars)}</div>
                    <blockquote>“${escapeHtml(t.text)}”</blockquote>
                    <div class="review-author">
                        <img class="review-avatar" src="${t.avatar}" alt="${escapeHtml(t.name)}" loading="lazy">
                        <div><strong>${escapeHtml(t.name)}</strong><small>${escapeHtml(t.role)}</small></div>
                    </div>
                </article>
            `).join('');
        }

        function updateCartCount(){
            cartCountEl.textContent=cartCount;
            cartCountEl.style.transform='scale(1.3)';
            setTimeout(()=>cartCountEl.style.transform='scale(1)',180);
        }

        function addToCart(productId,button){
            if(!PRODUCTS.some(p=>p.id===productId)) return;
            cartCount++;
            updateCartCount();
            if(button){
                const original=button.innerHTML;
                button.innerHTML='<i class="fa-solid fa-check"></i> Added';
                button.classList.add('added');
                setTimeout(()=>{button.innerHTML=original;button.classList.remove('added')},1400);
            }
        }

        function filterProducts(query){
            const q=String(query||'').trim().toLowerCase();
            if(!q){renderProducts(PRODUCTS);return}
            renderProducts(PRODUCTS.filter(p=>p.title.toLowerCase().includes(q)||p.category.toLowerCase().includes(q)));
        }

        // Search
        $('searchBtn').addEventListener('click',()=>filterProducts(searchInput.value));
        searchInput.addEventListener('keydown',e=>{if(e.key==='Enter')filterProducts(e.target.value)});

        // Mobile navigation
        mobileToggle.addEventListener('click',()=>{
            const open=mobileMenu.style.display==='block';
            mobileMenu.style.display=open?'none':'block';
            mobileToggle.innerHTML=open?'<i class="fa-solid fa-bars"></i>':'<i class="fa-solid fa-xmark"></i>';
        });
        mobileMenu.querySelectorAll('a').forEach(a=>a.addEventListener('click',()=>{
            mobileMenu.style.display='none';
            mobileToggle.innerHTML='<i class="fa-solid fa-bars"></i>';
        }));

        $('shopNow').addEventListener('click',()=>$('products').scrollIntoView({behavior:'smooth'}));
        $('exploreDeals').addEventListener('click',()=>$('deals').scrollIntoView({behavior:'smooth'}));

        $('buyDeal').addEventListener('click',function(){
            cartCount++;
            updateCartCount();
            const original=this.innerHTML;
            this.innerHTML='<i class="fa-solid fa-check"></i> Added to cart';
            this.style.background='#28a87b';
            setTimeout(()=>{this.innerHTML=original;this.style.background=''},1600);
        });

        $('cartBtn').addEventListener('click',()=>{
            alert(`Your cart has ${cartCount} item${cartCount===1?'':'s'}.`);
        });

        newsletterForm.addEventListener('submit',e=>{
            e.preventDefault();
            const email=newsletterEmail.value.trim();
            if(!email || !/^[^@\s]+@[^@\s]+\.[^@\s]+$/.test(email)){
                newsletterMsg.textContent='Please enter a valid email address.';
                newsletterMsg.style.color='#ffd0c8';
                return;
            }
            newsletterMsg.textContent='✓ You are on the list. Welcome to the edit.';
            newsletterMsg.style.color='var(--lime)';
            newsletterEmail.value='';
            setTimeout(()=>newsletterMsg.textContent='',3500);
        });

        // Deal timer
        (function(){
            const target=new Date(Date.now()+(24*60+36)*60*1000);
            function tick(){
                let diff=Math.max(0,target-Date.now());
                const d=Math.floor(diff/86400000);
                const h=Math.floor(diff%86400000/3600000);
                const m=Math.floor(diff%3600000/60000);
                const s=Math.floor(diff%60000/1000);
                $('dealDays').textContent=d;
                $('dealHours').textContent=String(h).padStart(2,'0');
                $('dealMinutes').textContent=String(m).padStart(2,'0');
                $('dealSeconds').textContent=String(s).padStart(2,'0');
            }
            tick();setInterval(tick,1000);
        })();

        $('year').textContent=new Date().getFullYear();
        renderCategories();
        renderProducts(PRODUCTS);
        renderTestimonials();
        updateCartCount();

        window.addEventListener('resize',()=>{
            if(window.innerWidth>1100){
                mobileMenu.style.display='none';
                mobileToggle.innerHTML='<i class="fa-solid fa-bars"></i>';
            }
        });
    </script>
</body>
</html>
