.class Landroid/media/ImageReader$SurfaceImage;
.super Landroid/media/Image;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private mIsImageValid:Z

.field private mLockedBuffer:J

.field private mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field final synthetic this$0:Landroid/media/ImageReader;


# direct methods
.method public constructor <init>(Landroid/media/ImageReader;)V
    .locals 1

    .prologue
    .line 547
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 549
    return-void
.end method

.method static synthetic access$000(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->createSurfacePlanes()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/ImageReader$SurfaceImage;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # Z

    .prologue
    .line 546
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->setImageValid(Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/ImageReader$SurfaceImage;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->isImageValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/ImageReader$SurfaceImage;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;
    .param p1, "x1"    # I

    .prologue
    .line 546
    invoke-direct {p0, p1}, Landroid/media/ImageReader$SurfaceImage;->nativeImageGetBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ImageReader$SurfaceImage;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage;

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage;->clearSurfacePlanes()V

    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    .prologue
    .line 626
    iget-boolean v1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_1

    .line 627
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 628
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    aget-object v1, v1, v0

    # invokes: Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V
    invoke-static {v1}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->access$900(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 630
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 627
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private createSurfacePlanes()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$1000(Landroid/media/ImageReader;)I

    move-result v1

    new-array v1, v1, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .line 638
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mNumPlanes:I
    invoke-static {v1}, Landroid/media/ImageReader;->access$1000(Landroid/media/ImageReader;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-direct {p0, v0}, Landroid/media/ImageReader$SurfaceImage;->nativeCreatePlane(I)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    move-result-object v2

    aput-object v2, v1, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_0
    return-void
.end method

.method private isImageValid()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    return v0
.end method

.method private synchronized native declared-synchronized nativeCreatePlane(I)Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeImageGetBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method private setImageValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 618
    iput-boolean p1, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 619
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # invokes: Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V
    invoke-static {v0, p0}, Landroid/media/ImageReader;->access$500(Landroid/media/ImageReader;Landroid/media/Image;)V

    .line 556
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 611
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader$SurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 615
    return-void

    .line 613
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .locals 2

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mFormat:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$600(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mHeight:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$800(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 585
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    .prologue
    .line 600
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->mPlanes:[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    invoke-virtual {v0}, [Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/Image$Plane;

    return-object v0

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReader()Landroid/media/ImageReader;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 591
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 592
    iget-wide v0, p0, Landroid/media/ImageReader$SurfaceImage;->mTimestamp:J

    return-wide v0

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 573
    iget-boolean v0, p0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    # getter for: Landroid/media/ImageReader;->mWidth:I
    invoke-static {v0}, Landroid/media/ImageReader;->access$700(Landroid/media/ImageReader;)I

    move-result v0

    return v0

    .line 576
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
