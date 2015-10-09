.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:I

.field private sCacheSize:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "nativeEmojiFactory"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x64

    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    .line 72
    iput p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    .line 73
    iput-object p2, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    .line 74
    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    .line 75
    return-void
.end method

.method static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .locals 1
    .param p0, "x0"    # Landroid/emoji/EmojiFactory;

    .prologue
    .line 31
    iget v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    return v0
.end method

.method private native nativeDestructor(I)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(II)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(IC)I
.end method

.method private native nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(I)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(I)I
.end method

.method private native nativeGetMinimumAndroidPua(I)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(I)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(II)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(II)I
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeDestructor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 1
    .param p1, "vsp"    # I

    .prologue
    .line 178
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(II)I

    move-result v0

    return v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "vspString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v8, 0x0

    .line 202
    :goto_0
    return-object v8

    .line 185
    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(I)I

    move-result v5

    .line 186
    .local v5, "minVsp":I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(I)I

    move-result v4

    .line 187
    .local v4, "maxVsp":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 188
    .local v3, "len":I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .line 190
    .local v1, "codePoints":[I
    const/4 v7, 0x0

    .line 191
    .local v7, "new_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 192
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 193
    .local v0, "codePoint":I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    .line 194
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v6

    .line 195
    .local v6, "newCodePoint":I
    if-lez v6, :cond_1

    .line 196
    aput v6, v1, v7

    .line 191
    .end local v6    # "newCodePoint":I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 200
    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .line 202
    .end local v0    # "codePoint":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .locals 1
    .param p1, "sjis"    # C

    .prologue
    .line 157
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(IC)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "pua"    # I

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 103
    .local v0, "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-nez v0, :cond_1

    .line 104
    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 108
    .local v1, "ret":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 109
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 113
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 114
    .local v2, "tmp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_2

    .line 115
    iget v3, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v3, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 116
    .restart local v1    # "ret":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    .end local v0    # "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .end local v1    # "ret":Landroid/graphics/Bitmap;
    .end local v2    # "tmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0    # "cache":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    .restart local v2    # "tmp":Landroid/graphics/Bitmap;
    :cond_2
    move-object v1, v2

    .line 119
    goto :goto_0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "vsp"    # I

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "sjis"    # C

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumAndroidPua()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 1
    .param p1, "pua"    # I

    .prologue
    .line 212
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "puaString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v8, 0x0

    .line 236
    :goto_0
    return-object v8

    .line 219
    :cond_0
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(I)I

    move-result v5

    .line 220
    .local v5, "minVsp":I
    iget v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v8}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(I)I

    move-result v4

    .line 221
    .local v4, "maxVsp":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 222
    .local v3, "len":I
    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    .line 224
    .local v1, "codePoints":[I
    const/4 v7, 0x0

    .line 225
    .local v7, "new_len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 227
    .local v0, "codePoint":I
    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    .line 228
    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v6

    .line 229
    .local v6, "newCodePoint":I
    if-lez v6, :cond_1

    .line 230
    aput v6, v1, v7

    .line 225
    .end local v6    # "newCodePoint":I
    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 234
    :cond_1
    aput v0, v1, v7

    goto :goto_2

    .line 236
    .end local v0    # "codePoint":I
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v9, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .locals 1
    .param p1, "pua"    # I

    .prologue
    .line 167
    iget v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:I

    invoke-direct {p0, v0, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(II)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
