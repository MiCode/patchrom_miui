.class public final Landroid/security/KeyStoreParameter;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreParameter$1;,
        Landroid/security/KeyStoreParameter$Builder;
    }
.end annotation


# instance fields
.field private mFlags:I


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/security/KeyStoreParameter;->mFlags:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(ILandroid/security/KeyStoreParameter$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/security/KeyStoreParameter$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/security/KeyStoreParameter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Landroid/security/KeyStoreParameter;->mFlags:I

    return v0
.end method

.method public isEncryptionRequired()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Landroid/security/KeyStoreParameter;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
