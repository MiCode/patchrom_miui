.class final Landroid/database/BulkCursorDescriptor$1;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/BulkCursorDescriptor;
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
        "Landroid/database/BulkCursorDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/database/BulkCursorDescriptor;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    new-instance v0, Landroid/database/BulkCursorDescriptor;

    invoke-direct {v0}, Landroid/database/BulkCursorDescriptor;-><init>()V

    .line 34
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    invoke-virtual {v0, p1}, Landroid/database/BulkCursorDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/database/BulkCursorDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/database/BulkCursorDescriptor;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Landroid/database/BulkCursorDescriptor;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor$1;->newArray(I)[Landroid/database/BulkCursorDescriptor;

    move-result-object v0

    return-object v0
.end method
