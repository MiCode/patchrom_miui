.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# static fields
.field private static final MSG_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 3
    .param p1, "outerContext"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "theme"    # I

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-static {p1, p2, p3}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 323
    new-instance v0, Landroid/app/Presentation$2;

    invoke-direct {v0, p0}, Landroid/app/Presentation$2;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 343
    new-instance v0, Landroid/app/Presentation$3;

    invoke-direct {v0, p0}, Landroid/app/Presentation$3;-><init>(Landroid/app/Presentation;)V

    iput-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 179
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 180
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 182
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 183
    invoke-virtual {p0, v2}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Landroid/app/Presentation;)Landroid/view/Display;
    .locals 1
    .param p0, "x0"    # Landroid/app/Presentation;

    .prologue
    .line 141
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Presentation;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Presentation;

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Presentation;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Presentation;

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method private static createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .locals 7
    .param p0, "outerContext"    # Landroid/content/Context;
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "theme"    # I

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "outerContext must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_0
    if-nez p1, :cond_1

    .line 293
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "display must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 296
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, "displayContext":Landroid/content/Context;
    if-nez p2, :cond_2

    .line 298
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 299
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/android/internal/R$attr;->presentationTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 301
    iget p2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 308
    .end local v2    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerImpl;

    .line 310
    .local v3, "outerWindowManager":Landroid/view/WindowManagerImpl;
    invoke-virtual {v3, p1}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 312
    .local v1, "displayWindowManager":Landroid/view/WindowManagerImpl;
    new-instance v4, Landroid/app/Presentation$1;

    invoke-direct {v4, v0, p2, v1}, Landroid/app/Presentation$1;-><init>(Landroid/content/Context;ILandroid/view/WindowManagerImpl;)V

    return-object v4
.end method

.method private handleDisplayChanged()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    .line 276
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 279
    :cond_0
    return-void
.end method

.method private handleDisplayRemoved()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 265
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 266
    return-void
.end method

.method private isConfigurationStillValid()Z
    .locals 2

    .prologue
    .line 282
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 283
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    invoke-virtual {p0}, Landroid/app/Presentation;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayChanged()V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onDisplayRemoved()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 209
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 215
    invoke-direct {p0}, Landroid/app/Presentation;->isConfigurationStillValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "Presentation"

    const-string v1, "Presentation is being immediately dismissed because the display metrics have changed since it was created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 220
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 225
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 226
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 236
    return-void
.end method
