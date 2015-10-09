.class Landroid/media/videoeditor/MediaArtistNativeHelper$2;
.super Ljava/lang/Object;
.source "MediaArtistNativeHelper.java"

# interfaces
.implements Landroid/media/videoeditor/MediaArtistNativeHelper$NativeGetPixelsListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/videoeditor/MediaArtistNativeHelper;->getPixelsList(Ljava/lang/String;IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field final synthetic val$callback:Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;

.field final synthetic val$decArray:[I

.field final synthetic val$decBuffer:Ljava/nio/IntBuffer;

.field final synthetic val$decHeight:I

.field final synthetic val$decWidth:I

.field final synthetic val$needToMassage:Z

.field final synthetic val$outHeight:I

.field final synthetic val$outWidth:I

.field final synthetic val$thumbnailSize:I

.field final synthetic val$tmpBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$videoRotation:I


# direct methods
.method constructor <init>(Landroid/media/videoeditor/MediaArtistNativeHelper;IILjava/nio/IntBuffer;[IIZLandroid/graphics/Bitmap;IIILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .locals 0

    .prologue
    .line 3827
    iput-object p1, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->this$0:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iput p2, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outWidth:I

    iput p3, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outHeight:I

    iput-object p4, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    iput-object p5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decArray:[I

    iput p6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$thumbnailSize:I

    iput-boolean p7, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$needToMassage:Z

    iput-object p8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$tmpBitmap:Landroid/graphics/Bitmap;

    iput p9, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decWidth:I

    iput p10, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decHeight:I

    iput p11, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$videoRotation:I

    iput-object p12, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$callback:Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 3830
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outWidth:I

    iget v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3834
    .local v2, "outBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 3835
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decArray:[I

    const/4 v7, 0x0

    iget v8, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$thumbnailSize:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 3836
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 3838
    iget-boolean v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$needToMassage:Z

    if-nez v5, :cond_0

    .line 3840
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3858
    :goto_0
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$callback:Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;

    invoke-interface {v5, v2, p1}, Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;->onThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3859
    return-void

    .line 3843
    :cond_0
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$tmpBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 3849
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3850
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 3851
    .local v1, "m":Landroid/graphics/Matrix;
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decWidth:I

    int-to-float v5, v5

    div-float v3, v10, v5

    .line 3852
    .local v3, "sx":F
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$decHeight:I

    int-to-float v5, v5

    div-float v4, v10, v5

    .line 3853
    .local v4, "sy":F
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3854
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$videoRotation:I

    int-to-float v5, v5

    invoke-virtual {v1, v5, v9, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 3855
    iget v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outWidth:I

    int-to-float v5, v5

    iget v6, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$outHeight:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3856
    iget-object v5, p0, Landroid/media/videoeditor/MediaArtistNativeHelper$2;->val$tmpBitmap:Landroid/graphics/Bitmap;

    # getter for: Landroid/media/videoeditor/MediaArtistNativeHelper;->sResizePaint:Landroid/graphics/Paint;
    invoke-static {}, Landroid/media/videoeditor/MediaArtistNativeHelper;->access$000()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v0, v5, v1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method
