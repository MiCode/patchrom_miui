.class public Landroid/media/RemoteController$MetadataEditor;
.super Landroid/media/MediaMetadataEditor;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MetadataEditor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method protected constructor <init>(Landroid/media/RemoteController;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/media/RemoteController;Landroid/os/Bundle;J)V
    .locals 3
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "editableKeys"    # J

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 450
    iput-object p1, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/MediaMetadataEditor;-><init>()V

    .line 451
    iput-object p2, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 452
    iput-wide p3, p0, Landroid/media/RemoteController$MetadataEditor;->mEditableKeys:J

    .line 454
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 456
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 457
    invoke-direct {p0, v2}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    .line 460
    :cond_0
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z

    .line 461
    iput-boolean v1, p0, Landroid/media/RemoteController$MetadataEditor;->mArtworkChanged:Z

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z

    .line 463
    return-void
.end method

.method static synthetic access$1200(Landroid/media/RemoteController$MetadataEditor;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteController$MetadataEditor;
    .param p1, "x1"    # I

    .prologue
    .line 441
    invoke-direct {p0, p1}, Landroid/media/RemoteController$MetadataEditor;->cleanupBitmapFromBundle(I)V

    return-void
.end method

.method private cleanupBitmapFromBundle(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 466
    sget-object v0, Landroid/media/RemoteController$MetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized apply()V
    .locals 5

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/media/RemoteController$MetadataEditor;->mMetadataChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 503
    :goto_0
    monitor-exit p0

    return-void

    .line 484
    :cond_0
    :try_start_1
    # getter for: Landroid/media/RemoteController;->mGenLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$000()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    :try_start_2
    iget-object v2, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    # getter for: Landroid/media/RemoteController;->mClientGenerationIdCurrent:I
    invoke-static {v2}, Landroid/media/RemoteController;->access$100(Landroid/media/RemoteController;)I

    move-result v0

    .line 486
    .local v0, "genId":I
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 487
    :try_start_3
    # getter for: Landroid/media/RemoteController;->mInfoLock:Ljava/lang/Object;
    invoke-static {}, Landroid/media/RemoteController;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 488
    :try_start_4
    iget-object v2, p0, Landroid/media/RemoteController$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    const v4, 0x10000001

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    const v2, 0x10000001

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/media/RemoteController$MetadataEditor;->getObject(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Rating;

    .line 492
    .local v1, "rating":Landroid/media/Rating;
    iget-object v2, p0, Landroid/media/RemoteController$MetadataEditor;->this$0:Landroid/media/RemoteController;

    # getter for: Landroid/media/RemoteController;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Landroid/media/RemoteController;->access$300(Landroid/media/RemoteController;)Landroid/media/AudioManager;

    move-result-object v2

    const v4, 0x10000001

    invoke-virtual {v2, v0, v4, v1}, Landroid/media/AudioManager;->updateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    .line 501
    .end local v1    # "rating":Landroid/media/Rating;
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/RemoteController$MetadataEditor;->mApplied:Z

    .line 502
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 480
    .end local v0    # "genId":I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 486
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 496
    .restart local v0    # "genId":I
    :cond_1
    :try_start_8
    const-string v2, "RemoteController"

    const-string/jumbo v4, "no metadata to apply"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method
