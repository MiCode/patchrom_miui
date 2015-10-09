.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public flags:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(IIJI)V
    .locals 0
    .param p1, "newOffset"    # I
    .param p2, "newSize"    # I
    .param p3, "newTimeUs"    # J
    .param p5, "newFlags"    # I

    .prologue
    .line 131
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 132
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 133
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 134
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 135
    return-void
.end method
