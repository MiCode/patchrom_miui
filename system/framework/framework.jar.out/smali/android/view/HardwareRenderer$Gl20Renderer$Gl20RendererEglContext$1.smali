.class Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->onTerminate(Ljavax/microedition/khronos/egl/EGLContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

.field final synthetic val$eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method constructor <init>(Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 1896
    iput-object p1, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;->this$0:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    iput-object p2, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;->val$eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1899
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;->this$0:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext$1;->val$eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->onTerminate(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1900
    return-void
.end method
