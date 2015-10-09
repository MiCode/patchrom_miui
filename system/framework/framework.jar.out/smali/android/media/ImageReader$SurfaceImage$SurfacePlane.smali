.class Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader$SurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mIndex:I

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$1:Landroid/media/ImageReader$SurfaceImage;


# direct methods
.method private constructor <init>(Landroid/media/ImageReader$SurfaceImage;III)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "rowStride"    # I
    .param p4, "pixelStride"    # I

    .prologue
    .line 644
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 645
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mIndex:I

    .line 646
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    .line 647
    iput p4, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    .line 648
    return-void
.end method

.method static synthetic access$900(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/ImageReader$SurfaceImage$SurfacePlane;

    .prologue
    .line 642
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private clearBuffer()V
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 685
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    # invokes: Landroid/media/ImageReader$SurfaceImage;->isImageValid()Z
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$1100(Landroid/media/ImageReader$SurfaceImage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 661
    :goto_0
    return-object v0

    .line 658
    :cond_1
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mIndex:I

    # invokes: Landroid/media/ImageReader$SurfaceImage;->nativeImageGetBuffer(I)Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->access$1200(Landroid/media/ImageReader$SurfaceImage;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 661
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getPixelStride()I
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    # invokes: Landroid/media/ImageReader$SurfaceImage;->isImageValid()Z
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$1100(Landroid/media/ImageReader$SurfaceImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    return v0

    .line 670
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowStride()I
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    # invokes: Landroid/media/ImageReader$SurfaceImage;->isImageValid()Z
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->access$1100(Landroid/media/ImageReader$SurfaceImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    return v0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image is already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
