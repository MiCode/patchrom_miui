.class public Landroid/provider/Downloads$Impl$RequestHeaders;
.super Ljava/lang/Object;
.source "Downloads.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Downloads$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestHeaders"
.end annotation


# static fields
.field public static final COLUMN_DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final COLUMN_HEADER:Ljava/lang/String; = "header"

.field public static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field public static final HEADERS_DB_TABLE:Ljava/lang/String; = "request_headers"

.field public static final INSERT_KEY_PREFIX:Ljava/lang/String; = "http_header_"

.field public static final URI_SEGMENT:Ljava/lang/String; = "headers"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
