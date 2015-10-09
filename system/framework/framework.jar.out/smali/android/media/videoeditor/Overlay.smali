.class public abstract Landroid/media/videoeditor/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# instance fields
.field protected mDurationMs:J

.field private final mMediaItem:Landroid/media/videoeditor/MediaItem;

.field protected mStartTimeMs:J

.field private final mUniqueId:Ljava/lang/String;

.field private final mUserAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    .line 49
    move-object v0, p0

    move-object v2, v1

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Overlay;-><init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/media/videoeditor/MediaItem;Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "mediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "overlayId"    # Ljava/lang/String;
    .param p3, "startTimeMs"    # J
    .param p5, "durationMs"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media item cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    cmp-long v0, p3, v1

    if-ltz v0, :cond_1

    cmp-long v0, p5, v1

    if-gez v0, :cond_2

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time and/OR duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    add-long v0, p3, p5

    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start time and duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    iput-object p1, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 78
    iput-object p2, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    .line 79
    iput-wide p3, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 80
    iput-wide p5, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/videoeditor/Overlay;->mUserAttributes:Ljava/util/Map;

    .line 82
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 209
    instance-of v0, p1, Landroid/media/videoeditor/Overlay;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 212
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/Overlay;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    return-wide v0
.end method

.method public getUserAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUserAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .locals 9
    .param p1, "durationMs"    # J

    .prologue
    .line 109
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-wide v0, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duration is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 119
    iget-wide v3, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 120
    .local v3, "oldDurationMs":J
    iput-wide p1, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 122
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    iget-wide v5, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    .line 123
    return-void
.end method

.method public setStartTime(J)V
    .locals 9
    .param p1, "startTimeMs"    # J

    .prologue
    .line 142
    iget-wide v3, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    add-long/2addr v3, p1

    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Start time is too large"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 148
    iget-wide v1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 149
    .local v1, "oldStartTimeMs":J
    iput-wide p1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 151
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v3, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    iget-wide v5, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    .line 152
    return-void
.end method

.method public setStartTimeAndDuration(JJ)V
    .locals 9
    .param p1, "startTimeMs"    # J
    .param p3, "durationMs"    # J

    .prologue
    .line 161
    add-long v5, p1, p3

    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid start time or duration"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 167
    iget-wide v1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 168
    .local v1, "oldStartTimeMs":J
    iget-wide v3, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 170
    .local v3, "oldDurationMs":J
    iput-wide p1, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    .line 171
    iput-wide p3, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    .line 173
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mMediaItem:Landroid/media/videoeditor/MediaItem;

    iget-wide v5, p0, Landroid/media/videoeditor/Overlay;->mStartTimeMs:J

    iget-wide v7, p0, Landroid/media/videoeditor/Overlay;->mDurationMs:J

    invoke-virtual/range {v0 .. v8}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJJJ)V

    .line 174
    return-void
.end method

.method public setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Landroid/media/videoeditor/Overlay;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method
