.class public abstract Landroid/printservice/PrintService;
.super Landroid/app/Service;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/PrintService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_PRINT_JOB_INFO:Ljava/lang/String; = "android.intent.extra.print.PRINT_JOB_INFO"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.PrintService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.printservice"


# instance fields
.field private mClient:Landroid/printservice/IPrintServiceClient;

.field private mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

.field private mHandler:Landroid/os/Handler;

.field private mLastSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    .line 395
    return-void
.end method

.method static synthetic access$000(Landroid/printservice/PrintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/printservice/PrintService;)I
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .prologue
    .line 155
    iget v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return v0
.end method

.method static synthetic access$102(Landroid/printservice/PrintService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/printservice/PrintService;
    .param p1, "x1"    # I

    .prologue
    .line 155
    iput p1, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return p1
.end method

.method static synthetic access$200(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object v0
.end method

.method static synthetic access$202(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;
    .locals 0
    .param p0, "x0"    # Landroid/printservice/PrintService;
    .param p1, "x1"    # Landroid/printservice/PrinterDiscoverySession;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object p1
.end method

.method static synthetic access$300(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;
    .locals 1
    .param p0, "x0"    # Landroid/printservice/PrintService;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object v0
.end method

.method static synthetic access$302(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;
    .locals 0
    .param p0, "x0"    # Landroid/printservice/PrintService;
    .param p1, "x1"    # Landroid/printservice/IPrintServiceClient;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object p1
.end method

.method static throwIfNotCalledOnMainThread()V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 234
    new-instance v0, Landroid/printservice/PrintService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/printservice/PrintService$ServiceHandler;-><init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    .line 235
    return-void
.end method

.method public final generatePrinterId(Ljava/lang/String;)Landroid/print/PrinterId;
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 324
    new-instance v0, Landroid/print/PrinterId;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/printservice/PrintService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Landroid/print/PrinterId;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getActivePrintJobs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintJob;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 294
    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    if-nez v6, :cond_1

    .line 295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 313
    :cond_0
    :goto_0
    return-object v3

    .line 298
    :cond_1
    const/4 v3, 0x0

    .line 299
    .local v3, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :try_start_0
    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-interface {v6}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfos()Ljava/util/List;

    move-result-object v2

    .line 300
    .local v2, "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v2, :cond_3

    .line 301
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 302
    .local v1, "printJobInfoCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .local v4, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 304
    :try_start_1
    new-instance v7, Landroid/printservice/PrintJob;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintJobInfo;

    iget-object v8, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-direct {v7, v6, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 307
    .end local v0    # "i":I
    .end local v1    # "printJobInfoCount":I
    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :cond_3
    if-nez v3, :cond_0

    .line 313
    .end local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 310
    :catch_0
    move-exception v5

    .line 311
    .local v5, "re":Landroid/os/RemoteException;
    :goto_3
    const-string v6, "PrintService"

    const-string v7, "Error calling getPrintJobs()"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 310
    .end local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .end local v5    # "re":Landroid/os/RemoteException;
    .restart local v0    # "i":I
    .restart local v1    # "printJobInfoCount":I
    .restart local v2    # "printJobInfos":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .restart local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    .restart local v3    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintJob;>;"
    goto :goto_3
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    new-instance v0, Landroid/printservice/PrintService$1;

    invoke-direct {v0, p0}, Landroid/printservice/PrintService$1;-><init>(Landroid/printservice/PrintService;)V

    return-object v0
.end method

.method protected onConnected()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method protected abstract onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;
.end method

.method protected onDisconnected()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method protected abstract onPrintJobQueued(Landroid/printservice/PrintJob;)V
.end method

.method protected abstract onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V
.end method
