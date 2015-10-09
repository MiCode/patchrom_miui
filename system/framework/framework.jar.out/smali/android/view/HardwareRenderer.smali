.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer;,
        Landroid/view/HardwareRenderer$GlRenderer;,
        Landroid/view/HardwareRenderer$GraphDataProvider;,
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final OVERDRAW_PROPERTY_COUNT:Ljava/lang/String; = "count"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field private static final PROFILE_FRAME_DATA_COUNT:I = 0x3

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field private static final PROFILE_MAX_FRAMES:I = 0x80

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field public static final PROFILE_PROPERTY_VISUALIZE_LINES:Ljava/lang/String; = "visual_lines"

.field static final RENDER_DIRTY_REGIONS:Z = true

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 223
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 1877
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/view/HardwareRenderer;->nLoadProperties()Z

    move-result v0

    return v0
.end method

.method static beginFrame([I)V
    .locals 0
    .param p0, "size"    # [I

    .prologue
    .line 405
    invoke-static {p0}, Landroid/view/HardwareRenderer;->nBeginFrame([I)V

    .line 406
    return-void
.end method

.method static createGlRenderer(IZ)Landroid/view/HardwareRenderer;
    .locals 3
    .param p0, "glVersion"    # I
    .param p1, "translucent"    # Z

    .prologue
    .line 630
    packed-switch p0, :pswitch_data_0

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown GL version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 632
    :pswitch_0
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->create(Z)Landroid/view/HardwareRenderer;

    move-result-object v0

    return-object v0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static disable(Z)V
    .locals 1
    .param p0, "system"    # Z

    .prologue
    const/4 v0, 0x1

    .line 244
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 245
    if-eqz p0, :cond_0

    .line 246
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 248
    :cond_0
    return-void
.end method

.method static endTrimMemory()V
    .locals 0

    .prologue
    .line 667
    invoke-static {}, Landroid/view/HardwareRenderer$Gl20Renderer;->endTrimMemory()V

    .line 668
    return-void
.end method

.method static getSystemTime()J
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Landroid/view/HardwareRenderer;->nGetSystemTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 258
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static isBackBufferPreserved()Z
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Landroid/view/HardwareRenderer;->nIsBackBufferPreserved()Z

    move-result v0

    return v0
.end method

.method private static native nBeginFrame([I)V
.end method

.method private static native nGetSystemTime()J
.end method

.method private static native nIsBackBufferPreserved()Z
.end method

.method private static native nLoadProperties()Z
.end method

.method private static native nPreserveBackBuffer()Z
.end method

.method private static native nSetupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static preserveBackBuffer()Z
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Landroid/view/HardwareRenderer;->nPreserveBackBuffer()Z

    move-result v0

    return v0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 395
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/HardwareRenderer;->nSetupShadersDiskCache(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method static startTrimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 659
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->startTrimMemory(I)V

    .line 660
    return-void
.end method

.method static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 646
    invoke-static {p0}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    .line 647
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    .line 648
    return-void
.end method


# virtual methods
.method abstract attachFunctor(Landroid/view/View$AttachInfo;I)Z
.end method

.method abstract cancelLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method public abstract createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;
.end method

.method abstract createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
.end method

.method abstract createHardwareLayer(Z)Landroid/view/HardwareLayer;
.end method

.method abstract createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
.end method

.method abstract destroy(Z)V
.end method

.method abstract destroyHardwareResources(Landroid/view/View;)V
.end method

.method abstract destroyLayers(Landroid/view/View;)V
.end method

.method abstract detachFunctor(I)V
.end method

.method abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)V
.end method

.method abstract dumpGfxInfo(Ljava/io/PrintWriter;)V
.end method

.method abstract flushLayerUpdates()V
.end method

.method abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method abstract getFrameCount()J
.end method

.method abstract getHeight()I
.end method

.method abstract getWidth()I
.end method

.method abstract initialize(Landroid/view/Surface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method initializeIfNeeded(IILandroid/view/Surface;)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0, p3}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0, p1, p2}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 607
    const/4 v0, 0x1

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract invalidate(Landroid/view/Surface;)V
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 676
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return v0
.end method

.method abstract loadSystemProperties(Landroid/view/Surface;)Z
.end method

.method abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method abstract safelyRun(Ljava/lang/Runnable;)Z
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 685
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    .line 686
    return-void
.end method

.method abstract setName(Ljava/lang/String;)V
.end method

.method setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 706
    return-void
.end method

.method abstract setSurfaceTexture(Landroid/view/HardwareLayer;Landroid/graphics/SurfaceTexture;)V
.end method

.method abstract setup(II)V
.end method

.method abstract updateSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method abstract validate()Z
.end method
