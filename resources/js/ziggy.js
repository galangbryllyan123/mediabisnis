const Ziggy = {"url":"https:\/\/localhost","port":null,"defaults":{},"routes":{"ignition.healthCheck":{"uri":"_ignition\/health-check","methods":["GET","HEAD"]},"ignition.executeSolution":{"uri":"_ignition\/execute-solution","methods":["POST"]},"ignition.updateConfig":{"uri":"_ignition\/update-config","methods":["POST"]},"verification.notice":{"uri":"email\/verify","methods":["GET","HEAD"]},"\/":{"uri":"\/","methods":["GET","HEAD"]},"all-cities":{"uri":"all-cities","methods":["GET","HEAD"]},"all-categories":{"uri":"all-categories","methods":["GET","HEAD"]},"all-listings":{"uri":"all-listings","methods":["GET","HEAD"]},"view":{"uri":"view\/{url}","methods":["GET","HEAD"]},"cat":{"uri":"cat\/{url}","methods":["GET","HEAD"]},"set-location":{"uri":"set-location","methods":["POST"]},"search_listings":{"uri":"search_listings","methods":["POST"]},"search_with_cat_loc":{"uri":"search_with_cat_loc","methods":["POST"]},"filter-by-city":{"uri":"filter-by-city\/{url}","methods":["GET","HEAD"]},"view-blogs":{"uri":"view-blogs","methods":["GET","HEAD"]},"blog-by-cat":{"uri":"blog-by-cat\/{url}","methods":["GET","HEAD"]},"single-blogs":{"uri":"single-blogs\/{url}","methods":["GET","HEAD"]},"submit-news-letter":{"uri":"submit-news-letter","methods":["POST"]},"subscribe-success":{"uri":"subscribe-success","methods":["GET","HEAD"]},"page":{"uri":"page\/{url}","methods":["GET","HEAD"]},"login":{"uri":"login","methods":["GET","HEAD"]},"registration":{"uri":"registration","methods":["GET","HEAD"]},"to-dashboard":{"uri":"to-dashboard","methods":["GET","HEAD"]},"user-dashboard":{"uri":"user-dashboard","methods":["GET","HEAD"]},"my-listing":{"uri":"my-listing","methods":["GET","HEAD"]},"profile":{"uri":"profile","methods":["GET","HEAD"]},"bookmarks":{"uri":"bookmarks","methods":["GET","HEAD"]},"reviews":{"uri":"reviews","methods":["GET","HEAD"]},"active-plan":{"uri":"active-plan","methods":["GET","HEAD"]},"payments":{"uri":"payments","methods":["GET","HEAD"]},"user-settings":{"uri":"user-settings","methods":["GET","HEAD"]},"user-messages":{"uri":"user-messages","methods":["GET","HEAD"]},"new-listing":{"uri":"new-listing","methods":["GET","HEAD"]},"choos-package":{"uri":"choos-package","methods":["GET","HEAD"]},"user-profile-image":{"uri":"user-profile-image","methods":["GET","HEAD"]},"admin_checkclear":{"uri":"admin","methods":["GET","HEAD"]},"dashboard":{"uri":"admin\/dashboard","methods":["GET","HEAD"]},"admin\/login":{"uri":"admin\/login","methods":["GET","HEAD"]},"password-settings":{"uri":"admin\/password-settings","methods":["GET","HEAD"]},"change-password":{"uri":"change-password","methods":["POST"]},"upload-site-logo":{"uri":"upload-site-logo","methods":["POST"]},"upload-fav-icon":{"uri":"upload-fav-icon","methods":["POST"]},"update-about":{"uri":"update-about","methods":["POST"]},"update-contact-details":{"uri":"update-contact-details","methods":["POST"]},"update-social-links":{"uri":"update-social-links","methods":["POST"]},"purchase.index":{"uri":"purchase","methods":["GET","HEAD"]},"purchase.create":{"uri":"purchase\/create","methods":["GET","HEAD"]},"purchase.store":{"uri":"purchase","methods":["POST"]},"purchase.show":{"uri":"purchase\/{purchase}","methods":["GET","HEAD"]},"purchase.edit":{"uri":"purchase\/{purchase}\/edit","methods":["GET","HEAD"]},"purchase.update":{"uri":"purchase\/{purchase}","methods":["PUT","PATCH"]},"purchase.destroy":{"uri":"purchase\/{purchase}","methods":["DELETE"]},"create-transaction":{"uri":"create-transaction","methods":["GET","HEAD"]},"process-transaction":{"uri":"process-transaction","methods":["GET","HEAD"]},"success-transaction":{"uri":"success-transaction","methods":["GET","HEAD"]},"cancel-transaction":{"uri":"cancel-transaction","methods":["GET","HEAD"]},"payment-success":{"uri":"payment-success","methods":["GET","HEAD"]},"admin\/payment-history":{"uri":"admin\/payment-history","methods":["GET","HEAD"]},"admin\/transaction-history":{"uri":"admin\/transaction-history","methods":["GET","HEAD"]},"admin\/view-users":{"uri":"admin\/view-users","methods":["GET","HEAD"]},"remove-user":{"uri":"remove-user\/{id}","methods":["DELETE"]},"admin\/view-trashed-users":{"uri":"admin\/view-trashed-users","methods":["GET","HEAD"]},"restore-user":{"uri":"restore-user\/{id}","methods":["DELETE"]},"update-profile":{"uri":"update-profile","methods":["POST"]},"upload-profile-image":{"uri":"upload-profile-image","methods":["POST"]},"crop-profile-image":{"uri":"crop-profile-image","methods":["POST"]},"update-bookmark":{"uri":"update-bookmark","methods":["POST"]},"remove-bookmark":{"uri":"remove-bookmark\/{id}","methods":["DELETE"]},"listing.index":{"uri":"listing","methods":["GET","HEAD"]},"listing.create":{"uri":"listing\/create","methods":["GET","HEAD"]},"listing.store":{"uri":"listing","methods":["POST"]},"listing.show":{"uri":"listing\/{listing}","methods":["GET","HEAD"],"bindings":{"listing":"id"}},"listing.edit":{"uri":"listing\/{listing}\/edit","methods":["GET","HEAD"],"bindings":{"listing":"id"}},"listing.update":{"uri":"listing\/{listing}","methods":["PUT","PATCH"],"bindings":{"listing":"id"}},"listing.destroy":{"uri":"listing\/{listing}","methods":["DELETE"],"bindings":{"listing":"id"}},"add-business-logo":{"uri":"add-business-logo\/{lid}","methods":["GET","HEAD"]},"upload-business-logo":{"uri":"upload-business-logo\/{lid}","methods":["PUT"]},"crope-business-logo":{"uri":"crope-business-logo","methods":["POST"]},"admin\/view-all-listing":{"uri":"admin\/view-all-listing","methods":["GET","HEAD"]},"admin\/view-trash-listing":{"uri":"admin\/view-trash-listing","methods":["GET","HEAD"]},"update-listing-featured":{"uri":"update-listing-featured","methods":["PUT"]},"restore-listing":{"uri":"restore-listing\/{id}","methods":["DELETE"]},"busines-detail.index":{"uri":"busines-detail","methods":["GET","HEAD"]},"busines-detail.create":{"uri":"busines-detail\/create","methods":["GET","HEAD"]},"busines-detail.store":{"uri":"busines-detail","methods":["POST"]},"busines-detail.show":{"uri":"busines-detail\/{busines_detail}","methods":["GET","HEAD"]},"busines-detail.edit":{"uri":"busines-detail\/{busines_detail}\/edit","methods":["GET","HEAD"]},"busines-detail.update":{"uri":"busines-detail\/{busines_detail}","methods":["PUT","PATCH"]},"busines-detail.destroy":{"uri":"busines-detail\/{busines_detail}","methods":["DELETE"]},"service.index":{"uri":"service","methods":["GET","HEAD"]},"service.create":{"uri":"service\/create","methods":["GET","HEAD"]},"service.store":{"uri":"service","methods":["POST"]},"service.show":{"uri":"service\/{service}","methods":["GET","HEAD"]},"service.edit":{"uri":"service\/{service}\/edit","methods":["GET","HEAD"]},"service.update":{"uri":"service\/{service}","methods":["PUT","PATCH"],"bindings":{"service":"id"}},"service.destroy":{"uri":"service\/{service}","methods":["DELETE"],"bindings":{"service":"id"}},"product.index":{"uri":"product","methods":["GET","HEAD"]},"product.create":{"uri":"product\/create","methods":["GET","HEAD"]},"product.store":{"uri":"product","methods":["POST"]},"product.show":{"uri":"product\/{product}","methods":["GET","HEAD"]},"product.edit":{"uri":"product\/{product}\/edit","methods":["GET","HEAD"]},"product.update":{"uri":"product\/{product}","methods":["PUT","PATCH"],"bindings":{"product":"id"}},"product.destroy":{"uri":"product\/{product}","methods":["DELETE"],"bindings":{"product":"id"}},"gallery.index":{"uri":"gallery","methods":["GET","HEAD"]},"gallery.create":{"uri":"gallery\/create","methods":["GET","HEAD"]},"gallery.store":{"uri":"gallery","methods":["POST"]},"gallery.show":{"uri":"gallery\/{gallery}","methods":["GET","HEAD"]},"gallery.edit":{"uri":"gallery\/{gallery}\/edit","methods":["GET","HEAD"]},"gallery.update":{"uri":"gallery\/{gallery}","methods":["PUT","PATCH"]},"gallery.destroy":{"uri":"gallery\/{gallery}","methods":["DELETE"],"bindings":{"gallery":"id"}},"timing.index":{"uri":"timing","methods":["GET","HEAD"]},"timing.create":{"uri":"timing\/create","methods":["GET","HEAD"]},"timing.store":{"uri":"timing","methods":["POST"]},"timing.show":{"uri":"timing\/{timing}","methods":["GET","HEAD"]},"timing.edit":{"uri":"timing\/{timing}\/edit","methods":["GET","HEAD"],"bindings":{"timing":"id"}},"timing.update":{"uri":"timing\/{timing}","methods":["PUT","PATCH"]},"timing.destroy":{"uri":"timing\/{timing}","methods":["DELETE"],"bindings":{"timing":"id"}},"rating.index":{"uri":"rating","methods":["GET","HEAD"]},"rating.create":{"uri":"rating\/create","methods":["GET","HEAD"]},"rating.store":{"uri":"rating","methods":["POST"]},"rating.show":{"uri":"rating\/{rating}","methods":["GET","HEAD"],"bindings":{"rating":"id"}},"rating.edit":{"uri":"rating\/{rating}\/edit","methods":["GET","HEAD"],"bindings":{"rating":"id"}},"rating.update":{"uri":"rating\/{rating}","methods":["PUT","PATCH"],"bindings":{"rating":"id"}},"rating.destroy":{"uri":"rating\/{rating}","methods":["DELETE"],"bindings":{"rating":"id"}},"message.index":{"uri":"message","methods":["GET","HEAD"]},"message.create":{"uri":"message\/create","methods":["GET","HEAD"]},"message.store":{"uri":"message","methods":["POST"]},"message.show":{"uri":"message\/{message}","methods":["GET","HEAD"]},"message.edit":{"uri":"message\/{message}\/edit","methods":["GET","HEAD"]},"message.update":{"uri":"message\/{message}","methods":["PUT","PATCH"]},"message.destroy":{"uri":"message\/{message}","methods":["DELETE"],"bindings":{"message":"id"}},"admin\/viewMessages":{"uri":"admin\/viewMessages","methods":["GET","HEAD"]},"updaterating":{"uri":"updaterating\/{id}","methods":["PUT"]},"deleterating":{"uri":"deleterating\/{id}","methods":["DELETE"]},"location.index":{"uri":"admin\/location","methods":["GET","HEAD"]},"location.create":{"uri":"admin\/location\/create","methods":["GET","HEAD"]},"location.store":{"uri":"admin\/location","methods":["POST"]},"location.show":{"uri":"admin\/location\/{location}","methods":["GET","HEAD"]},"location.edit":{"uri":"admin\/location\/{location}\/edit","methods":["GET","HEAD"]},"location.update":{"uri":"admin\/location\/{location}","methods":["PUT","PATCH"],"bindings":{"location":"id"}},"location.destroy":{"uri":"admin\/location\/{location}","methods":["DELETE"],"bindings":{"location":"id"}},"update-location-featured":{"uri":"update-location-featured","methods":["PUT"]},"category.index":{"uri":"admin\/category","methods":["GET","HEAD"]},"category.create":{"uri":"admin\/category\/create","methods":["GET","HEAD"]},"category.store":{"uri":"admin\/category","methods":["POST"]},"category.show":{"uri":"admin\/category\/{category}","methods":["GET","HEAD"],"bindings":{"category":"id"}},"category.edit":{"uri":"admin\/category\/{category}\/edit","methods":["GET","HEAD"],"bindings":{"category":"id"}},"category.update":{"uri":"admin\/category\/{category}","methods":["PUT","PATCH"],"bindings":{"category":"id"}},"category.destroy":{"uri":"admin\/category\/{category}","methods":["DELETE"],"bindings":{"category":"id"}},"update-category-featured":{"uri":"update-category-featured","methods":["PUT"]},"package.index":{"uri":"admin\/package","methods":["GET","HEAD"]},"package.create":{"uri":"admin\/package\/create","methods":["GET","HEAD"]},"package.store":{"uri":"admin\/package","methods":["POST"]},"package.show":{"uri":"admin\/package\/{package}","methods":["GET","HEAD"]},"package.edit":{"uri":"admin\/package\/{package}\/edit","methods":["GET","HEAD"]},"package.update":{"uri":"admin\/package\/{package}","methods":["PUT","PATCH"]},"package.destroy":{"uri":"admin\/package\/{package}","methods":["DELETE"]},"blog.index":{"uri":"admin\/blog","methods":["GET","HEAD"]},"blog.create":{"uri":"admin\/blog\/create","methods":["GET","HEAD"]},"blog.store":{"uri":"admin\/blog","methods":["POST"]},"blog.show":{"uri":"admin\/blog\/{blog}","methods":["GET","HEAD"],"bindings":{"blog":"id"}},"blog.edit":{"uri":"admin\/blog\/{blog}\/edit","methods":["GET","HEAD"],"bindings":{"blog":"id"}},"blog.update":{"uri":"admin\/blog\/{blog}","methods":["PUT","PATCH"],"bindings":{"blog":"id"}},"blog.destroy":{"uri":"admin\/blog\/{blog}","methods":["DELETE"],"bindings":{"blog":"id"}},"admin\/blog-image":{"uri":"admin\/blog-image\/{lid}","methods":["GET","HEAD"]},"admin\/blog-detail":{"uri":"admin\/blog-detail\/{lid}","methods":["GET","HEAD"]},"crope-blog-image":{"uri":"crope-blog-image","methods":["POST"]},"update-blog-detail":{"uri":"update-blog-detail","methods":["POST"]},"subscriber.index":{"uri":"admin\/subscriber","methods":["GET","HEAD"]},"subscriber.create":{"uri":"admin\/subscriber\/create","methods":["GET","HEAD"]},"subscriber.store":{"uri":"admin\/subscriber","methods":["POST"]},"subscriber.show":{"uri":"admin\/subscriber\/{subscriber}","methods":["GET","HEAD"]},"subscriber.edit":{"uri":"admin\/subscriber\/{subscriber}\/edit","methods":["GET","HEAD"]},"subscriber.update":{"uri":"admin\/subscriber\/{subscriber}","methods":["PUT","PATCH"]},"subscriber.destroy":{"uri":"admin\/subscriber\/{subscriber}","methods":["DELETE"],"bindings":{"subscriber":"id"}},"pages.index":{"uri":"admin\/pages","methods":["GET","HEAD"]},"pages.create":{"uri":"admin\/pages\/create","methods":["GET","HEAD"]},"pages.store":{"uri":"admin\/pages","methods":["POST"]},"pages.show":{"uri":"admin\/pages\/{page}","methods":["GET","HEAD"],"bindings":{"page":"id"}},"pages.edit":{"uri":"admin\/pages\/{page}\/edit","methods":["GET","HEAD"],"bindings":{"page":"id"}},"pages.update":{"uri":"admin\/pages\/{page}","methods":["PUT","PATCH"],"bindings":{"page":"id"}},"pages.destroy":{"uri":"admin\/pages\/{page}","methods":["DELETE"],"bindings":{"page":"id"}},"getMoreServices":{"uri":"getMoreServices\/{bid}\/{ofset}","methods":["GET","HEAD"]},"getMoreProducts":{"uri":"getMoreProducts\/{bid}\/{ofset}","methods":["GET","HEAD"]},"getMoreReviews":{"uri":"getMoreReviews\/{bid}\/{ofset}","methods":["GET","HEAD"]},"getMoreGallery":{"uri":"getMoreGallery\/{bid}\/{ofset}","methods":["GET","HEAD"]},"app-settings.index":{"uri":"admin\/app-settings","methods":["GET","HEAD"]},"app-settings.create":{"uri":"admin\/app-settings\/create","methods":["GET","HEAD"]},"app-settings.store":{"uri":"admin\/app-settings","methods":["POST"]},"app-settings.show":{"uri":"admin\/app-settings\/{app_setting}","methods":["GET","HEAD"]},"app-settings.edit":{"uri":"admin\/app-settings\/{app_setting}\/edit","methods":["GET","HEAD"]},"app-settings.update":{"uri":"admin\/app-settings\/{app_setting}","methods":["PUT","PATCH"]},"app-settings.destroy":{"uri":"admin\/app-settings\/{app_setting}","methods":["DELETE"]},"siteinfo.index":{"uri":"admin\/siteinfo","methods":["GET","HEAD"]},"siteinfo.create":{"uri":"admin\/siteinfo\/create","methods":["GET","HEAD"]},"siteinfo.store":{"uri":"admin\/siteinfo","methods":["POST"]},"siteinfo.show":{"uri":"admin\/siteinfo\/{siteinfo}","methods":["GET","HEAD"]},"siteinfo.edit":{"uri":"admin\/siteinfo\/{siteinfo}\/edit","methods":["GET","HEAD"]},"siteinfo.update":{"uri":"admin\/siteinfo\/{siteinfo}","methods":["PUT","PATCH"]},"siteinfo.destroy":{"uri":"admin\/siteinfo\/{siteinfo}","methods":["DELETE"]},"register":{"uri":"register","methods":["GET","HEAD"]},"register_admin":{"uri":"register_admin","methods":["POST"]},"login-admin":{"uri":"login-admin","methods":["POST"]},"password.request":{"uri":"forgot-password","methods":["GET","HEAD"]},"password.email":{"uri":"forgot-password","methods":["POST"]},"password.reset":{"uri":"reset-password\/{token}","methods":["GET","HEAD"]},"password.update":{"uri":"reset-password","methods":["POST"]},"verification.verify":{"uri":"verify-email\/{id}\/{hash}","methods":["GET","HEAD"]},"verification.send":{"uri":"email\/verification-notification","methods":["POST"]},"password.confirm":{"uri":"confirm-password","methods":["GET","HEAD"]},"logout":{"uri":"logout","methods":["POST"]},"admin-logout":{"uri":"admin-logout","methods":["POST"]}}};

if (typeof window !== 'undefined' && typeof window.Ziggy !== 'undefined') {
    Object.assign(Ziggy.routes, window.Ziggy.routes);
}

export { Ziggy };
