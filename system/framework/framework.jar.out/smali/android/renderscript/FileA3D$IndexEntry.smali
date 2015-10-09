.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# instance fields
.field mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field mID:I

.field mIndex:I

.field mLoadedObj:Landroid/renderscript/BaseObj;

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/renderscript/RenderScript;IILjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "id"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "type"    # Landroid/renderscript/FileA3D$EntryType;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    .line 161
    iput p2, p0, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    .line 162
    iput p3, p0, Landroid/renderscript/FileA3D$IndexEntry;->mID:I

    .line 163
    iput-object p4, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    .line 164
    iput-object p5, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    .line 166
    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "entry"    # Landroid/renderscript/FileA3D$IndexEntry;

    .prologue
    const/4 v1, 0x0

    .line 135
    const-class v2, Landroid/renderscript/FileA3D$IndexEntry;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    if-eqz v3, :cond_1

    .line 136
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v1

    .line 140
    :cond_1
    :try_start_1
    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    sget-object v4, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    if-eq v3, v4, :cond_0

    .line 144
    iget v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mID:I

    iget v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    invoke-virtual {p0, v3, v4}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(II)I

    move-result v0

    .line 145
    .local v0, "objectID":I
    if-eqz v0, :cond_0

    .line 149
    sget-object v1, Landroid/renderscript/FileA3D$1;->$SwitchMap$android$renderscript$FileA3D$EntryType:[I

    iget-object v3, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v3}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_1
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    invoke-virtual {v1}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 156
    iget-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    goto :goto_0

    .line 151
    :pswitch_0
    new-instance v1, Landroid/renderscript/Mesh;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    iput-object v1, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 135
    .end local v0    # "objectID":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public getMesh()Landroid/renderscript/Mesh;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/renderscript/BaseObj;
    .locals 2

    .prologue
    .line 118
    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    .line 119
    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, p0}, Landroid/renderscript/FileA3D$IndexEntry;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    move-result-object v0

    .line 120
    .local v0, "obj":Landroid/renderscript/BaseObj;
    return-object v0
.end method
