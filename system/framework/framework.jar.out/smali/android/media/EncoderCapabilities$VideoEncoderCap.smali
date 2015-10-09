.class public Landroid/media/EncoderCapabilities$VideoEncoderCap;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoEncoderCap"
.end annotation


# instance fields
.field public final mCodec:I

.field public final mMaxBitRate:I

.field public final mMaxFrameHeight:I

.field public final mMaxFrameRate:I

.field public final mMaxFrameWidth:I

.field public final mMinBitRate:I

.field public final mMinFrameHeight:I

.field public final mMinFrameRate:I

.field public final mMinFrameWidth:I


# direct methods
.method private constructor <init>(IIIIIIIII)V
    .locals 0
    .param p1, "codec"    # I
    .param p2, "minBitRate"    # I
    .param p3, "maxBitRate"    # I
    .param p4, "minFrameRate"    # I
    .param p5, "maxFrameRate"    # I
    .param p6, "minFrameWidth"    # I
    .param p7, "maxFrameWidth"    # I
    .param p8, "minFrameHeight"    # I
    .param p9, "maxFrameHeight"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    .line 59
    iput p2, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinBitRate:I

    .line 60
    iput p3, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxBitRate:I

    .line 61
    iput p4, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameRate:I

    .line 62
    iput p5, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    .line 63
    iput p6, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    .line 64
    iput p7, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    .line 65
    iput p8, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    .line 66
    iput p9, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    .line 67
    return-void
.end method
