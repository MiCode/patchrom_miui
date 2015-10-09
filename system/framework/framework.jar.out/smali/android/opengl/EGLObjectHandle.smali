.class public abstract Landroid/opengl/EGLObjectHandle;
.super Ljava/lang/Object;
.source "EGLObjectHandle.java"


# instance fields
.field private final mHandle:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "handle"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Landroid/opengl/EGLObjectHandle;->mHandle:I

    .line 29
    return-void
.end method


# virtual methods
.method public getHandle()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Landroid/opengl/EGLObjectHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/opengl/EGLObjectHandle;->getHandle()I

    move-result v0

    return v0
.end method
