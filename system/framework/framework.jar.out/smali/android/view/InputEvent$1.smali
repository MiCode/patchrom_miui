.class final Landroid/view/InputEvent$1;
.super Ljava/lang/Object;
.source "InputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEvent;
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
        "Landroid/view/InputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/InputEvent;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "token":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 223
    invoke-static {p1}, Landroid/view/KeyEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    .line 224
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 225
    invoke-static {p1}, Landroid/view/MotionEvent;->createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;

    move-result-object v1

    goto :goto_0

    .line 227
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected input event type token in parcel."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/view/InputEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/InputEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/InputEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 232
    new-array v0, p1, [Landroid/view/InputEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Landroid/view/InputEvent$1;->newArray(I)[Landroid/view/InputEvent;

    move-result-object v0

    return-object v0
.end method
