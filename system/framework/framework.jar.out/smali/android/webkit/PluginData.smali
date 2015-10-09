.class public final Landroid/webkit/PluginData;
.super Ljava/lang/Object;
.source "PluginData.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContentLength:J

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field private mStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLjava/util/Map;I)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "length"    # J
    .param p5, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/webkit/PluginData;->mStream:Ljava/io/InputStream;

    .line 78
    iput-wide p2, p0, Landroid/webkit/PluginData;->mContentLength:J

    .line 79
    iput-object p4, p0, Landroid/webkit/PluginData;->mHeaders:Ljava/util/Map;

    .line 80
    iput p5, p0, Landroid/webkit/PluginData;->mStatusCode:I

    .line 81
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    iget-wide v0, p0, Landroid/webkit/PluginData;->mContentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Landroid/webkit/PluginData;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/webkit/PluginData;->mStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iget v0, p0, Landroid/webkit/PluginData;->mStatusCode:I

    return v0
.end method
