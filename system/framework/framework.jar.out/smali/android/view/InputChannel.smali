.class public final Landroid/view/InputChannel;
.super Ljava/lang/Object;
.source "InputChannel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/InputChannel;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputChannel"


# instance fields
.field private mPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/view/InputChannel$1;

    invoke-direct {v0}, Landroid/view/InputChannel$1;-><init>()V

    sput-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private native nativeDispose(Z)V
.end method

.method private native nativeDup(Landroid/view/InputChannel;)V
.end method

.method private native nativeGetName()Ljava/lang/String;
.end method

.method private static native nativeOpenInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
.end method

.method private native nativeReadFromParcel(Landroid/os/Parcel;)V
.end method

.method private native nativeTransferTo(Landroid/view/InputChannel;)V
.end method

.method private native nativeWriteToParcel(Landroid/os/Parcel;)V
.end method

.method public static openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-static {p0}, Landroid/view/InputChannel;->nativeOpenInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputChannel;->nativeDispose(Z)V

    .line 113
    return-void
.end method

.method public dup()Landroid/view/InputChannel;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    .line 134
    .local v0, "target":Landroid/view/InputChannel;
    invoke-direct {p0, v0}, Landroid/view/InputChannel;->nativeDup(Landroid/view/InputChannel;)V

    .line 135
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputChannel;->nativeDispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/view/InputChannel;->nativeGetName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "uninitialized"

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeReadFromParcel(Landroid/os/Parcel;)V

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferTo(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "outParameter"    # Landroid/view/InputChannel;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "outParameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeTransferTo(Landroid/view/InputChannel;)V

    .line 127
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/InputChannel;->nativeWriteToParcel(Landroid/os/Parcel;)V

    .line 159
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 162
    :cond_1
    return-void
.end method
