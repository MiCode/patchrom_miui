.class public Landroid/media/videoeditor/EffectColor;
.super Landroid/media/videoeditor/Effect;
.source "EffectColor.java"


# static fields
.field public static final GRAY:I = 0x7f7f7f

.field public static final GREEN:I = 0xff00

.field public static final PINK:I = 0xff66cc

.field public static final TYPE_COLOR:I = 0x1

.field public static final TYPE_FIFTIES:I = 0x5

.field public static final TYPE_GRADIENT:I = 0x2

.field public static final TYPE_NEGATIVE:I = 0x4

.field public static final TYPE_SEPIA:I = 0x3


# instance fields
.field private final mColor:I

.field private final mType:I


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 76
    move-object v0, p0

    move-object v2, v1

    move-wide v5, v3

    move v8, v7

    invoke-direct/range {v0 .. v8}, Landroid/media/videoeditor/EffectColor;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJII)V
    .locals 3
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "effectId"    # Ljava/lang/String;
    .param p3, "startTimeMs"    # J
    .param p5, "durationMs"    # J
    .param p7, "type"    # I
    .param p8, "color"    # I

    .prologue
    .line 95
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Effect;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 96
    packed-switch p7, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    sparse-switch p8, :sswitch_data_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :sswitch_0
    iput p8, p0, Landroid/media/videoeditor/EffectColor;->mColor:I

    .line 122
    :goto_0
    iput p7, p0, Landroid/media/videoeditor/EffectColor;->mType:I

    .line 123
    return-void

    .line 114
    :pswitch_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/videoeditor/EffectColor;->mColor:I

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 99
    :sswitch_data_0
    .sparse-switch
        0xff00 -> :sswitch_0
        0x7f7f7f -> :sswitch_0
        0xff66cc -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Landroid/media/videoeditor/EffectColor;->mColor:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/media/videoeditor/EffectColor;->mType:I

    return v0
.end method
