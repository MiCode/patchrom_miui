.class Landroid/view/HardwareRenderer$Gl20Renderer;
.super Landroid/view/HardwareRenderer$GlRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gl20Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    }
.end annotation


# static fields
.field private static sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static final sPbufferLock:[Ljava/lang/Object;


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGlCanvas:Landroid/view/GLES20Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1883
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "translucent"    # Z

    .prologue
    .line 1933
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;-><init>(IZ)V

    .line 1934
    return-void
.end method

.method static synthetic access$500(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 1877
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method static synthetic access$600()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .prologue
    .line 1877
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$602(Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .param p0, "x0"    # Ljavax/microedition/khronos/egl/EGLSurface;

    .prologue
    .line 1877
    sput-object p0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic access$700(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 1877
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 1877
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    return-void
.end method

.method static create(Z)Landroid/view/HardwareRenderer;
    .locals 1
    .param p0, "translucent"    # Z

    .prologue
    .line 2306
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$Gl20Renderer;-><init>(Z)V

    .line 2309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static destroyHardwareLayer(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2264
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/view/View;->destroyLayer(Z)Z

    .line 2266
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 2267
    check-cast v1, Landroid/view/ViewGroup;

    .line 2269
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2270
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2271
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    .line 2270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2274
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 2293
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 2295
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 2296
    check-cast v1, Landroid/view/ViewGroup;

    .line 2298
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2299
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2300
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    .line 2299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2303
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private drawCurrentFrame(II)V
    .locals 6
    .param p1, "graphType"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x2

    .line 2112
    if-ltz p2, :cond_0

    .line 2113
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer$GraphDataProvider;->setupCurrentFramePaint(Landroid/graphics/Paint;)V

    .line 2114
    packed-switch p1, :pswitch_data_0

    .line 2126
    :cond_0
    :goto_0
    return-void

    .line 2116
    :pswitch_0
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v1, v1, v4

    aget v1, v1, p2

    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v2, v2, v4

    add-int/lit8 v3, p2, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v3, v3, v4

    add-int/lit8 v4, p2, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    const/4 v5, 0x0

    aget-object v4, v4, v5

    add-int/lit8 v5, p2, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2121
    :pswitch_1
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v1, v1, v4

    aget v1, v1, p2

    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v2, v2, v4

    add-int/lit8 v3, p2, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v3, v3, v4

    aget v3, v3, p2

    iget v4, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawGraph(II)V
    .locals 6
    .param p1, "graphType"    # I
    .param p2, "count"    # I

    .prologue
    .line 2098
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2099
    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0}, Landroid/view/HardwareRenderer$GraphDataProvider;->setupGraphPaint(Landroid/graphics/Paint;I)V

    .line 2100
    packed-switch p1, :pswitch_data_0

    .line 2098
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2102
    :pswitch_0
    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v2, v2, v0

    mul-int/lit8 v3, p2, 0x4

    iget-object v4, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/GLES20Canvas;->drawRects([FILandroid/graphics/Paint;)V

    goto :goto_1

    .line 2105
    :pswitch_1
    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    mul-int/lit8 v4, p2, 0x4

    iget-object v5, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/GLES20Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto :goto_1

    .line 2109
    :cond_0
    return-void

    .line 2100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawThreshold(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 2129
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer$GraphDataProvider;->getThreshold()F

    move-result v6

    .line 2130
    .local v6, "threshold":F
    cmpl-float v0, v6, v1

    if-lez v0, :cond_0

    .line 2131
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    iget-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/view/HardwareRenderer$GraphDataProvider;->setupThresholdPaint(Landroid/graphics/Paint;)V

    .line 2132
    iget v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mHeight:I

    int-to-float v0, v0

    int-to-float v2, p2

    mul-float/2addr v2, v6

    sub-float/2addr v0, v2

    float-to-int v7, v0

    .line 2133
    .local v7, "y":I
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    int-to-float v2, v7

    int-to-float v3, p1

    int-to-float v4, v7

    iget-object v5, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/view/GLES20Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2135
    .end local v7    # "y":I
    :cond_0
    return-void
.end method

.method static endTrimMemory()V
    .locals 5

    .prologue
    .line 2332
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    .line 2333
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2335
    :cond_0
    return-void
.end method

.method private initProfileDrawData(Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$GraphDataProvider;)V
    .locals 6
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p2, "provider"    # Landroid/view/HardwareRenderer$GraphDataProvider;

    .prologue
    const/4 v5, 0x1

    .line 2138
    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    if-nez v3, :cond_1

    .line 2139
    invoke-virtual {p2}, Landroid/view/HardwareRenderer$GraphDataProvider;->getElementCount()I

    move-result v0

    .line 2140
    .local v0, "elementCount":I
    invoke-virtual {p2}, Landroid/view/HardwareRenderer$GraphDataProvider;->getFrameCount()I

    move-result v1

    .line 2142
    .local v1, "frameCount":I
    new-array v3, v0, [[F

    iput-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    .line 2143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2144
    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    mul-int/lit8 v4, v1, 0x4

    new-array v4, v4, [F

    aput-object v4, v3, v2

    .line 2143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2147
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    .line 2150
    .end local v0    # "elementCount":I
    .end local v1    # "frameCount":I
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 2151
    invoke-virtual {p2}, Landroid/view/HardwareRenderer$GraphDataProvider;->getGraphType()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 2152
    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfilePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2155
    :cond_2
    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v3, :cond_3

    .line 2156
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2159
    :cond_3
    iget-object v3, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2160
    iget-object v3, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p2, v3}, Landroid/view/HardwareRenderer$GraphDataProvider;->prepare(Landroid/util/DisplayMetrics;)V

    .line 2161
    return-void
.end method

.method static startTrimMemory(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 2313
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_1

    .line 2329
    :cond_0
    :goto_0
    return-void

    .line 2315
    :cond_1
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    .line 2318
    .local v0, "managedContext":Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    if-eqz v0, :cond_0

    .line 2321
    invoke-virtual {v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-static {v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 2324
    const/16 v1, 0x50

    if-lt p0, v1, :cond_2

    .line 2325
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_0

    .line 2326
    :cond_2
    const/16 v1, 0x14

    if-lt p0, v1, :cond_0

    .line 2327
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_0
.end method

.method private static usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5
    .param p0, "eglContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 2338
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 2341
    :try_start_0
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_0

    .line 2342
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 2346
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2347
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 2348
    return-void

    .line 2346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2342
    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method


# virtual methods
.method canDraw()Z
    .locals 1

    .prologue
    .line 2003
    invoke-super {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 1
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 2181
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->cancelLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 2182
    return-void
.end method

.method countOverdraw(Landroid/view/HardwareCanvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 2206
    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1    # "canvas":Landroid/view/HardwareCanvas;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/GLES20Canvas;->setCountOverdrawEnabled(Z)V

    .line 2207
    return-void
.end method

.method createCanvas()Landroid/view/HardwareCanvas;
    .locals 2

    .prologue
    .line 1938
    new-instance v0, Landroid/view/GLES20Canvas;

    iget-boolean v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mTranslucent:Z

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;-><init>(Z)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method public createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2191
    new-instance v0, Landroid/view/GLES20DisplayList;

    invoke-direct {v0, p1}, Landroid/view/GLES20DisplayList;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOpaque"    # Z

    .prologue
    .line 2201
    new-instance v0, Landroid/view/GLES20RenderLayer;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/GLES20RenderLayer;-><init>(IIZ)V

    return-object v0
.end method

.method createHardwareLayer(Z)Landroid/view/HardwareLayer;
    .locals 1
    .param p1, "isOpaque"    # Z

    .prologue
    .line 2196
    new-instance v0, Landroid/view/GLES20TextureLayer;

    invoke-direct {v0, p1}, Landroid/view/GLES20TextureLayer;-><init>(Z)V

    return-object v0
.end method

.method createManagedContext(Ljavax/microedition/khronos/egl/EGLContext;)Landroid/opengl/ManagedEGLContext;
    .locals 2
    .param p1, "eglContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 1943
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v0, v1}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0
.end method

.method public createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 2216
    check-cast p1, Landroid/view/GLES20TextureLayer;

    .end local p1    # "layer":Landroid/view/HardwareLayer;
    invoke-virtual {p1}, Landroid/view/GLES20TextureLayer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method destroy(Z)V
    .locals 3
    .param p1, "full"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2166
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2168
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    .line 2169
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    .line 2172
    :cond_0
    return-void

    .line 2168
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v1, :cond_1

    .line 2169
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    :cond_1
    throw v0
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2278
    if-eqz p1, :cond_0

    .line 2279
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer$2;

    invoke-direct {v0, p0, p1}, Landroid/view/HardwareRenderer$Gl20Renderer$2;-><init>(Landroid/view/HardwareRenderer$Gl20Renderer;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->safelyRun(Ljava/lang/Runnable;)Z

    .line 2290
    :cond_0
    return-void
.end method

.method destroyLayers(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2249
    if-eqz p1, :cond_0

    .line 2250
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer$1;

    invoke-direct {v0, p0, p1}, Landroid/view/HardwareRenderer$Gl20Renderer$1;-><init>(Landroid/view/HardwareRenderer$Gl20Renderer;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/HardwareRenderer$Gl20Renderer;->safelyRun(Ljava/lang/Runnable;)Z

    .line 2261
    :cond_0
    return-void
.end method

.method drawProfileData(Landroid/view/View$AttachInfo;)V
    .locals 23
    .param p1, "attachInfo"    # Landroid/view/View$AttachInfo;

    .prologue
    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 2019
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mDebugDataProvider:Landroid/view/HardwareRenderer$GraphDataProvider;

    .line 2020
    .local v12, "provider":Landroid/view/HardwareRenderer$GraphDataProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Landroid/view/HardwareRenderer$Gl20Renderer;->initProfileDrawData(Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$GraphDataProvider;)V

    .line 2022
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getVerticalUnitSize()I

    move-result v7

    .line 2023
    .local v7, "height":I
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getHorizontaUnitMargin()I

    move-result v11

    .line 2024
    .local v11, "margin":I
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getHorizontalUnitSize()I

    move-result v15

    .line 2026
    .local v15, "width":I
    const/16 v16, 0x0

    .line 2027
    .local v16, "x":I
    const/4 v2, 0x0

    .line 2028
    .local v2, "count":I
    const/4 v3, 0x0

    .line 2030
    .local v3, "current":I
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getData()[F

    move-result-object v4

    .line 2031
    .local v4, "data":[F
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getElementCount()I

    move-result v5

    .line 2032
    .local v5, "elementCount":I
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getGraphType()I

    move-result v6

    .line 2034
    .local v6, "graphType":I
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getFrameCount()I

    move-result v20

    mul-int v14, v20, v5

    .line 2035
    .local v14, "totalCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 2036
    sub-int/2addr v14, v5

    .line 2039
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_1

    .line 2040
    aget v20, v4, v8

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_3

    .line 2089
    :cond_1
    add-int v16, v16, v11

    .line 2091
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2}, Landroid/view/HardwareRenderer$Gl20Renderer;->drawGraph(II)V

    .line 2092
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->drawCurrentFrame(II)V

    .line 2093
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Landroid/view/HardwareRenderer$Gl20Renderer;->drawThreshold(II)V

    .line 2095
    .end local v2    # "count":I
    .end local v3    # "current":I
    .end local v4    # "data":[F
    .end local v5    # "elementCount":I
    .end local v6    # "graphType":I
    .end local v7    # "height":I
    .end local v8    # "i":I
    .end local v11    # "margin":I
    .end local v12    # "provider":Landroid/view/HardwareRenderer$GraphDataProvider;
    .end local v14    # "totalCount":I
    .end local v15    # "width":I
    .end local v16    # "x":I
    :cond_2
    return-void

    .line 2042
    .restart local v2    # "count":I
    .restart local v3    # "current":I
    .restart local v4    # "data":[F
    .restart local v5    # "elementCount":I
    .restart local v6    # "graphType":I
    .restart local v7    # "height":I
    .restart local v8    # "i":I
    .restart local v11    # "margin":I
    .restart local v12    # "provider":Landroid/view/HardwareRenderer$GraphDataProvider;
    .restart local v14    # "totalCount":I
    .restart local v15    # "width":I
    .restart local v16    # "x":I
    :cond_3
    mul-int/lit8 v9, v2, 0x4

    .line 2043
    .local v9, "index":I
    invoke-virtual {v12}, Landroid/view/HardwareRenderer$GraphDataProvider;->getCurrentFrame()I

    move-result v20

    mul-int v20, v20, v5

    move/from16 v0, v20

    if-ne v8, v0, :cond_4

    move v3, v9

    .line 2045
    :cond_4
    add-int v16, v16, v11

    .line 2046
    add-int v17, v16, v15

    .line 2048
    .local v17, "x2":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mHeight:I

    move/from16 v19, v0

    .line 2049
    .local v19, "y2":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    aget v21, v4, v8

    int-to-float v0, v7

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2051
    .local v18, "y1":I
    packed-switch v6, :pswitch_data_0

    .line 2085
    :cond_5
    add-int v16, v16, v15

    .line 2086
    add-int/lit8 v2, v2, 0x1

    .line 2039
    add-int/2addr v8, v5

    goto :goto_0

    .line 2053
    :pswitch_0
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v5, :cond_5

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    move-object/from16 v20, v0

    aget-object v13, v20, v10

    .line 2056
    .local v13, "r":[F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v13, v9

    .line 2057
    add-int/lit8 v20, v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v13, v20

    .line 2058
    add-int/lit8 v20, v9, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v13, v20

    .line 2059
    add-int/lit8 v20, v9, 0x3

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v13, v20

    .line 2061
    move/from16 v19, v18

    .line 2062
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_6

    .line 2063
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    add-int v21, v8, v10

    add-int/lit8 v21, v21, 0x1

    aget v21, v4, v21

    int-to-float v0, v7

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2053
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2068
    .end local v10    # "j":I
    .end local v13    # "r":[F
    :pswitch_1
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_2
    if-ge v10, v5, :cond_5

    .line 2070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/HardwareRenderer$Gl20Renderer;->mProfileShapes:[[F

    move-object/from16 v20, v0

    aget-object v13, v20, v10

    .line 2071
    .restart local v13    # "r":[F
    add-int v20, v16, v17

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    mul-float v20, v20, v21

    aput v20, v13, v9

    .line 2072
    add-int/lit8 v21, v9, 0x1

    if-nez v9, :cond_8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    :goto_3
    aput v20, v13, v21

    .line 2073
    add-int/lit8 v20, v9, 0x2

    aget v21, v13, v9

    int-to-float v0, v15

    move/from16 v22, v0

    add-float v21, v21, v22

    aput v21, v13, v20

    .line 2074
    add-int/lit8 v20, v9, 0x3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    aput v21, v13, v20

    .line 2076
    move/from16 v19, v18

    .line 2077
    add-int/lit8 v20, v5, -0x1

    move/from16 v0, v20

    if-ge v10, v0, :cond_7

    .line 2078
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    add-int v21, v8, v10

    add-int/lit8 v21, v21, 0x1

    aget v21, v4, v21

    int-to-float v0, v7

    move/from16 v22, v0

    mul-float v21, v21, v22

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2068
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2072
    :cond_8
    add-int/lit8 v20, v9, -0x1

    aget v20, v13, v20

    goto :goto_3

    .line 2051
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method flushLayerUpdates()V
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->flushLayerUpdates()V

    .line 2187
    return-void
.end method

.method getConfig(Z)[I
    .locals 9
    .param p1, "dirtyRegions"    # Z

    .prologue
    const/16 v8, 0x3038

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 1949
    invoke-static {}, Landroid/view/GLES20Canvas;->getStencilSize()I

    move-result v0

    .line 1950
    .local v0, "stencilSize":I
    if-eqz p1, :cond_0

    const/16 v1, 0x400

    .line 1952
    .local v1, "swapBehavior":I
    :goto_0
    const/16 v3, 0x13

    new-array v3, v3, [I

    const/16 v4, 0x3040

    aput v4, v3, v2

    const/4 v4, 0x1

    aput v7, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x3024

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/16 v4, 0x3023

    aput v4, v3, v7

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    const/16 v5, 0x3022

    aput v5, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x3021

    aput v4, v3, v6

    const/16 v4, 0x9

    aput v6, v3, v4

    const/16 v4, 0xa

    const/16 v5, 0x3025

    aput v5, v3, v4

    const/16 v4, 0xb

    aput v2, v3, v4

    const/16 v2, 0xc

    const/16 v4, 0x3027

    aput v4, v3, v2

    const/16 v2, 0xd

    aput v8, v3, v2

    const/16 v2, 0xe

    const/16 v4, 0x3026

    aput v4, v3, v2

    const/16 v2, 0xf

    aput v0, v3, v2

    const/16 v2, 0x10

    const/16 v4, 0x3033

    aput v4, v3, v2

    const/16 v2, 0x11

    or-int/lit8 v4, v1, 0x4

    aput v4, v3, v2

    const/16 v2, 0x12

    aput v8, v3, v2

    return-object v3

    .end local v1    # "swapBehavior":I
    :cond_0
    move v1, v2

    .line 1950
    goto :goto_0
.end method

.method getOverdraw(Landroid/view/HardwareCanvas;)F
    .locals 1
    .param p1, "canvas"    # Landroid/view/HardwareCanvas;

    .prologue
    .line 2211
    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1    # "canvas":Landroid/view/HardwareCanvas;
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->getOverdraw()F

    move-result v0

    return v0
.end method

.method initAtlas()V
    .locals 7

    .prologue
    .line 1976
    const-string v5, "assetatlas"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1977
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1979
    :cond_1
    invoke-static {v1}, Landroid/view/IAssetAtlas$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAssetAtlas;

    move-result-object v0

    .line 1981
    .local v0, "atlas":Landroid/view/IAssetAtlas;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPpid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/IAssetAtlas;->isCompatible(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1982
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getBuffer()Landroid/view/GraphicBuffer;

    move-result-object v2

    .line 1983
    .local v2, "buffer":Landroid/view/GraphicBuffer;
    if-eqz v2, :cond_0

    .line 1984
    invoke-interface {v0}, Landroid/view/IAssetAtlas;->getMap()[I

    move-result-object v4

    .line 1985
    .local v4, "map":[I
    if-eqz v4, :cond_2

    .line 1986
    invoke-static {v2, v4}, Landroid/view/GLES20Canvas;->initAtlas(Landroid/view/GraphicBuffer;[I)V

    .line 1991
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 1992
    invoke-virtual {v2}, Landroid/view/GraphicBuffer;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1996
    .end local v2    # "buffer":Landroid/view/GraphicBuffer;
    .end local v4    # "map":[I
    :catch_0
    move-exception v3

    .line 1997
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "HardwareRenderer"

    const-string v6, "Could not acquire atlas"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method initCaches()V
    .locals 1

    .prologue
    .line 1968
    invoke-static {}, Landroid/view/GLES20Canvas;->initCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->initAtlas()V

    .line 1972
    :cond_0
    return-void
.end method

.method onPostDraw()V
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->onPostDraw()V

    .line 2014
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 2008
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->onPreDraw(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 1
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 2176
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->pushLayerUpdate(Landroid/view/HardwareLayer;)V

    .line 2177
    return-void
.end method

.method safelyRun(Ljava/lang/Runnable;)Z
    .locals 8
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2226
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->checkRenderContext()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v1, v3

    .line 2228
    .local v1, "needsContext":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 2229
    sget-object v4, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    .line 2231
    .local v0, "managedContext":Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    if-nez v0, :cond_2

    .line 2244
    .end local v0    # "managedContext":Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    :goto_1
    return v2

    .end local v1    # "needsContext":Z
    :cond_1
    move v1, v2

    .line 2226
    goto :goto_0

    .line 2232
    .restart local v0    # "managedContext":Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    .restart local v1    # "needsContext":Z
    :cond_2
    invoke-virtual {v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 2236
    .end local v0    # "managedContext":Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    :cond_3
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    if-eqz v1, :cond_4

    .line 2239
    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_4
    move v2, v3

    .line 2244
    goto :goto_1

    .line 2238
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    .line 2239
    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :cond_5
    throw v2
.end method

.method setSurfaceTexture(Landroid/view/HardwareLayer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 2221
    check-cast p1, Landroid/view/GLES20TextureLayer;

    .end local p1    # "layer":Landroid/view/HardwareLayer;
    invoke-virtual {p1, p2}, Landroid/view/GLES20TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2222
    return-void
.end method
