.class public Landroid/text/style/BackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "BackgroundColorSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 30
    iput p1, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xc

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 55
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 56
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget v0, p0, Landroid/text/style/BackgroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
