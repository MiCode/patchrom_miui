.class Lcom/android/settings/dirac/DiracEqualizer$EQConfig;
.super Ljava/lang/Object;
.source "DiracEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dirac/DiracEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EQConfig"
.end annotation


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;

.field public final mType:I

.field public final mValues:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[FI)V
    .locals 1
    .parameter "id"
    .parameter "title"
    .parameter "values"
    .parameter "type"

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    invoke-static {}, Lcom/android/settings/dirac/DiracEqualizer;->access$500()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    .line 500
    iput-object p1, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mId:Ljava/lang/String;

    .line 501
    iput-object p2, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mTitle:Ljava/lang/String;

    .line 502
    iput p4, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mType:I

    .line 503
    invoke-virtual {p0, p3}, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->updateValues([F)V

    .line 504
    return-void
.end method


# virtual methods
.method public updateValues([F)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 507
    if-eqz p1, :cond_0

    array-length v0, p1

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    iget-object v1, p0, Lcom/android/settings/dirac/DiracEqualizer$EQConfig;->mValues:[F

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 510
    :cond_0
    return-void
.end method
