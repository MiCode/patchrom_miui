.class Landroid/view/HardwareRenderer$Gl20Renderer$2;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareResources(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/HardwareRenderer$Gl20Renderer;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/HardwareRenderer$Gl20Renderer;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2279
    iput-object p1, p0, Landroid/view/HardwareRenderer$Gl20Renderer$2;->this$0:Landroid/view/HardwareRenderer$Gl20Renderer;

    iput-object p2, p0, Landroid/view/HardwareRenderer$Gl20Renderer$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2282
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$2;->this$0:Landroid/view/HardwareRenderer$Gl20Renderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mCanvas:Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$2;->this$0:Landroid/view/HardwareRenderer$Gl20Renderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->clearLayerUpdates()V

    .line 2285
    :cond_0
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$2;->val$view:Landroid/view/View;

    # invokes: Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V
    invoke-static {v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->access$800(Landroid/view/View;)V

    .line 2286
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    .line 2287
    return-void
.end method
