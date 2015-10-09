.class public final Landroid/provider/BrowserContract$Bookmarks;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Landroid/provider/BrowserContract$CommonColumns;
.implements Landroid/provider/BrowserContract$ImageColumns;
.implements Landroid/provider/BrowserContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final BOOKMARK_TYPE_BOOKMARK:I = 0x1

.field public static final BOOKMARK_TYPE_BOOKMARK_BAR_FOLDER:I = 0x3

.field public static final BOOKMARK_TYPE_FOLDER:I = 0x2

.field public static final BOOKMARK_TYPE_MOBILE_FOLDER:I = 0x5

.field public static final BOOKMARK_TYPE_OTHER_FOLDER:I = 0x4

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/bookmark"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/bookmark"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

.field public static final INSERT_AFTER:Ljava/lang/String; = "insert_after"

.field public static final INSERT_AFTER_SOURCE_ID:Ljava/lang/String; = "insert_after_source"

.field public static final IS_DELETED:Ljava/lang/String; = "deleted"

.field public static final IS_FOLDER:Ljava/lang/String; = "folder"

.field public static final PARAM_ACCOUNT_NAME:Ljava/lang/String; = "acct_name"

.field public static final PARAM_ACCOUNT_TYPE:Ljava/lang/String; = "acct_type"

.field public static final PARENT:Ljava/lang/String; = "parent"

.field public static final PARENT_SOURCE_ID:Ljava/lang/String; = "parent_source"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final QUERY_PARAMETER_SHOW_DELETED:Ljava/lang/String; = "show_deleted"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Landroid/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 303
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "folder"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildFolderUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "folderId"    # J

    .prologue
    .line 324
    sget-object v0, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI_DEFAULT_FOLDER:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
