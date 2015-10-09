.class public final Landroid/graphics/pdf/PdfDocument$PageInfo;
.super Ljava/lang/Object;
.source "PdfDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;
    }
.end annotation


# instance fields
.field private mContentRect:Landroid/graphics/Rect;

.field private mPageHeight:I

.field private mPageNumber:I

.field private mPageWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/pdf/PdfDocument$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/pdf/PdfDocument$1;

    .prologue
    .line 264
    invoke-direct {p0}, Landroid/graphics/pdf/PdfDocument$PageInfo;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/pdf/PdfDocument$PageInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .prologue
    .line 264
    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;
    .param p1, "x1"    # I

    .prologue
    .line 264
    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/pdf/PdfDocument$PageInfo;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .prologue
    .line 264
    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;
    .param p1, "x1"    # I

    .prologue
    .line 264
    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return p1
.end method

.method static synthetic access$200(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;

    .prologue
    .line 264
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$202(Landroid/graphics/pdf/PdfDocument$PageInfo;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 264
    iput-object p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$602(Landroid/graphics/pdf/PdfDocument$PageInfo;I)I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/pdf/PdfDocument$PageInfo;
    .param p1, "x1"    # I

    .prologue
    .line 264
    iput p1, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I

    return p1
.end method


# virtual methods
.method public getContentRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mContentRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPageHeight()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageHeight:I

    return v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageNumber:I

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Landroid/graphics/pdf/PdfDocument$PageInfo;->mPageWidth:I

    return v0
.end method
