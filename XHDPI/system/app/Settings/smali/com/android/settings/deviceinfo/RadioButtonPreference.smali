.class public Lcom/android/settings/deviceinfo/RadioButtonPreference;
.super Lmiui/preference/RadioButtonPreference;
.source "RadioButtonPreference.java"


# instance fields
.field private mMountPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmiui/preference/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/deviceinfo/RadioButtonPreference;->mMountPath:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings/deviceinfo/RadioButtonPreference;->mMountPath:Ljava/lang/String;

    .line 30
    return-void
.end method
