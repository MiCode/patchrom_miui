.class public Landroid/text/TextUtils$SimpleStringSplitter;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/text/TextUtils$StringSplitter;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleStringSplitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextUtils$StringSplitter;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelimiter:C

.field private mLength:I

.field private mPosition:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .param p1, "delimiter"    # C

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-char p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    .line 397
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 414
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    iget v1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .prologue
    .line 418
    iget-object v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    iget-char v3, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    iget v4, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 419
    .local v0, "end":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 420
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    .line 422
    :cond_0
    iget-object v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    iget v3, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "nextString":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    .line 424
    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 404
    iput-object p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    .line 406
    iget-object v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    .line 407
    return-void
.end method
