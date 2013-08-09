.class public abstract Lcom/google/zxing/common/ECI;
.super Ljava/lang/Object;
.source "ECI.java"


# instance fields
.field private final value:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/zxing/common/ECI;->value:I

    .line 31
    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/zxing/common/ECI;->value:I

    return v0
.end method
