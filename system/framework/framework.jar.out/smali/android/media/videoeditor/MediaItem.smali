.class public abstract Landroid/media/videoeditor/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/videoeditor/MediaItem$GetThumbnailListCallback;
    }
.end annotation


# static fields
.field public static final END_OF_FILE:I = -0x1

.field public static final RENDERING_MODE_BLACK_BORDER:I = 0x0

.field public static final RENDERING_MODE_CROPPING:I = 0x2

.field public static final RENDERING_MODE_STRETCH:I = 0x1


# instance fields
.field protected mBeginTransition:Landroid/media/videoeditor/Transition;

.field private mBlankFrameFilename:Ljava/lang/String;

.field private mBlankFrameGenerated:Z

.field private final mEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation
.end field

.field protected mEndTransition:Landroid/media/videoeditor/Transition;

.field protected final mFilename:Ljava/lang/String;

.field protected mGeneratedImageClip:Ljava/lang/String;

.field private final mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

.field private final mOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mProjectPath:Ljava/lang/String;

.field protected mRegenerateClip:Z

.field private mRenderingMode:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/media/videoeditor/VideoEditor;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "editor"    # Landroid/media/videoeditor/VideoEditor;
    .param p2, "mediaItemId"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "renderingMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean v6, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    .line 115
    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    .line 131
    if-nez p3, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "MediaItem : filename is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1
    const-wide v1, 0x80000000L

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File size is more than 2GB"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_2
    iput-object p2, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    .line 145
    iput p4, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    .line 148
    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    .line 149
    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    move-object v1, p1

    .line 150
    check-cast v1, Landroid/media/videoeditor/VideoEditorImpl;

    invoke-virtual {v1}, Landroid/media/videoeditor/VideoEditorImpl;->getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    .line 151
    invoke-interface {p1}, Landroid/media/videoeditor/VideoEditor;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    .line 152
    iput-boolean v6, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 153
    iput-object v5, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public addEffect(Landroid/media/videoeditor/Effect;)V
    .locals 5
    .param p1, "effect"    # Landroid/media/videoeditor/Effect;

    .prologue
    const/4 v4, 0x1

    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULL effect cannot be applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media item mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 307
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Effect start time + effect duration > media clip duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_3
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v0, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 313
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 317
    instance-of v0, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v0, :cond_4

    .line 318
    iput-boolean v4, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 320
    :cond_4
    return-void
.end method

.method public addOverlay(Landroid/media/videoeditor/Overlay;)V
    .locals 8
    .param p1, "overlay"    # Landroid/media/videoeditor/Overlay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "NULL Overlay cannot be applied"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getMediaItem()Landroid/media/videoeditor/MediaItem;

    move-result-object v4

    if-eq v4, p0, :cond_1

    .line 422
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Media item mismatch"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 425
    :cond_1
    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overlay already exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :cond_2
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getDuration()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 430
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Overlay start time + overlay duration > media clip duration"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    :cond_3
    instance-of v4, p1, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v4, :cond_8

    move-object v1, p1

    .line 435
    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    .line 436
    .local v1, "frame":Landroid/media/videoeditor/OverlayFrame;
    invoke-virtual {v1}, Landroid/media/videoeditor/OverlayFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 437
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 438
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Overlay bitmap not specified"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    :cond_4
    instance-of v4, p0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v4, :cond_6

    .line 443
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getWidth()I

    move-result v3

    .line 444
    .local v3, "scaledWidth":I
    invoke-virtual {p0}, Landroid/media/videoeditor/MediaItem;->getHeight()I

    move-result v2

    .line 454
    .local v2, "scaledHeight":I
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v2, :cond_7

    .line 455
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bitmap dimensions must match media item dimensions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "scaledHeight":I
    .end local v3    # "scaledWidth":I
    :cond_6
    move-object v4, p0

    .line 446
    check-cast v4, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledWidth()I

    move-result v3

    .restart local v3    # "scaledWidth":I
    move-object v4, p0

    .line 447
    check-cast v4, Landroid/media/videoeditor/MediaImageItem;

    invoke-virtual {v4}, Landroid/media/videoeditor/MediaImageItem;->getScaledHeight()I

    move-result v2

    .restart local v2    # "scaledHeight":I
    goto :goto_0

    .line 459
    :cond_7
    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    move-object v4, p1

    .line 460
    check-cast v4, Landroid/media/videoeditor/OverlayFrame;

    iget-object v5, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/media/videoeditor/OverlayFrame;->save(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v6

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 468
    return-void

    .line 466
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "frame":Landroid/media/videoeditor/OverlayFrame;
    .end local v2    # "scaledHeight":I
    .end local v3    # "scaledWidth":I
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Overlay not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected adjustTransitions()V
    .locals 4

    .prologue
    .line 670
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_0

    .line 671
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    .line 672
    .local v0, "maxDurationMs":J
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    .line 673
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2, v0, v1}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .line 677
    .end local v0    # "maxDurationMs":J
    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_1

    .line 678
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getMaximumDuration()J

    move-result-wide v0

    .line 679
    .restart local v0    # "maxDurationMs":J
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 680
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2, v0, v1}, Landroid/media/videoeditor/Transition;->setDuration(J)V

    .line 683
    .end local v0    # "maxDurationMs":J
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 608
    instance-of v0, p1, Landroid/media/videoeditor/MediaItem;

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x0

    .line 611
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    check-cast p1, Landroid/media/videoeditor/MediaItem;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method generateBlankFrame(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 14
    .param p1, "clipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .prologue
    const/16 v13, 0x40

    const/4 v12, 0x0

    .line 754
    iget-boolean v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    if-nez v10, :cond_1

    .line 755
    const/16 v8, 0x40

    .line 756
    .local v8, "mWidth":I
    const/16 v7, 0x40

    .line 757
    .local v7, "mHeight":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Landroid/media/videoeditor/MediaItem;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ghost.rgb"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    .line 758
    const/4 v3, 0x0

    .line 760
    .local v3, "fl":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v3    # "fl":Ljava/io/FileOutputStream;
    .local v4, "fl":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 764
    .end local v4    # "fl":Ljava/io/FileOutputStream;
    .restart local v3    # "fl":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 766
    .local v2, "dos":Ljava/io/DataOutputStream;
    new-array v5, v8, [I

    .line 768
    .local v5, "framingBuffer":[I
    array-length v10, v5

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 771
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 772
    .local v0, "array":[B
    const/4 v9, 0x0

    .line 773
    .local v9, "tmp":I
    :goto_1
    if-ge v9, v7, :cond_0

    .line 774
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 775
    .local v6, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v6, v5, v12, v8}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 777
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 785
    .end local v6    # "intBuffer":Ljava/nio/IntBuffer;
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 789
    :goto_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameGenerated:Z

    .line 792
    .end local v0    # "array":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "fl":Ljava/io/FileOutputStream;
    .end local v5    # "framingBuffer":[I
    .end local v7    # "mHeight":I
    .end local v8    # "mWidth":I
    .end local v9    # "tmp":I
    :cond_1
    iget-object v10, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    iput-object v10, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 793
    const/4 v10, 0x5

    iput v10, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 794
    iput v12, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 795
    iput v12, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 796
    iput v12, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 798
    iput v13, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 799
    iput v13, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    .line 800
    return-void

    .line 778
    .restart local v0    # "array":[B
    .restart local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v2    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "fl":Ljava/io/FileOutputStream;
    .restart local v5    # "framingBuffer":[I
    .restart local v6    # "intBuffer":Ljava/nio/IntBuffer;
    .restart local v7    # "mHeight":I
    .restart local v8    # "mWidth":I
    .restart local v9    # "tmp":I
    :catch_0
    move-exception v10

    goto :goto_2

    .line 786
    .end local v6    # "intBuffer":Ljava/nio/IntBuffer;
    :catch_1
    move-exception v10

    goto :goto_3

    .line 761
    .end local v0    # "array":[B
    .end local v1    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v5    # "framingBuffer":[I
    .end local v9    # "tmp":I
    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method public getAllEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    return-object v0
.end method

.method public getAllOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/videoeditor/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    return-object v0
.end method

.method public abstract getAspectRatio()I
.end method

.method public getBeginTransition()Landroid/media/videoeditor/Transition;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    return-object v0
.end method

.method getClipSettings()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    .locals 5

    .prologue
    .line 724
    const/4 v2, 0x0

    .line 725
    .local v2, "mVI":Landroid/media/videoeditor/MediaVideoItem;
    const/4 v1, 0x0

    .line 726
    .local v1, "mII":Landroid/media/videoeditor/MediaImageItem;
    new-instance v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    invoke-direct {v0}, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;-><init>()V

    .line 727
    .local v0, "clipSettings":Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;
    invoke-virtual {p0, v0}, Landroid/media/videoeditor/MediaItem;->initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V

    .line 728
    instance-of v3, p0, Landroid/media/videoeditor/MediaVideoItem;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 729
    check-cast v2, Landroid/media/videoeditor/MediaVideoItem;

    .line 730
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getFilename()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 731
    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getFileType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemFileType(I)I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 733
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryBeginTime()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 734
    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getBoundaryEndTime()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 735
    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    invoke-virtual {v2}, Landroid/media/videoeditor/MediaVideoItem;->getRenderingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->getMediaItemRenderingMode(I)I

    move-result v3

    iput v3, v0, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 742
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    instance-of v3, p0, Landroid/media/videoeditor/MediaImageItem;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 739
    check-cast v1, Landroid/media/videoeditor/MediaImageItem;

    .line 740
    invoke-virtual {v1}, Landroid/media/videoeditor/MediaImageItem;->getImageClipProperties()Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getDuration()J
.end method

.method public getEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;
    .locals 3
    .param p1, "effectId"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 387
    .local v0, "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    .end local v0    # "effect":Landroid/media/videoeditor/Effect;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndTransition()Landroid/media/videoeditor/Transition;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    return-object v0
.end method

.method public abstract getFileType()I
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method getGeneratedImageClip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHeight()I
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method getNativeContext()Landroid/media/videoeditor/MediaArtistNativeHelper;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    return-object v0
.end method

.method public getOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;
    .locals 3
    .param p1, "overlayId"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 522
    .local v1, "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    .end local v1    # "overlay":Landroid/media/videoeditor/Overlay;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRegenerateClip()Z
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    return v0
.end method

.method public getRenderingMode()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    return v0
.end method

.method public abstract getThumbnail(IIJ)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getThumbnailList(IIJJI)[Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "startMs"    # J
    .param p5, "endMs"    # J
    .param p7, "thumbnailCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    move/from16 v0, p7

    new-array v11, v0, [Landroid/graphics/Bitmap;

    .line 589
    .local v11, "bitmaps":[Landroid/graphics/Bitmap;
    move/from16 v0, p7

    new-array v9, v0, [I

    .line 590
    .local v9, "indices":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, p7

    if-ge v12, v0, :cond_0

    .line 591
    aput v12, v9, v12

    .line 590
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 593
    :cond_0
    new-instance v10, Landroid/media/videoeditor/MediaItem$1;

    invoke-direct {v10, p0, v11}, Landroid/media/videoeditor/MediaItem$1;-><init>(Landroid/media/videoeditor/MediaItem;[Landroid/graphics/Bitmap;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/videoeditor/MediaItem;->getThumbnailList(IIJJI[ILandroid/media/videoeditor/MediaItem$GetThumbnailListCallback;)V

    .line 600
    return-object v11
.end method

.method public abstract getTimelineDuration()J
.end method

.method public abstract getWidth()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method initClipSettings(Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;)V
    .locals 2
    .param p1, "clipSettings"    # Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 699
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipPath:Ljava/lang/String;

    .line 700
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipDecodedPath:Ljava/lang/String;

    .line 701
    iput-object v1, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->clipOriginalPath:Ljava/lang/String;

    .line 702
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->fileType:I

    .line 703
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutTime:I

    .line 704
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutTime:I

    .line 705
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->beginCutPercent:I

    .line 706
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->endCutPercent:I

    .line 707
    iput-boolean v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomEnabled:Z

    .line 708
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentStart:I

    .line 709
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXStart:I

    .line 710
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYStart:I

    .line 711
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomPercentEnd:I

    .line 712
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftXEnd:I

    .line 713
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->panZoomTopLeftYEnd:I

    .line 714
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->mediaRendering:I

    .line 715
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbWidth:I

    .line 716
    iput v0, p1, Landroid/media/videoeditor/MediaArtistNativeHelper$ClipSettings;->rgbHeight:I

    .line 717
    return-void
.end method

.method invalidateBlankFrame()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 807
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/videoeditor/MediaItem;->mBlankFrameFilename:Ljava/lang/String;

    .line 812
    :cond_0
    return-void
.end method

.method abstract invalidateTransitions(JJ)V
.end method

.method abstract invalidateTransitions(JJJJ)V
.end method

.method protected isOverlapping(JJJJ)Z
    .locals 3
    .param p1, "startTimeMs1"    # J
    .param p3, "durationMs1"    # J
    .param p5, "startTimeMs2"    # J
    .param p7, "durationMs2"    # J

    .prologue
    const/4 v0, 0x0

    .line 654
    add-long v1, p1, p3

    cmp-long v1, v1, p5

    if-gtz v1, :cond_1

    .line 660
    :cond_0
    :goto_0
    return v0

    .line 656
    :cond_1
    add-long v1, p5, p7

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 660
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeEffect(Ljava/lang/String;)Landroid/media/videoeditor/Effect;
    .locals 7
    .param p1, "effectId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/videoeditor/Effect;

    .line 335
    .local v0, "effect":Landroid/media/videoeditor/Effect;
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 338
    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mEffects:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 341
    instance-of v3, v0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v3, :cond_2

    .line 342
    iget-object v3, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 346
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 350
    iput-object v2, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    .line 352
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 357
    .end local v0    # "effect":Landroid/media/videoeditor/Effect;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public removeOverlay(Ljava/lang/String;)Landroid/media/videoeditor/Overlay;
    .locals 6
    .param p1, "overlayId"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 499
    .local v1, "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 502
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 503
    instance-of v2, v1, Landroid/media/videoeditor/OverlayFrame;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 504
    check-cast v2, Landroid/media/videoeditor/OverlayFrame;

    invoke-virtual {v2}, Landroid/media/videoeditor/OverlayFrame;->invalidate()V

    .line 506
    :cond_1
    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/media/videoeditor/Overlay;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/videoeditor/MediaItem;->invalidateTransitions(JJ)V

    .line 510
    .end local v1    # "overlay":Landroid/media/videoeditor/Overlay;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setBeginTransition(Landroid/media/videoeditor/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/media/videoeditor/Transition;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    .line 217
    return-void
.end method

.method setEndTransition(Landroid/media/videoeditor/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/media/videoeditor/Transition;

    .prologue
    .line 230
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    .line 231
    return-void
.end method

.method setGeneratedImageClip(Ljava/lang/String;)V
    .locals 0
    .param p1, "generatedFilePath"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Landroid/media/videoeditor/MediaItem;->mGeneratedImageClip:Ljava/lang/String;

    .line 367
    return-void
.end method

.method setRegenerateClip(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 475
    iput-boolean p1, p0, Landroid/media/videoeditor/MediaItem;->mRegenerateClip:Z

    .line 476
    return-void
.end method

.method public setRenderingMode(I)V
    .locals 4
    .param p1, "renderingMode"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 186
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid Rendering Mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :pswitch_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mMANativeHelper:Landroid/media/videoeditor/MediaArtistNativeHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/videoeditor/MediaArtistNativeHelper;->setGeneratePreview(Z)V

    .line 191
    iput p1, p0, Landroid/media/videoeditor/MediaItem;->mRenderingMode:I

    .line 192
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mBeginTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 196
    :cond_0
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mEndTransition:Landroid/media/videoeditor/Transition;

    invoke-virtual {v2}, Landroid/media/videoeditor/Transition;->invalidate()V

    .line 200
    :cond_1
    iget-object v2, p0, Landroid/media/videoeditor/MediaItem;->mOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/videoeditor/Overlay;

    .line 201
    .local v1, "overlay":Landroid/media/videoeditor/Overlay;
    check-cast v1, Landroid/media/videoeditor/OverlayFrame;

    .end local v1    # "overlay":Landroid/media/videoeditor/Overlay;
    invoke-virtual {v1}, Landroid/media/videoeditor/OverlayFrame;->invalidateGeneratedFiles()V

    goto :goto_0

    .line 203
    :cond_2
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
