.class public final Landroid/nfc/tech/NfcF;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcF.java"


# static fields
.field public static final EXTRA_PMM:Ljava/lang/String; = "pmm"

.field public static final EXTRA_SC:Ljava/lang/String; = "systemcode"

.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field private mManufacturer:[B

.field private mSystemCode:[B


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

    const/4 v1, 0x4

    .line 68
    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    .line 45
    iput-object v2, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    .line 46
    iput-object v2, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    .line 69
    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v1, "systemcode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    .line 72
    const-string/jumbo v1, "pmm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    .line 74
    :cond_0
    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    :goto_0
    return-object v1

    .line 60
    :cond_0
    :try_start_0
    new-instance v2, Landroid/nfc/tech/NfcF;

    invoke-direct {v2, p0}, Landroid/nfc/tech/NfcF;-><init>(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
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
    .line 37
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
    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getManufacturer()[B
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mManufacturer:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/nfc/tech/NfcF;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSystemCode()[B
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/nfc/tech/NfcF;->mSystemCode:[B

    return-object v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 3

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/NfcF;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isConnected()Z
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/NfcF;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v1

    .line 147
    .local v1, "err":I
    if-eqz v1, :cond_0

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The supplied timeout is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "err":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
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
    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcF;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
