.class public final Landroid/print/PrintDocumentInfo$Builder;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mPrototype:Landroid/print/PrintDocumentInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    new-instance v0, Landroid/print/PrintDocumentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo$1;)V

    iput-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    .line 296
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    # setter for: Landroid/print/PrintDocumentInfo;->mName:Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->access$102(Landroid/print/PrintDocumentInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrintDocumentInfo;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Landroid/print/PrintDocumentInfo;

    iget-object v1, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/print/PrintDocumentInfo;Landroid/print/PrintDocumentInfo$1;)V

    return-object v0
.end method

.method public setContentType(I)Landroid/print/PrintDocumentInfo$Builder;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 331
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    # setter for: Landroid/print/PrintDocumentInfo;->mContentType:I
    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->access$302(Landroid/print/PrintDocumentInfo;I)I

    .line 332
    return-object p0
.end method

.method public setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;
    .locals 2
    .param p1, "pageCount"    # I

    .prologue
    .line 309
    if-gez p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pageCount must be greater than or euqal to zero or DocumentInfo#PAGE_COUNT_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    iget-object v0, p0, Landroid/print/PrintDocumentInfo$Builder;->mPrototype:Landroid/print/PrintDocumentInfo;

    # setter for: Landroid/print/PrintDocumentInfo;->mPageCount:I
    invoke-static {v0, p1}, Landroid/print/PrintDocumentInfo;->access$202(Landroid/print/PrintDocumentInfo;I)I

    .line 315
    return-object p0
.end method
