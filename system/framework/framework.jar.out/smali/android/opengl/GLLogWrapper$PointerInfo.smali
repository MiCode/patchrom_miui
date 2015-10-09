.class Landroid/opengl/GLLogWrapper$PointerInfo;
.super Ljava/lang/Object;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerInfo"
.end annotation


# instance fields
.field public mPointer:Ljava/nio/Buffer;

.field public mSize:I

.field public mStride:I

.field public mTempByteBuffer:Ljava/nio/ByteBuffer;

.field public mType:I

.field final synthetic this$0:Landroid/opengl/GLLogWrapper;


# direct methods
.method public constructor <init>(Landroid/opengl/GLLogWrapper;)V
    .locals 0

    .prologue
    .line 3905
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3906
    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V
    .locals 0
    .param p2, "size"    # I
    .param p3, "type"    # I
    .param p4, "stride"    # I
    .param p5, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 3908
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3909
    iput p2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    .line 3910
    iput p3, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    .line 3911
    iput p4, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    .line 3912
    iput-object p5, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    .line 3913
    return-void
.end method


# virtual methods
.method public bindByteBuffer()V
    .locals 3

    .prologue
    .line 3937
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 3938
    return-void

    .line 3937
    :cond_0
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    # invokes: Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    invoke-static {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getStride()I
    .locals 2

    .prologue
    .line 3933
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p0, v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v0

    iget v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public sizeof(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 3916
    sparse-switch p1, :sswitch_data_0

    .line 3928
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 3922
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 3924
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 3926
    goto :goto_0

    .line 3916
    nop

    :sswitch_data_0
    .sparse-switch
        0x1400 -> :sswitch_0
        0x1401 -> :sswitch_0
        0x1402 -> :sswitch_1
        0x1406 -> :sswitch_3
        0x140c -> :sswitch_2
    .end sparse-switch
.end method

.method public unbindByteBuffer()V
    .locals 1

    .prologue
    .line 3941
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 3942
    return-void
.end method
