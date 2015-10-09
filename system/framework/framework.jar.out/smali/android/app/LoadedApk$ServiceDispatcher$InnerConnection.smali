.class Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;
.super Landroid/app/IServiceConnection$Stub;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerConnection"
.end annotation


# instance fields
.field final mDispatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/LoadedApk$ServiceDispatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ServiceDispatcher;)V
    .locals 1
    .param p1, "sd"    # Landroid/app/LoadedApk$ServiceDispatcher;

    .prologue
    .line 950
    invoke-direct {p0}, Landroid/app/IServiceConnection$Stub;-><init>()V

    .line 951
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    .line 952
    return-void
.end method


# virtual methods
.method public connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 955
    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$InnerConnection;->mDispatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/LoadedApk$ServiceDispatcher;

    .line 956
    .local v0, "sd":Landroid/app/LoadedApk$ServiceDispatcher;
    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {v0, p1, p2}, Landroid/app/LoadedApk$ServiceDispatcher;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 959
    :cond_0
    return-void
.end method
