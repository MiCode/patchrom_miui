.class public final Landroid/media/MediaDrm$ProvisionRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionRequest"
.end annotation


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mData:[B

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/media/MediaDrm$ProvisionRequest;->mDefaultUrl:Ljava/lang/String;

    return-object v0
.end method
