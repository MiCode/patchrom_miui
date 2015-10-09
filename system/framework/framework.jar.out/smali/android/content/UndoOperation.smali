.class public abstract Landroid/content/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DATA:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field mOwner:Landroid/content/UndoOwner;


# direct methods
.method public constructor <init>(Landroid/content/UndoOwner;)V
    .locals 0
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 37
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 44
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public allowMerge()Z
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract commit()V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getOwner()Landroid/content/UndoOwner;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    iget-object v0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method public getOwnerData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDATA;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    iget-object v0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {v0}, Landroid/content/UndoOwner;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 77
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public matchOwner(Landroid/content/UndoOwner;)Z
    .locals 1
    .param p1, "owner"    # Landroid/content/UndoOwner;

    .prologue
    .line 68
    .local p0, "this":Landroid/content/UndoOperation;, "Landroid/content/UndoOperation<TDATA;>;"
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract redo()V
.end method

.method public abstract undo()V
.end method
