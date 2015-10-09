.class public final enum Landroid/media/DecoderCapabilities$VideoDecoder;
.super Ljava/lang/Enum;
.source "DecoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DecoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/media/DecoderCapabilities$VideoDecoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/media/DecoderCapabilities$VideoDecoder;

.field public static final enum VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    const-string v1, "VIDEO_DECODER_WMV"

    invoke-direct {v0, v1, v2}, Landroid/media/DecoderCapabilities$VideoDecoder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/DecoderCapabilities$VideoDecoder;

    sget-object v1, Landroid/media/DecoderCapabilities$VideoDecoder;->VIDEO_DECODER_WMV:Landroid/media/DecoderCapabilities$VideoDecoder;

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/DecoderCapabilities$VideoDecoder;->$VALUES:[Landroid/media/DecoderCapabilities$VideoDecoder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/media/DecoderCapabilities$VideoDecoder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/media/DecoderCapabilities$VideoDecoder;

    return-object v0
.end method

.method public static values()[Landroid/media/DecoderCapabilities$VideoDecoder;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Landroid/media/DecoderCapabilities$VideoDecoder;->$VALUES:[Landroid/media/DecoderCapabilities$VideoDecoder;

    invoke-virtual {v0}, [Landroid/media/DecoderCapabilities$VideoDecoder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/DecoderCapabilities$VideoDecoder;

    return-object v0
.end method
