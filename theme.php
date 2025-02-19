<?php
$aTheme = array(
    'id' => 'moga',
    'title' => 'moga',
    'description' => 'moga - Bootstrap 5 playground.',
    'thumbnail' => 'moga.png',
    'version' => '1.1.0',
    'author' => '<a href="http://www.con-creat.de" title="con-creat">concepts and creations</a>',
    'settings' => array(
//DISPLAY
        array(
            'group' => 'display',
            'name' => 'aNrofCatArticles',
            'type' => 'arr',
            'value' => array("20"),
        ),
        array(
            'group' => 'display',
            'name' => 'aNrofCatArticlesInGrid',
            'type' => 'arr',
            'value' => array("20"),
        ),
        array(
            'group' => 'display',
            'name' => 'blShowBirthdayFields',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'display',
            'name' => 'blShowFinalStep',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'display',
            'name' => 'blShowListDisplayType',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'display',
            'name' => 'blShowWeightInList',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'display',
            'name' => 'iNewBasketItemMessage',
            'type' => 'select',
            'value' => 'str',
            'constraints' => '0|1|2|3',
        ),
        array(
            'group' => 'display',
            'name' => 'sDefaultListDisplayType',
            'type' => 'select',
            'value' => 'grid',
            'constraints' => 'line|grid',
        ),

//HEADER
        array(
            'group' => 'header',
            'name' => 'sHeaderWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
        ),
        array(
            'group' => 'header',
            'name' => 'sHeaderSticky',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'header',
            'name' => 'sHeaderShowSearch',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'header',
            'name' => 'sHeaderMenu',
            'type' => 'select',
            'value' => 'Dropdowns',
            'constraints' => 'Dropdowns|MegaMenu',
        ),

//STARTPAGE
        array(
            'group' => 'startpage',
            'name' => 'bl_showPromo',
            'type' => 'select',
            'value' => 'Tiles',
            'constraints' => 'Tiles|Slider|None',
            'position' => 1,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sPromoWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 2,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sPromoTilesGrid',
            'type' => 'select',
            'value' => '100_33',
            'constraints' => '100_33|50|33|25',
            'position' => 3,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sPromoTilesSpacing',
            'type' => 'select',
            'value' => '2',
            'constraints' => '0|1|2|3|4|5',
            'position' => 4,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sPromoRowPadding',
            'type' => 'bool',
            'value' => 0,
            'position' => 5,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sPromoBg',
            'type' => 'select',
            'value' => 'white',
            'constraints' => 'white|light|dark|primary',
            'position' => 6,
        ),
        array(
            'group' => 'startpage',
            'name' => 'showCategoryTiles',
            'type' => 'bool',
            'value' => 1,
            'position' => 21,
        ),
        array(
            'group' => 'startpage',
            'name' => 'showCategoryTilesWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 22,
        ),
        array(
            'group' => 'startpage',
            'name' => 'showCategoryTilesGrid',
            'type' => 'select',
            'value' => '33',
            'constraints' => '50|33|25',
            'position' => 23,
        ),
        array(
            'group' => 'startpage',
            'name' => 'showCategoryTilesSpacing',
            'type' => 'select',
            'value' => '2',
            'constraints' => '0|1|2|3|4|5',
            'position' => 25,
        ),
        array(
            'group' => 'startpage',
            'name' => 'showCategoryTilesRowPadding',
            'type' => 'bool',
            'value' => 1,
            'position' => 26,
        ),
        array(
            'group' => 'startpage',
            'name' => 'showCategoryTilesBg',
            'type' => 'select',
            'value' => 'light',
            'constraints' => 'white|light|dark|primary',
            'position' => 27,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sWelcomeTextWidth',
            'type' => 'select',
            'value' => 'container',
            'constraints' => 'w100c100|container',
            'position' => 29,
        ),
        array(
            'group' => 'startpage',
            'name' => 'bl_showManufacturer',
            'type' => 'bool',
            'value' => 1,
            'position' => 30,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sManufacturerWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 31,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sShowBargainArticles',
            'type' => 'bool',
            'value' => 1,
            'position' => 35,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sBargainWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 36,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sShowNewestArticles',
            'type' => 'bool',
            'value' => 1,
            'position' => 40,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sNewestWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 41,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sShowTopArticles',
            'type' => 'bool',
            'value' => 1,
            'position' => 50,
        ),
        array(
            'group' => 'startpage',
            'name' => 'sTopWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 51,
        ),
//DETAIL
        array(
            'group' => 'pdp',
            'name' => 'sImageStyle',
            'type' => 'select',
            'value' => 'carousel',
            'constraints' => 'grid|carousel',
            'position' => 1,
        ),

//KATEGORIEN
        array(
            'group' => 'pop',
            'name' => 'sHeaderImageWidth',
            'type' => 'select',
            'value' => 'w100c100',
            'constraints' => 'w100c100|container',
            'position' => 1,
        ),
        array(
            'group' => 'pop',
            'name' => 'sHeaderImageHeight',
            'type' => 'select',
            'value' => 'small',
            'constraints' => 'small|medium',
            'position' => 1,
        ),
        array(
            'group' => 'pop',
            'name' => 'sShowPopBreadcrump',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'pop',
            'name' => 'sCategoryWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
            'position' => 2,
        ),
        array(
            'group' => 'pop',
            'name' => 'sCategoryDescPosition',
            'type' => 'select',
            'value' => 'bottom',
            'constraints' => 'bottom|top',
            'position' => 3,
        ),

//FUNKTIONEN
        array(
            'group' => 'features',
            'name' => 'bl_showCompareList',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'features',
            'name' => 'bl_showGiftWrapping',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'features',
            'name' => 'bl_showVouchers',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'features',
            'name' => 'bl_showWishlist',
            'type' => 'bool',
            'value' => 1,
        ),

//E-MAIL
        array(
            'group' => 'emails',
            'name' => 'blEmailsShowProductPictures',
            'type' => 'bool',
            'value' => 0,
        ),

//FOOTER
        array(
            'group' => 'footer',
            'name' => 'sFooterWidth',
            'type' => 'select',
            'value' => 'w100cContainer',
            'constraints' => 'w100cContainer|w100c100|container',
        ),
        array(
            'group' => 'footer',
            'name' => 'blFooterShowHelp',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'footer',
            'name' => 'blFooterShowLinks',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'footer',
            'name' => 'blFooterShowNews',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'footer',
            'name' => 'blFooterShowNewsletter',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'footer',
            'name' => 'blFooterShowNewsletterForm',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'footer',
            'name' => 'sBlogUrl',
            'type' => 'str',
            'value' => 'https://wordpress.org',
        ),
        array(
            'group' => 'footer',
            'name' => 'sFacebookUrl',
            'type' => 'str',
            'value' => 'https://www.facebook.com',
        ),
        array(
            'group' => 'footer',
            'name' => 'sInstagramUrl',
            'type' => 'str',
            'value' => 'https://instagram.com',
        ),
        array(
            'group' => 'footer',
            'name' => 'sTwitterUrl',
            'type' => 'str',
            'value' => 'https://twitter.com',
        ),
        array(
            'group' => 'footer',
            'name' => 'sYouTubeUrl',
            'type' => 'str',
            'value' => 'https://www.youtube.com',
        ),

//BILDER
        array(
            'group' => 'images',
            'name' => 'aDetailImageSizes',
            'type' => 'aarr',
            'value' => array(
                'oxpic1' => '800*600',
                'oxpic2' => '800*600',
                'oxpic3' => '800*600',
                'oxpic4' => '800*600',
                'oxpic5' => '800*600',
                'oxpic6' => '800*600',
                'oxpic7' => '800*600',
                'oxpic8' => '800*600',
                'oxpic9' => '800*600',
                'oxpic10' => '800*600',
                'oxpic11' => '800*600',
                'oxpic12' => '800*600',
            ),
        ),
        array(
            'group' => 'images',
            'name' => 'blSliderShowImageCaption',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'images',
            'name' => 'sCatIconsize',
            'type' => 'str',
            'value' => '400*300',
        ),
        array(
            'group' => 'images',
            'name' => 'sCatPromotionsize',
            'type' => 'str',
            'value' => '370*107',
        ),
        array(
            'group' => 'images',
            'name' => 'sCatThumbnailsize',
            'type' => 'str',
            'value' => '1600*500',
        ),
        array(
            'group' => 'images',
            'name' => 'sIconsize',
            'type' => 'str',
            'value' => '100*100',
        ),
        array(
            'group' => 'images',
            'name' => 'sManufacturerIconsize',
            'type' => 'str',
            'value' => '100*100',
        ),
        array(
            'group' => 'images',
            'name' => 'sThumbnailsize',
            'type' => 'str',
            'value' => '500*500',
        ),
        array(
            'group' => 'images',
            'name' => 'sZoomImageSize',
            'type' => 'str',
            'value' => '1200*1200',
        ),

//LOGO
        array(
            'group' => 'logo',
            'name' => 'sEmailLogo',
            'type' => 'str',
            'value' => '',
        ),
        array(
            'group' => 'logo',
            'name' => 'sLogoFile',
            'type' => 'str',
            'value' => '',
        ),
        array(
            'group' => 'logo',
            'name' => 'sLogoHeight',
            'type' => 'str',
            'value' => '38',
        ),
        array(
            'group' => 'logo',
            'name' => 'sLogoWidth',
            'type' => 'str',
            'value' => '200',
        ),

//FAVICON

        array(
            'group' => 'favicons',
            'name' => 'sFavicon16File',
            'type' => 'str',
            'value' => 'favicon-16x16.png',
        ),
        array(
            'group' => 'favicons',
            'name' => 'sFavicon32File',
            'type' => 'str',
            'value' => 'favicon-32x32.png',
        ),
        array(
            'group' => 'favicons',
            'name' => 'aAppleTouchIcon',
            'type' => 'str',
            'value' => 'apple-icon-310x310.png',
        ),
        array(
            'group' => 'favicons',
            'name' => 'sFaviconFile',
            'type' => 'str',
            'value' => 'favicon.ico',
        ),
        array(
            'group' => 'favicons',
            'name' => 'aOGImage',
            'type' => 'str',
            'value' => 'moga.png',
        ),

//ANALYTICS
        array(
            'group' => 'googleanalytics',
            'name' => 'blGAAnonymizeIPs',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'googleanalytics',
            'name' => 'blUseGAEcommerceTracking',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'googleanalytics',
            'name' => 'blUseGAPageTracker',
            'type' => 'bool',
            'value' => 1,
        ),
        array(
            'group' => 'googleanalytics',
            'name' => 'sGATrackingId',
            'type' => 'str',
            'value' => '',
        ),

//GOOGLE
        array(
            'group' => 'googlets',
            'name' => 'blUseGoogleTS',
            'type' => 'bool',
            'value' => 0,
        ),
        array(
            'group' => 'googlets',
            'name' => 'sDeliveryDaysNotOnStock',
            'type' => 'str',
            'value' => '14',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sDeliveryDaysOnStock',
            'type' => 'str',
            'value' => '6',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sGoogleShoppingAccountId',
            'type' => 'str',
            'value' => '',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sGoogleVendorId',
            'type' => 'str',
            'value' => '',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sPageLanguage',
            'type' => 'str',
            'value' => 'de_DE',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sShippingDaysNotOnStock',
            'type' => 'str',
            'value' => '5',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sShippingDaysOnStock',
            'type' => 'str',
            'value' => '3',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sShoppingCountry',
            'type' => 'str',
            'value' => 'DE',
        ),
        array(
            'group' => 'googlets',
            'name' => 'sShoppingLanguage',
            'type' => 'str',
            'value' => 'de',
        ),
//KONTAKT
        array(
            'group' => 'contact',
            'name' => 'sGoogleMapsAddr',
            'type' => 'str',
            'value' => 'OXID eSales AG, Bertoldstraße 48, 79098 Freiburg',
        ),
    ),
);
