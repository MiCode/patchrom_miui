.class final Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeathMonitor"
.end annotation


# instance fields
.field final mName:Landroid/content/ComponentName;

.field final mService:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/LoadedApk$ServiceDispatcher;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1133
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1134
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    .line 1135
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    .line 1136
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$DeathMonitor;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->death(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 1140
    return-void
.end method
