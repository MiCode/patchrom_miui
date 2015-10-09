.class Landroid/view/ViewGroup$1;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 2984
    iput-object p1, p0, Landroid/view/ViewGroup$1;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Landroid/view/ViewGroup$1;->this$0:Landroid/view/ViewGroup;

    # invokes: Landroid/view/ViewGroup;->notifyAnimationListener()V
    invoke-static {v0}, Landroid/view/ViewGroup;->access$000(Landroid/view/ViewGroup;)V

    .line 2987
    return-void
.end method
