.class public Landroid/text/style/SuggestionRangeSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionRangeSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mBackgroundColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x15

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "backgroundColor"    # I

    .prologue
    .line 58
    iput p1, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    .line 59
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 63
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 64
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Landroid/text/style/SuggestionRangeSpan;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
