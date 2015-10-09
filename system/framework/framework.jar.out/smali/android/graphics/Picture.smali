.class public Landroid/graphics/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Picture$RecordingCanvas;
    }
.end annotation


# static fields
.field private static final WORKING_STREAM_STORAGE:I = 0x4000


# instance fields
.field public final createdFromStream:Z

.field private final mNativePicture:I

.field private mRecordingCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {v1}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(IZ)V

    .line 46
    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 1
    .param p1, "nativePicture"    # I
    .param p2, "fromStream"    # Z

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 175
    :cond_0
    iput p1, p0, Landroid/graphics/Picture;->mNativePicture:I

    .line 176
    iput-boolean p2, p0, Landroid/graphics/Picture;->createdFromStream:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Picture;

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Picture;->mNativePicture:I

    :goto_0
    invoke-static {v0}, Landroid/graphics/Picture;->nativeConstructor(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Picture;-><init>(IZ)V

    .line 55
    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/Picture;

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {p0, v1}, Landroid/graphics/Picture;->nativeCreateFromStream(Ljava/io/InputStream;[B)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Picture;-><init>(IZ)V

    return-object v0
.end method

.method private static native nativeBeginRecording(III)I
.end method

.method private static native nativeConstructor(I)I
.end method

.method private static native nativeCreateFromStream(Ljava/io/InputStream;[B)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeDraw(II)V
.end method

.method private static native nativeEndRecording(I)V
.end method

.method private static native nativeWriteToStream(ILjava/io/OutputStream;[B)Z
.end method


# virtual methods
.method public beginRecording(II)Landroid/graphics/Canvas;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v1, p1, p2}, Landroid/graphics/Picture;->nativeBeginRecording(III)I

    move-result v0

    .line 67
    .local v0, "ni":I
    new-instance v1, Landroid/graphics/Picture$RecordingCanvas;

    invoke-direct {v1, p0, v0}, Landroid/graphics/Picture$RecordingCanvas;-><init>(Landroid/graphics/Picture;I)V

    iput-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 68
    iget-object v1, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    return-object v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 110
    :cond_0
    iget v0, p1, Landroid/graphics/Canvas;->mNativeCanvas:I

    iget v1, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0, v1}, Landroid/graphics/Picture;->nativeDraw(II)V

    .line 111
    return-void
.end method

.method public endRecording()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Picture;->mRecordingCanvas:Landroid/graphics/Canvas;

    .line 80
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeEndRecording(I)V

    .line 82
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    invoke-static {v0}, Landroid/graphics/Picture;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getHeight()I
.end method

.method public native getWidth()I
.end method

.method final ni()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    return v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget v0, p0, Landroid/graphics/Picture;->mNativePicture:I

    const/16 v1, 0x4000

    new-array v1, v1, [B

    invoke-static {v0, p1, v1}, Landroid/graphics/Picture;->nativeWriteToStream(ILjava/io/OutputStream;[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 157
    :cond_1
    return-void
.end method
