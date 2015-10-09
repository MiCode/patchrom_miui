.class public Landroid/content/ContentUris;
.super Ljava/lang/Object;
.source "ContentUris.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;
    .locals 1
    .param p0, "builder"    # Landroid/net/Uri$Builder;
    .param p1, "id"    # J

    .prologue
    .line 98
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseId(Landroid/net/Uri;)J
    .locals 3
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "last":Ljava/lang/String;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public static withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 1
    .param p0, "contentUri"    # Landroid/net/Uri;
    .param p1, "id"    # J

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
