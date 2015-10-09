.class public Landroid/opengl/EGLDisplay;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLDisplay.java"


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/opengl/EGLObjectHandle;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 31
    if-ne p0, p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    instance-of v3, p1, Landroid/opengl/EGLDisplay;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 34
    check-cast v0, Landroid/opengl/EGLDisplay;

    .line 35
    .local v0, "that":Landroid/opengl/EGLDisplay;
    invoke-virtual {p0}, Landroid/opengl/EGLDisplay;->getHandle()I

    move-result v3

    invoke-virtual {v0}, Landroid/opengl/EGLDisplay;->getHandle()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method
