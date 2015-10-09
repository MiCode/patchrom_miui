.class public final Landroid/nfc/tech/IsoDep;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "IsoDep.java"


# static fields
.field public static final EXTRA_HIST_BYTES:Ljava/lang/String; = "histbytes"

.field public static final EXTRA_HI_LAYER_RESP:Ljava/lang/String; = "hiresp"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mHiLayerResponse:[B

.field private mHistBytes:[B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .locals 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 72
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 48
    iput-object v2, p0, Landroid/nfc/tech/IsoDep;->mHiLayerResponse:[B

    .line 49
    iput-object v2, p0, Landroid/nfc/tech/IsoDep;->mHistBytes:[B

    .line 73
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 75
    const-string v1, "hiresp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/IsoDep;->mHiLayerResponse:[B

    .line 76
    const-string v1, "histbytes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/IsoDep;->mHistBytes:[B

    .line 78
    :cond_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    :goto_0
    return-object v1

    .line 63
    :cond_0
    :try_start_0
    new-instance v2, Landroid/nfc/tech/IsoDep;

    invoke-direct {v2, p0}, Landroid/nfc/tech/IsoDep;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getHiLayerResponse()[B
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/nfc/tech/IsoDep;->mHiLayerResponse:[B

    return-object v0
.end method

.method public getHistoricalBytes()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/nfc/tech/IsoDep;->mHistBytes:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/nfc/tech/IsoDep;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/IsoDep;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isExtendedLengthApduSupported()Z
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/IsoDep;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    invoke-interface {v1}, Landroid/nfc/INfcTag;->getExtendedLengthApdusSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 94
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/IsoDep;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v1

    .line 95
    .local v1, "err":I
    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The supplied timeout is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public transceive([B)[B
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/IsoDep;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
