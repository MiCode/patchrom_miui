.class Landroid/media/MediaFocusControl$RccPlaybackState;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RccPlaybackState"
.end annotation


# instance fields
.field public mPositionMs:J

.field public mSpeed:F

.field public mState:I


# direct methods
.method public constructor <init>(IJF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "positionMs"    # J
    .param p4, "speed"    # F

    .prologue
    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput p1, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mState:I

    .line 1148
    iput-wide p2, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mPositionMs:J

    .line 1149
    iput p4, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mSpeed:F

    .line 1150
    return-void
.end method

.method private posToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1164
    iget-wide v0, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mPositionMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1165
    const-string v0, "PLAYBACK_POSITION_INVALID"

    .line 1169
    :goto_0
    return-object v0

    .line 1166
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mPositionMs:J

    const-wide v2, -0x7fe688e67fe67d00L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1167
    const-string v0, "PLAYBACK_POSITION_ALWAYS_UNKNOWN"

    goto :goto_0

    .line 1169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mPositionMs:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private stateToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1196
    const-string v0, "[invalid playstate]"

    :goto_0
    return-object v0

    .line 1176
    :pswitch_0
    const-string v0, "PLAYSTATE_NONE"

    goto :goto_0

    .line 1178
    :pswitch_1
    const-string v0, "PLAYSTATE_STOPPED"

    goto :goto_0

    .line 1180
    :pswitch_2
    const-string v0, "PLAYSTATE_PAUSED"

    goto :goto_0

    .line 1182
    :pswitch_3
    const-string v0, "PLAYSTATE_PLAYING"

    goto :goto_0

    .line 1184
    :pswitch_4
    const-string v0, "PLAYSTATE_FAST_FORWARDING"

    goto :goto_0

    .line 1186
    :pswitch_5
    const-string v0, "PLAYSTATE_REWINDING"

    goto :goto_0

    .line 1188
    :pswitch_6
    const-string v0, "PLAYSTATE_SKIPPING_FORWARDS"

    goto :goto_0

    .line 1190
    :pswitch_7
    const-string v0, "PLAYSTATE_SKIPPING_BACKWARDS"

    goto :goto_0

    .line 1192
    :pswitch_8
    const-string v0, "PLAYSTATE_BUFFERING"

    goto :goto_0

    .line 1194
    :pswitch_9
    const-string v0, "PLAYSTATE_ERROR"

    goto :goto_0

    .line 1174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 1153
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mState:I

    .line 1154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mPositionMs:J

    .line 1155
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mSpeed:F

    .line 1156
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/media/MediaFocusControl$RccPlaybackState;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/MediaFocusControl$RccPlaybackState;->posToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/MediaFocusControl$RccPlaybackState;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
