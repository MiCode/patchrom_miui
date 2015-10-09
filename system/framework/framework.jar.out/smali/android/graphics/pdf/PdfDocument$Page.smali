.class public final Landroid/graphics/pdf/PdfDocument$Page;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Page"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private final mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;


# direct methods
.method private constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pageInfo"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 395
    iput-object p2, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    .line 396
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/pdf/PdfDocument$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # Landroid/graphics/pdf/PdfDocument$PageInfo;
    .param p3, "x2"    # Landroid/graphics/pdf/PdfDocument$1;

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/graphics/pdf/PdfDocument$Page;-><init>(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument$PageInfo;)V

    return-void
.end method

.method static synthetic access$400(Landroid/graphics/pdf/PdfDocument$Page;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$Page;

    .prologue
    .line 383
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$Page;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->release()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mPageInfo:Landroid/graphics/pdf/PdfDocument$PageInfo;

    return-object v0
.end method

.method isFinished()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$Page;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
