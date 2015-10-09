.class public final Landroid/media/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodecInfo$CodecProfileLevel;,
        Landroid/media/MediaCodecInfo$CodecCapabilities;
    }
.end annotation


# instance fields
.field private mIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Landroid/media/MediaCodecInfo;->mIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method public final getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 291
    iget v0, p0, Landroid/media/MediaCodecInfo;->mIndex:I

    invoke-static {v0, p1}, Landroid/media/MediaCodecList;->getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/media/MediaCodecInfo;->mIndex:I

    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/media/MediaCodecInfo;->mIndex:I

    invoke-static {v0}, Landroid/media/MediaCodecList;->getSupportedTypes(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isEncoder()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Landroid/media/MediaCodecInfo;->mIndex:I

    invoke-static {v0}, Landroid/media/MediaCodecList;->isEncoder(I)Z

    move-result v0

    return v0
.end method
