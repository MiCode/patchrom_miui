.class public final Landroid/nfc/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConnectedTechnology:I

.field final mId:[B

.field final mServiceHandle:I

.field final mTagService:Landroid/nfc/INfcTag;

.field final mTechExtras:[Landroid/os/Bundle;

.field final mTechList:[I

.field final mTechStringList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Landroid/nfc/Tag$1;

    invoke-direct {v0}, Landroid/nfc/Tag$1;-><init>()V

    sput-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V
    .locals 2
    .param p1, "id"    # [B
    .param p2, "techList"    # [I
    .param p3, "techListExtras"    # [Landroid/os/Bundle;
    .param p4, "serviceHandle"    # I
    .param p5, "tagService"    # Landroid/nfc/INfcTag;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    if-nez p2, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rawTargets cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Landroid/nfc/Tag;->mId:[B

    .line 131
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    .line 132
    invoke-direct {p0, p2}, Landroid/nfc/Tag;->generateTechStringList([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    .line 134
    array-length v0, p2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    iput-object v0, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    .line 135
    iput p4, p0, Landroid/nfc/Tag;->mServiceHandle:I

    .line 136
    iput-object p5, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 139
    return-void
.end method

.method public static createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;
    .locals 6
    .param p0, "id"    # [B
    .param p1, "techList"    # [I
    .param p2, "techListExtras"    # [Landroid/os/Bundle;

    .prologue
    .line 153
    new-instance v0, Landroid/nfc/Tag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    return-object v0
.end method

.method private generateTechStringList([I)[Ljava/lang/String;
    .locals 6
    .param p1, "techList"    # [I

    .prologue
    .line 157
    array-length v1, p1

    .line 158
    .local v1, "size":I
    new-array v2, v1, [Ljava/lang/String;

    .line 159
    .local v2, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 160
    aget v3, p1, v0

    packed-switch v3, :pswitch_data_0

    .line 192
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tech type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :pswitch_0
    const-class v3, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 159
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :pswitch_1
    const-class v3, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 168
    :pswitch_2
    const-class v3, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 171
    :pswitch_3
    const-class v3, Landroid/nfc/tech/Ndef;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 174
    :pswitch_4
    const-class v3, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 177
    :pswitch_5
    const-class v3, Landroid/nfc/tech/NfcA;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 180
    :pswitch_6
    const-class v3, Landroid/nfc/tech/NfcB;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 183
    :pswitch_7
    const-class v3, Landroid/nfc/tech/NfcF;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 186
    :pswitch_8
    const-class v3, Landroid/nfc/tech/NfcV;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 189
    :pswitch_9
    const-class v3, Landroid/nfc/tech/NfcBarcode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 195
    :cond_0
    return-object v2

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method static readBytesWithNull(Landroid/os/Parcel;)[B
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 337
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .local v0, "len":I
    const/4 v1, 0x0

    .line 339
    .local v1, "result":[B
    if-ltz v0, :cond_0

    .line 340
    new-array v1, v0, [B

    .line 341
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 343
    :cond_0
    return-object v1
.end method

.method static writeBytesWithNull(Landroid/os/Parcel;[B)V
    .locals 1
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "b"    # [B

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedTechnology()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    return v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/nfc/Tag;->mId:[B

    return-object v0
.end method

.method public getServiceHandle()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/nfc/Tag;->mServiceHandle:I

    return v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public getTechExtras(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "tech"    # I

    .prologue
    .line 299
    const/4 v1, -0x1

    .line 300
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 301
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 302
    move v1, v0

    .line 306
    :cond_0
    if-gez v1, :cond_2

    .line 307
    const/4 v2, 0x0

    .line 310
    :goto_1
    return-object v2

    .line 300
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_2
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    aget-object v2, v2, v1

    goto :goto_1
.end method

.method public getTechList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    return-object v0
.end method

.method public hasTech(I)Z
    .locals 5
    .param p1, "techType"    # I

    .prologue
    .line 291
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 292
    .local v3, "tech":I
    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    .line 294
    .end local v3    # "tech":I
    :goto_1
    return v4

    .line 291
    .restart local v3    # "tech":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "tech":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public rediscover()Landroid/nfc/Tag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 270
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Close connection to the technology first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-nez v2, :cond_1

    .line 274
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Mock tags don\'t support this operation."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v1

    .line 278
    .local v1, "newTag":Landroid/nfc/Tag;
    if-eqz v1, :cond_2

    .line 279
    return-object v1

    .line 281
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to rediscover tag"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1    # "newTag":Landroid/nfc/Tag;
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service dead"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized setConnectedTechnology(I)V
    .locals 2
    .param p1, "technology"    # I

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 412
    iput p1, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 414
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close other technology first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTechnologyDisconnected()V
    .locals 1

    .prologue
    .line 433
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 434
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TAG: Tech ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "techList":[Ljava/lang/String;
    array-length v1, v3

    .line 326
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 327
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 329
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 365
    .local v0, "isMock":I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mId:[B

    invoke-static {p1, v2}, Landroid/nfc/Tag;->writeBytesWithNull(Landroid/os/Parcel;[B)V

    .line 366
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 368
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 369
    iget v1, p0, Landroid/nfc/Tag;->mServiceHandle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    if-nez v0, :cond_0

    .line 372
    iget-object v1, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-interface {v1}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 374
    :cond_0
    return-void

    .end local v0    # "isMock":I
    :cond_1
    move v0, v1

    .line 363
    goto :goto_0
.end method
