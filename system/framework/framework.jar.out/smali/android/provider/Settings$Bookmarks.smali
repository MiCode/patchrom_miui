.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ORDERING:Ljava/lang/String; = "ordering"

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "Bookmarks"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final sIntentProjection:[Ljava/lang/String;

.field private static final sShortcutProjection:[Ljava/lang/String;

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6253
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 6306
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "intent"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 6307
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "shortcut"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "shortcut"    # C
    .param p5, "ordering"    # I

    .prologue
    const/4 v5, 0x0

    .line 6370
    if-eqz p4, :cond_0

    .line 6371
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6375
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6376
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6377
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "folder"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6378
    :cond_2
    const-string v1, "intent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6379
    if-eqz p4, :cond_3

    const-string/jumbo v1, "shortcut"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6380
    :cond_3
    const-string/jumbo v1, "ordering"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6381
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "shortcut"    # C

    .prologue
    const/4 v5, 0x0

    .line 6322
    const/4 v8, 0x0

    .line 6324
    .local v8, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    const-string/jumbo v3, "shortcut=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string/jumbo v5, "ordering"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6329
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    if-nez v8, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 6331
    :try_start_1
    const-string v0, "intent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 6332
    .local v9, "intentURI":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 6335
    .end local v9    # "intentURI":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 6337
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v0, "Bookmarks"

    const-string v1, "Intent column not found"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6341
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 6344
    :cond_2
    return-object v8

    .line 6333
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 6396
    return-object p1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 6411
    const-string/jumbo v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 6412
    .local v7, "titleColumn":I
    const-string v8, "intent"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 6413
    .local v3, "intentColumn":I
    if-eq v7, v9, :cond_0

    if-ne v3, v9, :cond_1

    .line 6414
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The cursor must contain the TITLE and INTENT columns."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6418
    :cond_1
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6419
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 6437
    .end local v6    # "title":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 6423
    .restart local v6    # "title":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6424
    .local v4, "intentUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6425
    const-string v6, ""

    goto :goto_0

    .line 6430
    :cond_3
    const/4 v8, 0x0

    :try_start_0
    invoke-static {v4, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 6435
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 6436
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 6437
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    move-object v6, v8

    goto :goto_0

    .line 6431
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 6432
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v6, ""

    goto :goto_0

    .line 6437
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_4
    const-string v8, ""

    goto :goto_1
.end method
