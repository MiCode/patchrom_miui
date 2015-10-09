.class public Landroid/text/style/SpellCheckSpan;
.super Ljava/lang/Object;
.source "SpellCheckSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mSpellCheckInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x14

    return v0
.end method

.method public isSpellCheckInProgress()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    return v0
.end method

.method public setSpellCheckInProgress(Z)V
    .locals 0
    .param p1, "inProgress"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/text/style/SpellCheckSpan;->mSpellCheckInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
