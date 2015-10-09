.class public Landroid/media/videoeditor/TransitionSliding;
.super Landroid/media/videoeditor/Transition;
.source "TransitionSliding.java"


# static fields
.field public static final DIRECTION_BOTTOM_OUT_TOP_IN:I = 0x3

.field public static final DIRECTION_LEFT_OUT_RIGHT_IN:I = 0x1

.field public static final DIRECTION_RIGHT_OUT_LEFT_IN:I = 0x0

.field public static final DIRECTION_TOP_OUT_BOTTOM_IN:I = 0x2


# instance fields
.field private final mSlidingDirection:I


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 43
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V
    .locals 2
    .param p1, "transitionId"    # Ljava/lang/String;
    .param p2, "afterMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p3, "beforeMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I
    .param p7, "direction"    # I

    .prologue
    .line 65
    invoke-direct/range {p0 .. p6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 66
    packed-switch p7, :pswitch_data_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid direction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    iput p7, p0, Landroid/media/videoeditor/TransitionSliding;->mSlidingDirection:I

    .line 77
    return-void

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method generate()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/media/videoeditor/Transition;->generate()V

    .line 94
    return-void
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Landroid/media/videoeditor/TransitionSliding;->mSlidingDirection:I

    return v0
.end method
