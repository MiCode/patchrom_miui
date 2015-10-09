.class Landroid/app/SharedPreferencesImpl$1;
.super Ljava/lang/Thread;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    # invokes: Landroid/app/SharedPreferencesImpl;->loadFromDiskLocked()V
    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->access$000(Landroid/app/SharedPreferencesImpl;)V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
