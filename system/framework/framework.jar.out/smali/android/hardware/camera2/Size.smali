.class public final Landroid/hardware/camera2/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/hardware/camera2/Size;->mWidth:I

    .line 32
    iput p2, p0, Landroid/hardware/camera2/Size;->mHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    instance-of v3, p1, Landroid/hardware/camera2/Size;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Landroid/hardware/camera2/Size;

    .line 53
    .local v0, "other":Landroid/hardware/camera2/Size;
    iget v3, p0, Landroid/hardware/camera2/Size;->mWidth:I

    iget v4, v0, Landroid/hardware/camera2/Size;->mWidth:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/hardware/camera2/Size;->mHeight:I

    iget v4, v0, Landroid/hardware/camera2/Size;->mHeight:I

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/hardware/camera2/Size;->mHeight:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Landroid/hardware/camera2/Size;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const-wide v6, 0xffffffffL

    .line 65
    const-wide v0, 0xffffffffL

    .line 67
    .local v0, "INT_MASK":J
    iget v4, p0, Landroid/hardware/camera2/Size;->mWidth:I

    int-to-long v4, v4

    and-long v2, v6, v4

    .line 68
    .local v2, "asLong":J
    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 70
    iget v4, p0, Landroid/hardware/camera2/Size;->mHeight:I

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v4

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/camera2/Size;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/Size;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
