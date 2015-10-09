.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 351
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 352
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 353
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 354
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 355
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method

.method static synthetic access$000(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method static synthetic access$100(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method static synthetic access$200(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method static synthetic access$300(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method static synthetic access$400(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method static synthetic access$500(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .param p0, "x0"    # Landroid/renderscript/Script$LaunchOptions;

    .prologue
    .line 349
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "xstartArg"    # I
    .param p2, "xendArg"    # I

    .prologue
    .line 368
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 369
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 372
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 373
    return-object p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "ystartArg"    # I
    .param p2, "yendArg"    # I

    .prologue
    .line 386
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 387
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 390
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 391
    return-object p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .param p1, "zstartArg"    # I
    .param p2, "zendArg"    # I

    .prologue
    .line 404
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 405
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 408
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    .line 409
    return-object p0
.end method
