.class public Landroid/drm/DrmConvertedStatus;
.super Ljava/lang/Object;
.source "DrmConvertedStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_INPUTDATA_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final convertedData:[B

.field public final offset:I

.field public final statusCode:I


# direct methods
.method public constructor <init>(I[BI)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "convertedData"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-direct {p0, p1}, Landroid/drm/DrmConvertedStatus;->isValidStatusCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput p1, p0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    .line 74
    iput-object p2, p0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 75
    iput p3, p0, Landroid/drm/DrmConvertedStatus;->offset:I

    .line 76
    return-void
.end method

.method private isValidStatusCode(I)Z
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 79
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
