.class public Lcom/android/settings/sound/RingtoneActivity;
.super Lcom/android/settings/sound/BaseSoundActivity;
.source "RingtoneActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/android/settings/sound/BaseSoundActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRingtoneTitleId()I
    .locals 1

    .prologue
    .line 10
    const v0, 0x7f0c0280

    return v0
.end method

.method protected getRingtoneType()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
