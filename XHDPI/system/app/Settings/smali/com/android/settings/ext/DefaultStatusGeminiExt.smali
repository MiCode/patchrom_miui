.class public Lcom/android/settings/ext/DefaultStatusGeminiExt;
.super Ljava/lang/Object;
.source "DefaultStatusGeminiExt.java"

# interfaces
.implements Lcom/android/settings/ext/IStatusGeminiExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 17
    const-string v0, "DefaultStatusGeminiExt"

    const-string v1, "default launched"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method
