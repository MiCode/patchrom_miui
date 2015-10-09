.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyStoreParameter;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Landroid/security/KeyStoreParameter;

    iget v1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter$1;)V

    return-object v0
.end method

.method public setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .locals 1
    .param p1, "required"    # Z

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    .line 115
    :goto_0
    return-object p0

    .line 113
    :cond_0
    iget v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    goto :goto_0
.end method
