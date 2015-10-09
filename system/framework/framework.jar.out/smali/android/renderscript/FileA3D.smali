.class public Landroid/renderscript/FileA3D;
.super Landroid/renderscript/BaseObj;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/FileA3D$1;,
        Landroid/renderscript/FileA3D$IndexEntry;,
        Landroid/renderscript/FileA3D$EntryType;
    }
.end annotation


# instance fields
.field mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

.field mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;
    .param p3, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 174
    iput-object p3, p0, Landroid/renderscript/FileA3D;->mInputStream:Ljava/io/InputStream;

    .line 175
    return-void
.end method

.method public static createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 235
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    .line 237
    .local v1, "fileId":I
    if-nez v1, :cond_0

    .line 238
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a3d file from asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_0
    new-instance v0, Landroid/renderscript/FileA3D;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/renderscript/FileA3D;-><init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 241
    .local v0, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v0}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 242
    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/io/File;)Landroid/renderscript/FileA3D;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/FileA3D;->createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromFile(Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "fileId":I
    if-nez v1, :cond_0

    .line 258
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a3d file from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_0
    new-instance v0, Landroid/renderscript/FileA3D;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/renderscript/FileA3D;-><init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 261
    .local v0, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v0}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 262
    return-object v0
.end method

.method public static createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;
    .locals 8
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 291
    const/4 v4, 0x0

    .line 293
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 298
    const/4 v3, 0x0

    .line 299
    .local v3, "fileId":I
    instance-of v5, v4, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v5, :cond_0

    move-object v5, v4

    .line 300
    check-cast v5, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v5}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v0

    .line 301
    .local v0, "asset":I
    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAssetStream(I)I

    move-result v3

    .line 306
    if-nez v3, :cond_1

    .line 307
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create a3d file from resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    .end local v0    # "asset":I
    .end local v3    # "fileId":I
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to open resource "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileId":I
    :cond_0
    new-instance v5, Landroid/renderscript/RSRuntimeException;

    const-string v6, "Unsupported asset stream"

    invoke-direct {v5, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    .restart local v0    # "asset":I
    :cond_1
    new-instance v2, Landroid/renderscript/FileA3D;

    invoke-direct {v2, v3, p0, v4}, Landroid/renderscript/FileA3D;-><init>(ILandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 310
    .local v2, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v2}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 311
    return-object v2
.end method

.method private initEntries()V
    .locals 10

    .prologue
    .line 178
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nFileA3DGetNumIndexEntries(I)I

    move-result v8

    .line 179
    .local v8, "numFileEntries":I
    if-gtz v8, :cond_1

    .line 192
    :cond_0
    return-void

    .line 183
    :cond_1
    new-array v0, v8, [Landroid/renderscript/FileA3D$IndexEntry;

    iput-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    .line 184
    new-array v6, v8, [I

    .line 185
    .local v6, "ids":[I
    new-array v7, v8, [Ljava/lang/String;

    .line 187
    .local v7, "names":[Ljava/lang/String;
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1, v8, v6, v7}, Landroid/renderscript/RenderScript;->nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 190
    iget-object v9, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    new-instance v0, Landroid/renderscript/FileA3D$IndexEntry;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v3}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    aget-object v4, v7, v2

    aget v5, v6, v2

    invoke-static {v5}, Landroid/renderscript/FileA3D$EntryType;->toEntryType(I)Landroid/renderscript/FileA3D$EntryType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/FileA3D$IndexEntry;-><init>(Landroid/renderscript/RenderScript;IILjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V

    aput-object v0, v9, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/renderscript/FileA3D;->getIndexEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getIndexEntryCount()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v0, v0

    goto :goto_0
.end method
