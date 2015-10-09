.class public Landroid/text/style/LocaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "LocaleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 42
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    .line 39
    return-void
.end method

.method private static apply(Landroid/graphics/Paint;Ljava/util/Locale;)V
    .locals 0
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 83
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x17

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Ljava/util/Locale;)V

    .line 74
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 78
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Ljava/util/Locale;)V

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
