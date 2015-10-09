.class final Landroid/view/Surface$1;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
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
        "Landroid/view/Surface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    .line 56
    .local v1, "s":Landroid/view/Surface;
    invoke-virtual {v1, p1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "s":Landroid/view/Surface;
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Surface"

    const-string v3, "Exception creating surface from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/Surface;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Landroid/view/Surface;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Landroid/view/Surface$1;->newArray(I)[Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
