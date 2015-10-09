.class public interface abstract Landroid/webkit/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactoryProvider$Statics;
    }
.end annotation


# virtual methods
.method public abstract createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
.end method

.method public abstract getCookieManager()Landroid/webkit/CookieManager;
.end method

.method public abstract getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
.end method

.method public abstract getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
.end method

.method public abstract getWebIconDatabase()Landroid/webkit/WebIconDatabase;
.end method

.method public abstract getWebStorage()Landroid/webkit/WebStorage;
.end method

.method public abstract getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
.end method
