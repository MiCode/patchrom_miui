.class public Landroid/webkit/WebHistoryItem;
.super Ljava/lang/Object;
.source "WebHistoryItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method protected declared-synchronized clone()Landroid/webkit/WebHistoryItem;
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/webkit/WebHistoryItem;->clone()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 45
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method
