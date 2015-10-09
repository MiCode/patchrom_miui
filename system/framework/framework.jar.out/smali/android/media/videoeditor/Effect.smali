.class public abstract Landroid/media/videoeditor/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# instance fields
.field protected mDurationMs:J

.field private final mMediaItem:Landroid/media/videoeditor/MediaItem;

.field protected mStartTimeMs:J

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 48
    iput-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    .line 49
    iput-wide v1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 50
    iput-wide v1, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "effectId"    # Ljava/lang/String;
    .param p3, "startTimeMs"    # J
    .param p5, "durationMs"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media item cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    cmp-long v0, p3, v1

    if-ltz v0, :cond_1

    cmp-long v0, p5, v1

    if-gez v0, :cond_2

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time Or/And Duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    add-long v0, p3, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time and duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    iput-object p1, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 76
    iput-object p2, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    .line 77
    iput-wide p3, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 78
    iput-wide p5, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 185
    instance-of v0, p1, Landroid/media/videoeditor/Effect;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/Effect;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .locals 9
    .param p1, "durationMs"    # J

    .prologue
    .line 97
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-wide v0, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 107
    iget-wide v3, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 108
    .local v3, "oldDurationMs":J
    iput-wide p1, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 110
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    iget-wide v5, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    .line 111
    return-void
.end method

.method public setStartTime(J)V
    .locals 9
    .param p1, "startTimeMs"    # J

    .prologue
    .line 130
    iget-wide v3, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    add-long/2addr v3, p1

    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Start time is too large"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 135
    iget-wide v1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 136
    .local v1, "oldStartTimeMs":J
    iput-wide p1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 138
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v3, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    iget-wide v5, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    .line 139
    return-void
.end method

.method public setStartTimeAndDuration(JJ)V
    .locals 9
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J

    .prologue
    .line 157
    add-long v5, p1, p3

    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid start time or duration"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 162
    iget-wide v1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 163
    .local v1, "oldStartTimeMs":J
    iget-wide v3, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 165
    .local v3, "oldDurationMs":J
    iput-wide p1, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    .line 166
    iput-wide p3, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    .line 168
    iget-object v0, p0, Landroid/media/videoeditor/Effect;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v5, p0, Landroid/media/videoeditor/Effect;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/videoeditor/Effect;->mDurationMs:J

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    .line 169
    return-void
.end method
