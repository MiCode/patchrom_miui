.class public final Landroid/provider/BrowserContract$Combined;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Landroid/provider/BrowserContract$CommonColumns;
.implements Landroid/provider/BrowserContract$HistoryColumns;
.implements Landroid/provider/BrowserContract$ImageColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Combined"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_BOOKMARK:Ljava/lang/String; = "bookmark"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 676
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "combined"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Combined;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
