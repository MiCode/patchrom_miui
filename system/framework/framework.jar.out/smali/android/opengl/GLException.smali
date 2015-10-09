.class public Landroid/opengl/GLException;
.super Ljava/lang/RuntimeException;
.source "GLException.java"


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 26
    invoke-static {p1}, Landroid/opengl/GLException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Landroid/opengl/GLException;->mError:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Landroid/opengl/GLException;->mError:I

    .line 33
    return-void
.end method

.method private static getErrorString(I)Ljava/lang/String;
    .locals 3
    .param p0, "error"    # I

    .prologue
    .line 36
    invoke-static {p0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "errorString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    return-object v0
.end method


# virtual methods
.method getError()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Landroid/opengl/GLException;->mError:I

    return v0
.end method
