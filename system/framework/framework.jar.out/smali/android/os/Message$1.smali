.class final Landroid/os/Message$1;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/os/Message;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/Message;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 479
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 480
    .local v0, "msg":Landroid/os/Message;
    # invokes: Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Landroid/os/Message;->access$000(Landroid/os/Message;Landroid/os/Parcel;)V

    .line 481
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/os/Message$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/os/Message;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 485
    new-array v0, p1, [Landroid/os/Message;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 477
    invoke-virtual {p0, p1}, Landroid/os/Message$1;->newArray(I)[Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method
