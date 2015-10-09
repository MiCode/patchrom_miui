.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    }
.end annotation


# instance fields
.field private mAlive:Z

.field private mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 304
    return-void
.end method

.method private checkIsAlive()V
    .locals 2

    .prologue
    .line 719
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    return-void
.end method

.method private kill()V
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    .line 746
    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .prologue
    .line 688
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 690
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 691
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 695
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 696
    return-void
.end method

.method public addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .prologue
    .line 580
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 582
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 586
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 461
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 494
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 496
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .prologue
    .line 544
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 546
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 550
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 551
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 618
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .prologue
    .line 650
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 652
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 653
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    return-void
.end method

.method public addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .prologue
    .line 389
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 391
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 396
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 426
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .prologue
    .line 923
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 925
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 926
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 928
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 929
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 930
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 936
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 933
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method public final dispatchOnDraw()V
    .locals 4

    .prologue
    .line 860
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 861
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    .line 862
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 863
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 864
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    .line 863
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewTreeObserver$OnDrawListener;>;"
    .end local v2    # "numListeners":I
    :cond_0
    return-void
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;

    .prologue
    .line 791
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 792
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 793
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .line 794
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 797
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    :cond_0
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .locals 5

    .prologue
    .line 809
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 810
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 811
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 813
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 814
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 815
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 818
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 821
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 818
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method public final dispatchOnPreDraw()Z
    .locals 6

    .prologue
    .line 840
    const/4 v1, 0x0

    .line 841
    .local v1, "cancelDraw":Z
    iget-object v4, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 842
    .local v4, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 843
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 845
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    .line 846
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 847
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    or-int/2addr v1, v5

    .line 846
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 850
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 853
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return v1

    .line 850
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnPreDrawListener;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v5
.end method

.method final dispatchOnScrollChanged()V
    .locals 5

    .prologue
    .line 892
    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 893
    .local v3, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 894
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    .line 896
    .local v0, "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    .line 897
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 898
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    .line 904
    .end local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 901
    .restart local v0    # "access":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<Landroid/view/ViewTreeObserver$OnScrollChangedListener;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .locals 4
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 875
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 877
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 878
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .line 879
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    goto :goto_0

    .line 882
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
    :cond_0
    return-void
.end method

.method final dispatchOnWindowAttachedChange(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    .line 756
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 758
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowAttachListener;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 759
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .line 760
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    if-eqz p1, :cond_0

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    goto :goto_0

    .line 761
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    goto :goto_0

    .line 764
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnWindowAttachListener;
    :cond_1
    return-void
.end method

.method final dispatchOnWindowFocusChange(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 774
    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 776
    .local v2, "listeners":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 777
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .line 778
    .local v1, "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    invoke-interface {v1, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 781
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;
    :cond_0
    return-void
.end method

.method final hasComputeInternalInsetsListeners()Z
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    .line 912
    .local v0, "listeners":Landroid/view/ViewTreeObserver$CopyOnWriteArray;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray<Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final hasOnPreDrawListeners()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 735
    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/ViewTreeObserver;

    .prologue
    .line 314
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_8

    .line 316
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_9

    .line 324
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_a

    .line 332
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_b

    .line 340
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 346
    :cond_3
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_c

    .line 348
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 354
    :cond_4
    :goto_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 355
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_d

    .line 356
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 362
    :cond_5
    :goto_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_6

    .line 363
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_e

    .line 364
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 370
    :cond_6
    :goto_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_f

    .line 372
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    .line 378
    :cond_7
    :goto_7
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    .line 379
    return-void

    .line 318
    :cond_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_0

    .line 326
    :cond_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_1

    .line 334
    :cond_a
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_2

    .line 342
    :cond_b
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_3

    .line 350
    :cond_c
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_4

    .line 358
    :cond_d
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_5

    .line 366
    :cond_e
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_6

    .line 374
    :cond_f
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_7
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 517
    return-void
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .prologue
    .line 711
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 712
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnDrawListener;

    .prologue
    .line 601
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 602
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 606
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    .prologue
    .line 478
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 479
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 530
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .prologue
    .line 563
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 564
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .prologue
    .line 635
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 636
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    .prologue
    .line 669
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 670
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 674
    :goto_0
    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    .prologue
    .line 409
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 410
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1
    .param p1, "victim"    # Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    .line 445
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
