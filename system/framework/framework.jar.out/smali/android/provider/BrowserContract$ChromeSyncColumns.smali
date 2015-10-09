.class public final Landroid/provider/BrowserContract$ChromeSyncColumns;
.super Ljava/lang/Object;
.source "BrowserContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChromeSyncColumns"
.end annotation


# static fields
.field public static final CLIENT_UNIQUE:Ljava/lang/String; = "sync4"

.field public static final FOLDER_NAME_BOOKMARKS:Ljava/lang/String; = "google_chrome_bookmarks"

.field public static final FOLDER_NAME_BOOKMARKS_BAR:Ljava/lang/String; = "bookmark_bar"

.field public static final FOLDER_NAME_OTHER_BOOKMARKS:Ljava/lang/String; = "other_bookmarks"

.field public static final FOLDER_NAME_ROOT:Ljava/lang/String; = "google_chrome"

.field public static final SERVER_UNIQUE:Ljava/lang/String; = "sync3"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
