.class abstract Landroid/opengl/GLWrapperBase;
.super Ljava/lang/Object;
.source "GLWrapperBase.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;
.implements Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
.implements Ljavax/microedition/khronos/opengles/GL;


# instance fields
.field protected mgl:Ljavax/microedition/khronos/opengles/GL10;

.field protected mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field protected mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field protected mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

.field protected mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    .line 33
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 34
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 35
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    .line 37
    :cond_0
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 38
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 40
    :cond_1
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 41
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 43
    :cond_2
    instance-of v0, p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    if-eqz v0, :cond_3

    .line 44
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL;
    iput-object p1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 46
    :cond_3
    return-void
.end method
