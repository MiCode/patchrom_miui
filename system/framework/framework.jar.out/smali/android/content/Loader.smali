.class public Landroid/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Loader$OnLoadCanceledListener;,
        Landroid/content/Loader$OnLoadCompleteListener;,
        Landroid/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Landroid/content/Loader;->mStarted:Z

    .line 58
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 60
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 61
    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 1

    .prologue
    .line 403
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 404
    invoke-virtual {p0}, Landroid/content/Loader;->onAbandon()V

    .line 405
    return-void
.end method

.method public cancelLoad()Z
    .locals 1

    .prologue
    .line 320
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .locals 1

    .prologue
    .line 475
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 476
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 516
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 517
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deliverCancellation()V
    .locals 1

    .prologue
    .line 155
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    invoke-interface {v0, p0}, Landroid/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroid/content/Loader;)V

    .line 158
    :cond_0
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-interface {v0, p0, p1}, Landroid/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 540
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 541
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 542
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_1

    .line 543
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 544
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 545
    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 547
    :cond_1
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    if-eqz v0, :cond_3

    .line 548
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 549
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 551
    :cond_3
    return-void
.end method

.method public forceLoad()V
    .locals 0

    .prologue
    .line 347
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 348
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 164
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget v0, p0, Landroid/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .locals 1

    .prologue
    .line 253
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 244
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 417
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 335
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 500
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 355
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 453
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 299
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 389
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p2, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iput-object p2, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 186
    iput p1, p0, Landroid/content/Loader;->mId:I

    .line 187
    return-void
.end method

.method public registerOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-object p1, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 218
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 438
    invoke-virtual {p0}, Landroid/content/Loader;->onReset()V

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mReset:Z

    .line 440
    iput-boolean v1, p0, Landroid/content/Loader;->mStarted:Z

    .line 441
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 442
    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 443
    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 444
    return-void
.end method

.method public rollbackContentChanged()V
    .locals 1

    .prologue
    .line 486
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_0

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 489
    :cond_0
    return-void
.end method

.method public final startLoading()V
    .locals 2

    .prologue
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 288
    iput-boolean v1, p0, Landroid/content/Loader;->mReset:Z

    .line 289
    iput-boolean v1, p0, Landroid/content/Loader;->mAbandoned:Z

    .line 290
    invoke-virtual {p0}, Landroid/content/Loader;->onStartLoading()V

    .line 291
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 378
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/Loader;->mStarted:Z

    .line 379
    invoke-virtual {p0}, Landroid/content/Loader;->onStopLoading()V

    .line 380
    return-void
.end method

.method public takeContentChanged()Z
    .locals 2

    .prologue
    .line 461
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iget-boolean v0, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 462
    .local v0, "res":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/Loader;->mContentChanged:Z

    .line 463
    iget-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/content/Loader;->mProcessingChange:Z

    .line 464
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 523
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 524
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 525
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget v1, p0, Landroid/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 527
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mListener:Landroid/content/Loader$OnLoadCompleteListener;

    .line 202
    return-void
.end method

.method public unregisterOnLoadCanceledListener(Landroid/content/Loader$OnLoadCanceledListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    .local p1, "listener":Landroid/content/Loader$OnLoadCanceledListener;, "Landroid/content/Loader$OnLoadCanceledListener<TD;>;"
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iget-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    if-eq v0, p1, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Loader;->mOnLoadCanceledListener:Landroid/content/Loader$OnLoadCanceledListener;

    .line 236
    return-void
.end method
