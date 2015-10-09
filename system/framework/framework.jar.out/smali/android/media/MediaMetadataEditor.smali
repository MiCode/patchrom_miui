.class public abstract Landroid/media/MediaMetadataEditor;
.super Ljava/lang/Object;
.source "MediaMetadataEditor.java"


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final KEY_EDITABLE_MASK:I = 0x1fffffff

.field protected static final METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

.field protected static final METADATA_TYPE_BITMAP:I = 0x2

.field protected static final METADATA_TYPE_INVALID:I = -0x1

.field protected static final METADATA_TYPE_LONG:I = 0x0

.field protected static final METADATA_TYPE_RATING:I = 0x3

.field protected static final METADATA_TYPE_STRING:I = 0x1

.field public static final RATING_KEY_BY_OTHERS:I = 0x65

.field public static final RATING_KEY_BY_USER:I = 0x10000001

.field private static final TAG:Ljava/lang/String; = "MediaMetadataEditor"


# instance fields
.field protected mApplied:Z

.field protected mArtworkChanged:Z

.field protected mEditableKeys:J

.field protected mEditorArtwork:Landroid/graphics/Bitmap;

.field protected mEditorMetadata:Landroid/os/Bundle;

.field protected mMetadataChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 435
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    .line 438
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 440
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 441
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 455
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x10000001

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    .line 93
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    .line 98
    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized addEditableKey(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t change editable keys of a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    const v0, 0x10000001

    if-ne p1, v0, :cond_1

    .line 142
    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const v2, 0x1fffffff

    and-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_1
    :try_start_2
    const-string v0, "MediaMetadataEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be edited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public abstract apply()V
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t clear a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 358
    monitor-enter p0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 359
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 361
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p2    # "defaultValue":Landroid/graphics/Bitmap;
    :cond_1
    monitor-exit p0

    return-object p2
.end method

.method public declared-synchronized getEditableKeys()[I
    .locals 5

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-wide v1, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const-wide/32 v3, 0x10000001

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 170
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const v2, 0x10000001

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLong(IJ)J
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'long\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 329
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized getObject(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 397
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p2

    .line 383
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    goto :goto_0

    .line 396
    :pswitch_3
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 397
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'String\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .locals 4
    .param p1, "key"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "MediaMetadataEditor"

    const-string v2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 261
    .end local p0    # "this":Landroid/media/MediaMetadataEditor;
    .local v0, "this":Landroid/media/MediaMetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 256
    .end local v0    # "this":Landroid/media/MediaMetadataEditor;
    .restart local p0    # "this":Landroid/media/MediaMetadataEditor;
    :cond_0
    const/16 v1, 0x64

    if-eq p1, v1, :cond_1

    .line 257
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 259
    :cond_1
    :try_start_2
    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .line 261
    .end local p0    # "this":Landroid/media/MediaMetadataEditor;
    .restart local v0    # "this":Landroid/media/MediaMetadataEditor;
    goto :goto_0
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/MediaMetadataEditor;
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "MediaMetadataEditor"

    const-string v2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 237
    .end local p0    # "this":Landroid/media/MediaMetadataEditor;
    .local v0, "this":Landroid/media/MediaMetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 232
    .end local v0    # "this":Landroid/media/MediaMetadataEditor;
    .restart local p0    # "this":Landroid/media/MediaMetadataEditor;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'long\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 235
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .line 237
    .end local p0    # "this":Landroid/media/MediaMetadataEditor;
    .restart local v0    # "this":Landroid/media/MediaMetadataEditor;
    goto :goto_0
.end method

.method public declared-synchronized putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 313
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 287
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 289
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    :try_start_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 290
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;

    move-result-object v0

    goto :goto_0

    .line 292
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a non-null Long for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :pswitch_1
    if-eqz p2, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 296
    :cond_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;

    move-result-object v0

    goto :goto_0

    .line 298
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a String for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast p2, Landroid/os/Parcelable;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    move-object v0, p0

    .line 313
    goto/16 :goto_0

    .line 305
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    if-eqz p2, :cond_4

    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 306
    :cond_4
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Bitmap for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .locals 4
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "MediaMetadataEditor"

    const-string v2, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 208
    .end local p0    # "this":Landroid/media/MediaMetadataEditor;
    .local v0, "this":Landroid/media/MediaMetadataEditor;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 203
    .end local v0    # "this":Landroid/media/MediaMetadataEditor;
    .restart local p0    # "this":Landroid/media/MediaMetadataEditor;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type \'String\' for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 206
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, p0

    .line 208
    .end local p0    # "this":Landroid/media/MediaMetadataEditor;
    .restart local v0    # "this":Landroid/media/MediaMetadataEditor;
    goto :goto_0
.end method

.method public declared-synchronized removeEditableKeys()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 153
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t remove all editable keys of a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
