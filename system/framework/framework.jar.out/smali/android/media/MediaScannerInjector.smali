.class Landroid/media/MediaScannerInjector;
.super Ljava/lang/Object;
.source "MediaScannerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static keepMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "oldMimeType"    # Ljava/lang/String;
    .param p1, "newMimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 6
    if-eqz p1, :cond_0

    const-string v3, "audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 9
    .local v0, "newTypeIsAudio":Z
    :goto_0
    const-string/jumbo v3, "video/mp2p"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 19
    :cond_1
    :goto_1
    return v2

    .end local v0    # "newTypeIsAudio":Z
    :cond_2
    move v0, v1

    .line 6
    goto :goto_0

    .line 14
    .restart local v0    # "newTypeIsAudio":Z
    :cond_3
    const-string/jumbo v3, "video/x-matroska"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    :cond_4
    move v2, v1

    .line 19
    goto :goto_1
.end method
