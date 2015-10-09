.class public abstract Landroid/media/videoeditor/Transition;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field public static final BEHAVIOR_LINEAR:I = 0x2

.field private static final BEHAVIOR_MAX_VALUE:I = 0x4

.field public static final BEHAVIOR_MIDDLE_FAST:I = 0x4

.field public static final BEHAVIOR_MIDDLE_SLOW:I = 0x3

.field private static final BEHAVIOR_MIN_VALUE:I = 0x0

.field public static final BEHAVIOR_SPEED_DOWN:I = 0x1

.field public static final BEHAVIOR_SPEED_UP:I


# instance fields
.field private final mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

.field private final mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

.field protected final mBehavior:I

.field protected mDurationMs:J

.field protected mFilename:Ljava/lang/String;

.field protected mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 102
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/Transition;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 103
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V
    .locals 3
    .param p1, "transitionId"    # Ljava/lang/String;
    .param p2, "afterMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p3, "beforeMediaItem"    # Landroid/media/videoeditor/MediaItem;
    .param p4, "durationMs"    # J
    .param p6, "behavior"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-ltz p6, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid behavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null media items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 127
    iput-object p3, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    .line 128
    iput-wide p4, p0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    .line 129
    iput p6, p0, Landroid/media/videoeditor/Transition;->mBehavior:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 131
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The duration is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_3
    if-eqz p2, :cond_4

    .line 135
    invoke-virtual {p2}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_4
    invoke-virtual {p3}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 476
    instance-of v0, p1, Landroid/media/videoeditor/Transition;

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 479
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/Transition;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method generate()V
    .locals 21

    .prologue
    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/Transition;->getAfterMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v5

    .line 334
    .local v5, "m1":Landroid/media/videoeditor/MediaItem;
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/Transition;->getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v6

    .line 335
    .local v6, "m2":Landroid/media/videoeditor/MediaItem;
    new-instance v8, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v8}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 336
    .local v8, "clipSettings1":Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    new-instance v9, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v9}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 337
    .local v9, "clipSettings2":Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    const/16 v16, 0x0

    .line 338
    .local v16, "transitionSetting":Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;

    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;-><init>()V

    .line 342
    .local v3, "editSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;
    const/4 v15, 0x0

    .line 344
    .local v15, "output":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    if-nez v2, :cond_0

    .line 345
    if-eqz v5, :cond_1

    .line 346
    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 350
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/videoeditor/Transition;->getTransitionSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    move-result-object v16

    .line 351
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    .line 353
    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v8

    .line 354
    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v9

    .line 355
    iget v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    iput v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 357
    iget v2, v9, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    iput v2, v9, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 363
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v2}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v10

    .line 364
    .local v10, "effectSettings_clip1":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v2}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v11

    .line 365
    .local v11, "effectSettings_clip2":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_2

    .line 366
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iget v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    int-to-long v0, v4

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v4, v0

    iput v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 365
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 347
    .end local v10    # "effectSettings_clip1":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .end local v11    # "effectSettings_clip2":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .end local v13    # "index":I
    :cond_1
    if-eqz v6, :cond_0

    .line 348
    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    goto :goto_0

    .line 368
    .restart local v10    # "effectSettings_clip1":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .restart local v11    # "effectSettings_clip2":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .restart local v13    # "index":I
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    new-array v2, v2, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 371
    const/4 v12, 0x0

    .local v12, "i":I
    const/4 v14, 0x0

    .line 372
    .local v14, "j":I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 373
    iget-object v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v2, v4, v14

    .line 374
    add-int/lit8 v12, v12, 0x1

    .line 375
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 377
    :cond_3
    const/4 v12, 0x0

    .line 378
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 379
    iget-object v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v2, v4, v14

    .line 380
    add-int/lit8 v12, v12, 0x1

    .line 381
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 383
    .end local v10    # "effectSettings_clip1":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .end local v11    # "effectSettings_clip2":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .end local v12    # "i":I
    .end local v13    # "index":I
    .end local v14    # "j":I
    :cond_4
    if-nez v5, :cond_6

    if-eqz v6, :cond_6

    .line 385
    invoke-virtual {v6, v8}, Landroid/media/videoeditor/MediaItem;->generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 386
    invoke-virtual {v6}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v9

    .line 387
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x32

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    iput v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 388
    iget v2, v9, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    iput v2, v9, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 394
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v2}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v11

    .line 395
    .restart local v11    # "effectSettings_clip2":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    const/4 v13, 0x0

    .restart local v13    # "index":I
    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    .line 396
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iget v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    int-to-long v0, v4

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v4, v0

    iput v4, v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->startTime:I

    .line 395
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 398
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 399
    const/4 v12, 0x0

    .restart local v12    # "i":I
    const/4 v14, 0x0

    .line 400
    .restart local v14    # "j":I
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 401
    iget-object v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v2, v4, v14

    .line 402
    add-int/lit8 v12, v12, 0x1

    .line 403
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 405
    .end local v11    # "effectSettings_clip2":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .end local v12    # "i":I
    .end local v13    # "index":I
    .end local v14    # "j":I
    :cond_6
    if-eqz v5, :cond_7

    if-nez v6, :cond_7

    .line 407
    invoke-virtual {v5}, Landroid/media/videoeditor/MediaItem;->getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v8

    .line 408
    invoke-virtual {v5, v9}, Landroid/media/videoeditor/MediaItem;->generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 409
    iget v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    int-to-long v0, v2

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    iput v2, v8, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 411
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x32

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v2, v0

    iput v2, v9, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 416
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v2}, Landroid/media/videoeditor/Transition;->isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;

    move-result-object v10

    .line 417
    .restart local v10    # "effectSettings_clip1":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    iput-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    .line 418
    const/4 v12, 0x0

    .restart local v12    # "i":I
    const/4 v14, 0x0

    .line 419
    .restart local v14    # "j":I
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 420
    iget-object v4, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->effectSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    aput-object v2, v4, v14

    .line 421
    add-int/lit8 v12, v12, 0x1

    .line 422
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 426
    .end local v10    # "effectSettings_clip1":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    .end local v12    # "i":I
    .end local v14    # "j":I
    :cond_7
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    iput-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .line 427
    iget-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v4, 0x0

    aput-object v8, v2, v4

    .line 428
    iget-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->clipSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    const/4 v4, 0x1

    aput-object v9, v2, v4

    .line 429
    const/4 v2, 0x0

    iput-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->backgroundMusicSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$BackgroundMusicSettings;

    .line 430
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    iput-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .line 431
    iget-object v2, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;->transitionSettingsArray:[Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    const/4 v4, 0x0

    aput-object v16, v2, v4

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->generateTransitionClip(Landroid/media/videoeditor/MediaArtistNativeHelper$EditSettings;Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/Transition;)Ljava/lang/String;

    move-result-object v15

    .line 434
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/media/videoeditor/Transition;->setFilename(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public getAfterMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getBeforeMediaItem()Landroid/media/videoeditor/MediaItem;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    return-object v0
.end method

.method public getBehavior()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/media/videoeditor/Transition;->mBehavior:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    return-wide v0
.end method

.method getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumDuration()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x2

    .line 200
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 205
    :goto_0
    return-wide v0

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v0

    div-long/2addr v0, v4

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mAfterMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v0}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v0

    iget-object v2, p0, Landroid/media/videoeditor/Transition;->mBeforeMediaItem:Landroid/media/videoeditor/MediaItem;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaItem;->getTimelineDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    div-long/2addr v0, v4

    goto :goto_0
.end method

.method getTransitionSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "transitionAlpha":Landroid/media/videoeditor/TransitionAlpha;
    const/4 v4, 0x0

    .line 228
    .local v4, "transitionSliding":Landroid/media/videoeditor/TransitionSliding;
    const/4 v1, 0x0

    .line 229
    .local v1, "transitionCrossfade":Landroid/media/videoeditor/TransitionCrossfade;
    const/4 v2, 0x0

    .line 230
    .local v2, "transitionFadeBlack":Landroid/media/videoeditor/TransitionFadeBlack;
    const/4 v3, 0x0

    .line 231
    .local v3, "transitionSetting":Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;
    new-instance v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;

    .end local v3    # "transitionSetting":Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;
    invoke-direct {v3}, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;-><init>()V

    .line 232
    .restart local v3    # "transitionSetting":Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->duration:I

    .line 233
    instance-of v5, p0, Landroid/media/videoeditor/TransitionAlpha;

    if-eqz v5, :cond_1

    move-object v0, p0

    .line 234
    check-cast v0, Landroid/media/videoeditor/TransitionAlpha;

    .line 235
    const/16 v5, 0x101

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 236
    iput v8, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 237
    iget-object v5, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0}, Landroid/media/videoeditor/TransitionAlpha;->getBehavior()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 239
    new-instance v5, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-direct {v5}, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;-><init>()V

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 240
    iput-object v7, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    .line 241
    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v0}, Landroid/media/videoeditor/TransitionAlpha;->getPNGMaskFilename()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->file:Ljava/lang/String;

    .line 242
    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v0}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->blendingPercent:I

    .line 243
    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v0}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v6

    iput-boolean v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->invertRotation:Z

    .line 244
    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v0}, Landroid/media/videoeditor/TransitionAlpha;->getRGBFileWidth()I

    move-result v6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->rgbWidth:I

    .line 245
    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    invoke-virtual {v0}, Landroid/media/videoeditor/TransitionAlpha;->getRGBFileHeight()I

    move-result v6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;->rgbHeight:I

    .line 275
    :cond_0
    :goto_0
    return-object v3

    .line 247
    :cond_1
    instance-of v5, p0, Landroid/media/videoeditor/TransitionSliding;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 248
    check-cast v4, Landroid/media/videoeditor/TransitionSliding;

    .line 249
    const/16 v5, 0x102

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 250
    iput v8, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 251
    iget-object v5, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v4}, Landroid/media/videoeditor/TransitionSliding;->getBehavior()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 253
    iput-object v7, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 254
    new-instance v5, Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    invoke-direct {v5}, Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;-><init>()V

    iput-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    .line 255
    iget-object v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    iget-object v6, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v4}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getSlideSettingsDirection(I)I

    move-result v6

    iput v6, v5, Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;->direction:I

    goto :goto_0

    .line 257
    :cond_2
    instance-of v5, p0, Landroid/media/videoeditor/TransitionCrossfade;

    if-eqz v5, :cond_3

    move-object v1, p0

    .line 258
    check-cast v1, Landroid/media/videoeditor/TransitionCrossfade;

    .line 259
    iput v8, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 260
    iput v8, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 261
    iget-object v5, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionCrossfade;->getBehavior()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 263
    iput-object v7, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 264
    iput-object v7, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    goto :goto_0

    .line 265
    :cond_3
    instance-of v5, p0, Landroid/media/videoeditor/TransitionFadeBlack;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 266
    check-cast v2, Landroid/media/videoeditor/TransitionFadeBlack;

    .line 267
    const/16 v5, 0x103

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->videoTransitionType:I

    .line 268
    iput v8, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->audioTransitionType:I

    .line 269
    iget-object v5, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/TransitionFadeBlack;->getBehavior()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getVideoTransitionBehaviour(I)I

    move-result v5

    iput v5, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->transitionBehaviour:I

    .line 271
    iput-object v7, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->alphaSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$AlphaMagicSettings;

    .line 272
    iput-object v7, v3, Landroid/media/videoeditor/MediaArtistNativeHelper$TransitionSettings;->slideSettings:Landroid/media/videoeditor/MediaArtistNativeHelper$SlideTransitionSettings;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method invalidate()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    .line 460
    :cond_0
    return-void
.end method

.method isEffectandOverlayOverlapping(Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;I)Ljava/util/List;
    .locals 10
    .param p1, "m"    # Landroid/media/videoeditor/MediaItem;
    .param p2, "clipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .param p3, "clipNo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/videoeditor/MediaItem;",
            "Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v1, "effectSettings":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;>;"
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllOverlays()Ljava/util/List;

    move-result-object v5

    .line 298
    .local v5, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Overlay;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/videoeditor/Overlay;

    .line 299
    .local v4, "overlay":Landroid/media/videoeditor/Overlay;
    iget-object v7, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    check-cast v4, Landroid/media/videoeditor/OverlayFrame;

    .end local v4    # "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {v7, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getOverlaySettings(Landroid/media/videoeditor/OverlayFrame;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v6

    .line 300
    .local v6, "tmpEffectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    iget-object v7, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iget v9, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    invoke-virtual {v7, v6, v8, v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 302
    iget v7, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    if-eqz v7, :cond_0

    .line 303
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v6    # "tmpEffectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    :cond_1
    invoke-virtual {p1}, Landroid/media/videoeditor/MediaItem;->getAllEffects()Ljava/util/List;

    move-result-object v2

    .line 308
    .local v2, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/media/videoeditor/Effect;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 309
    .local v0, "effect":Landroid/media/videoeditor/Effect;
    instance-of v7, v0, Landroid/media/videoeditor/EffectColor;

    if-eqz v7, :cond_2

    .line 310
    iget-object v7, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    check-cast v0, Landroid/media/videoeditor/EffectColor;

    .end local v0    # "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual {v7, v0}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getEffectSettings(Landroid/media/videoeditor/EffectColor;)Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;

    move-result-object v6

    .line 311
    .restart local v6    # "tmpEffectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    iget-object v7, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    iget v8, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    iget v9, p2, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    invoke-virtual {v7, v6, v8, v9}, Landroid/media/videoeditor/MediaArtistNativeHelper;->adjustEffectsStartTimeAndDuration(Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;II)V

    .line 313
    iget v7, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->duration:I

    if-eqz v7, :cond_2

    .line 314
    instance-of v7, p1, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v7, :cond_3

    .line 315
    iget-object v8, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-object v7, p1

    check-cast v7, Landroid/media/videoeditor/MediaVideoItem;

    invoke-virtual {v7}, Landroid/media/videoeditor/MediaVideoItem;->getFps()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/media/videoeditor/MediaArtistNativeHelper;->GetClosestVideoFrameRate(I)I

    move-result v7

    iput v7, v6, Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;->fiftiesFrameRate:I

    .line 318
    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 323
    .end local v6    # "tmpEffectSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$EffectSettings;
    :cond_4
    return-object v1
.end method

.method isGenerated()Z
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDuration(J)V
    .locals 2
    .param p1, "durationMs"    # J

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The duration is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput-wide p1, p0, Landroid/media/videoeditor/Transition;->mDurationMs:J

    .line 180
    invoke-virtual {p0}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 181
    iget-object v0, p0, Landroid/media/videoeditor/Transition;->mNativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 182
    return-void
.end method

.method setFilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Landroid/media/videoeditor/Transition;->mFilename:Ljava/lang/String;

    .line 443
    return-void
.end method
