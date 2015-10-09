.class public Landroid/content/res/AssetFileDescriptor;
.super Ljava/lang/Object;
.source "AssetFileDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;,
        Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_LENGTH:J = -0x1L


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mFd:Landroid/os/ParcelFileDescriptor;

.field private final mLength:J

.field private final mStartOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Landroid/content/res/AssetFileDescriptor$1;

    invoke-direct {v0}, Landroid/content/res/AssetFileDescriptor$1;-><init>()V

    sput-object v0, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJ)V
    .locals 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J

    .prologue
    .line 59
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    .locals 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "startOffset"    # J
    .param p4, "length"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fd must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    cmp-long v0, p4, v1

    if-gez v0, :cond_1

    cmp-long v0, p2, v1

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "startOffset must be 0 when using UNKNOWN_LENGTH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    iput-object p1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 83
    iput-wide p2, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    .line 84
    iput-wide p4, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    .line 85
    iput-object p6, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    .line 86
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 157
    return-void
.end method

.method public createInputStream()Ljava/io/FileInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 169
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 171
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseInputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0
.end method

.method public createOutputStream()Ljava/io/FileOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 186
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p0}, Landroid/content/res/AssetFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    return v0
.end method

.method public getDeclaredLength()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 132
    iget-wide v2, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 133
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    .line 136
    :cond_0
    :goto_0
    return-wide v0

    .line 135
    :cond_1
    iget-object v2, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v0

    .line 136
    .local v0, "len":J
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getStartOffset()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AssetFileDescriptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 347
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 348
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mStartOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    iget-wide v0, p0, Landroid/content/res/AssetFileDescriptor;->mLength:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 350
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v0, p0, Landroid/content/res/AssetFileDescriptor;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
