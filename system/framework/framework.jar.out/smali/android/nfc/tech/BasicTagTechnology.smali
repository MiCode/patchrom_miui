.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "BasicTagTechnology.java"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field mIsConnected:Z

.field mSelectedTechnology:I

.field final mTag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Landroid/nfc/Tag;I)V
    .locals 0
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    .line 40
    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    .line 41
    return-void
.end method


# virtual methods
.method checkConnected()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call connect() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    invoke-interface {v1}, Landroid/nfc/INfcTag;->resetTimeouts()V

    .line 123
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 128
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 130
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 128
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 128
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    throw v1
.end method

.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    iget v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v2, v3, v4}, Landroid/nfc/INfcTag;->connect(II)I

    move-result v1

    .line 76
    .local v1, "errorCode":I
    if-nez v1, :cond_0

    .line 78
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-virtual {v2, v3}, Landroid/nfc/Tag;->setConnectedTechnology(I)V

    .line 79
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 91
    return-void

    .line 80
    :cond_0
    const/16 v2, -0x15

    if-ne v1, v2, :cond_1

    .line 81
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Connecting to this technology is not supported by the NFC adapter."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "errorCode":I
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method getMaxTransceiveLengthInternal()I
    .locals 3

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getMaxTransceiveLength(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NFC"

    const-string v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTag()Landroid/nfc/Tag;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v2, :cond_0

    .line 66
    :goto_0
    return v1

    .line 63
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->isPresent(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reconnect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Technology not connected yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->reconnect(I)I

    move-result v1

    .line 103
    .local v1, "errorCode":I
    if-eqz v1, :cond_1

    .line 104
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 105
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 106
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "errorCode":I
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    .line 110
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    .line 111
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "errorCode":I
    :cond_1
    return-void
.end method

.method transceive([BZ)[B
    .locals 4
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    .line 146
    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v1

    .line 148
    .local v1, "result":Landroid/nfc/TransceiveResult;
    if-nez v1, :cond_0

    .line 149
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "result":Landroid/nfc/TransceiveResult;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "result":Landroid/nfc/TransceiveResult;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->getResponseOrThrow()[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method
