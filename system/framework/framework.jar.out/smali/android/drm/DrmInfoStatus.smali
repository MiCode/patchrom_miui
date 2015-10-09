.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "DrmInfoStatus.java"


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final data:Landroid/drm/ProcessedData;

.field public final infoType:I

.field public final mimeType:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(IILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "infoType"    # I
    .param p3, "data"    # Landroid/drm/ProcessedData;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-static {p2}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    invoke-direct {p0, p1}, Landroid/drm/DrmInfoStatus;->isValidStatusCode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
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

    .line 83
    :cond_1
    if-eqz p4, :cond_2

    const-string v0, ""

    if-ne p4, v0, :cond_3

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mimeType is null or an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 88
    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 89
    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 90
    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private isValidStatusCode(I)Z
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 94
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
