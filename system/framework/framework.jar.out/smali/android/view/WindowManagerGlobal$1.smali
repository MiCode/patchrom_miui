.class Landroid/view/WindowManagerGlobal$1;
.super Ljava/lang/Object;
.source "WindowManagerGlobal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    # getter for: Landroid/view/WindowManagerGlobal;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->access$000(Landroid/view/WindowManagerGlobal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    # getter for: Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 219
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$1;->this$0:Landroid/view/WindowManagerGlobal;

    # getter for: Landroid/view/WindowManagerGlobal;->mRoots:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/view/WindowManagerGlobal;->access$100(Landroid/view/WindowManagerGlobal;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 218
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 221
    :cond_0
    monitor-exit v2

    .line 222
    return-void

    .line 221
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
