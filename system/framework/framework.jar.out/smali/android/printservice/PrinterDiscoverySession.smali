.class public abstract Landroid/printservice/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static sIdCounter:I


# instance fields
.field private final mId:I

.field private mIsDestroyed:Z

.field private mIsDiscoveryStarted:Z

.field private mLastSentPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    .line 106
    sget v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    iput v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    .line 107
    return-void
.end method

.method private sendOutOfDiscoveryPeriodPrinterChanges()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 274
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    :cond_0
    iput-object v8, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 321
    :goto_0
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x0

    .line 281
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterInfo;

    .line 282
    .local v2, "printer":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 283
    .local v5, "sentPrinter":Landroid/print/PrinterInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 284
    :cond_3
    if-nez v0, :cond_4

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .restart local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    .end local v2    # "printer":Landroid/print/PrinterInfo;
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    :cond_5
    if-eqz v0, :cond_6

    .line 294
    :try_start_0
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v7}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_6
    :goto_2
    const/4 v4, 0x0

    .line 302
    .local v4, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 303
    .restart local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 304
    if-nez v4, :cond_8

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .restart local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_8
    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 295
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    :catch_0
    move-exception v3

    .line 296
    .local v3, "re":Landroid/os/RemoteException;
    const-string v6, "PrinterDiscoverySession"

    const-string v7, "Error sending added printers"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 312
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_9
    if-eqz v4, :cond_a

    .line 314
    :try_start_1
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v7}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :cond_a
    :goto_4
    iput-object v8, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    goto/16 :goto_0

    .line 315
    :catch_1
    move-exception v3

    .line 316
    .restart local v3    # "re":Landroid/os/RemoteException;
    const-string v6, "PrinterDiscoverySession"

    const-string v7, "Error sending removed printers"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method


# virtual methods
.method public final addPrinters(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 168
    iget-boolean v6, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v6, :cond_1

    .line 169
    const-string v6, "PrinterDiscoverySession"

    const-string v7, "Not adding printers - session destroyed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-boolean v6, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    if-eqz v6, :cond_6

    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 177
    .local v1, "addedPrinterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 178
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 179
    .local v0, "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 180
    .local v4, "oldPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4, v0}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 181
    :cond_2
    if-nez v2, :cond_3

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .restart local v2    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v0    # "addedPrinter":Landroid/print/PrinterInfo;
    .end local v4    # "oldPrinter":Landroid/print/PrinterInfo;
    :cond_5
    if-eqz v2, :cond_0

    .line 191
    :try_start_0
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v7}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v5

    .line 193
    .local v5, "re":Landroid/os/RemoteException;
    const-string v6, "PrinterDiscoverySession"

    const-string v7, "Error sending added printers"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 198
    .end local v1    # "addedPrinterCount":I
    .end local v2    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_6
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v6, :cond_7

    .line 199
    new-instance v6, Landroid/util/ArrayMap;

    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 203
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 204
    .restart local v1    # "addedPrinterCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 205
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 206
    .restart local v0    # "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 207
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 519
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 522
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 523
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 524
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 525
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onDestroy()V

    .line 527
    :cond_0
    return-void
.end method

.method getId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    return v0
.end method

.method public final getPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 143
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final getTrackedPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 439
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 463
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 476
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onStartPrinterDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onStopPrinterDiscovery()V
.end method

.method public abstract onStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onValidatePrinters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public final removePrinters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 232
    iget-boolean v5, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v5, :cond_1

    .line 233
    const-string v5, "PrinterDiscoverySession"

    const-string v6, "Not removing printers - session destroyed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-boolean v5, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    if-eqz v5, :cond_4

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v4, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 241
    .local v3, "removedPrinterIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 243
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 244
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 251
    :try_start_0
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "PrinterDiscoverySession"

    const-string v6, "Error sending removed printers"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v3    # "removedPrinterIdCount":I
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_4
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v5, :cond_5

    .line 260
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 264
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 265
    .restart local v3    # "removedPrinterIdCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 267
    .restart local v2    # "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method setObserver(Landroid/printservice/IPrintServiceClient;)V
    .locals 4
    .param p1, "observer"    # Landroid/printservice/IPrintServiceClient;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 113
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "PrinterDiscoverySession"

    const-string v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startPrinterDiscovery(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_1

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 482
    invoke-direct {p0}, Landroid/printservice/PrinterDiscoverySession;->sendOutOfDiscoveryPeriodPrinterChanges()V

    .line 483
    if-nez p1, :cond_0

    .line 484
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 486
    :cond_0
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterDiscovery(Ljava/util/List;)V

    .line 488
    :cond_1
    return-void
.end method

.method startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 504
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 509
    :cond_0
    return-void
.end method

.method stopPrinterDiscovery()V
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 493
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterDiscovery()V

    .line 495
    :cond_0
    return-void
.end method

.method stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 512
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 516
    :cond_0
    return-void
.end method

.method validatePrinters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onValidatePrinters(Ljava/util/List;)V

    .line 501
    :cond_0
    return-void
.end method
