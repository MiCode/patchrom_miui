.class final Landroid/content/res/XmlBlock$Parser;
.super Ljava/lang/Object;
.source "XmlBlock.java"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/XmlBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Parser"
.end annotation


# instance fields
.field private final mBlock:Landroid/content/res/XmlBlock;

.field private mDecNextDepth:Z

.field private mDepth:I

.field private mEventType:I

.field mParseState:I

.field private mStarted:Z

.field final synthetic this$0:Landroid/content/res/XmlBlock;


# direct methods
.method constructor <init>(Landroid/content/res/XmlBlock;ILandroid/content/res/XmlBlock;)V
    .locals 1
    .param p2, "parseState"    # I
    .param p3, "block"    # Landroid/content/res/XmlBlock;

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object p1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    .line 464
    iput-boolean v0, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 465
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 466
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 79
    iput p2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 80
    iput-object p3, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    .line 81
    # operator++ for: Landroid/content/res/XmlBlock;->mOpenCount:I
    invoke-static {p3}, Landroid/content/res/XmlBlock;->access$008(Landroid/content/res/XmlBlock;)I

    .line 82
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 444
    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    monitor-enter v1

    .line 445
    :try_start_0
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-eqz v0, :cond_0

    .line 446
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeDestroyParseState(I)V
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1500(I)V

    .line 447
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    .line 448
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->mBlock:Landroid/content/res/XmlBlock;

    # invokes: Landroid/content/res/XmlBlock;->decOpenCountLocked()V
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1600(Landroid/content/res/XmlBlock;)V

    .line 450
    :cond_0
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entityName"    # Ljava/lang/String;
    .param p2, "replacementText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "defineEntityReplacementText() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    .line 455
    return-void
.end method

.method public getAttributeBooleanValue(IZ)Z
    .locals 2
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 376
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 379
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    .line 381
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 383
    :goto_0
    return v1

    .line 381
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, p2

    .line 383
    goto :goto_0
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 324
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 325
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 326
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeBooleanValue(IZ)Z

    move-result p3

    .line 328
    .end local p3    # "defaultValue":Z
    :cond_0
    return p3
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeCount(I)I
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$600(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAttributeFloatValue(IF)F
    .locals 3
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # F

    .prologue
    .line 415
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 418
    .local v0, "t":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 419
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 422
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not a float!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 357
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 359
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeFloatValue(IF)F

    move-result p3

    .line 361
    .end local p3    # "defaultValue":F
    :cond_0
    return p3
.end method

.method public getAttributeIntValue(II)I
    .locals 2
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 395
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 398
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 400
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p2

    .line 402
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 340
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 342
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeIntValue(II)I

    move-result p3

    .line 344
    .end local p3    # "defaultValue":I
    :cond_0
    return p3
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .locals 3
    .param p1, "idx"    # I
    .param p2, "options"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 366
    iget v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v2, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 367
    .local v0, "t":I
    iget v2, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v2, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v1

    .line 368
    .local v1, "v":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 369
    iget-object v2, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v2, v2, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v2, v1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lcom/android/internal/util/XmlUtils;->convertValueToList(Ljava/lang/CharSequence;[Ljava/lang/String;I)I

    move-result v1

    .line 372
    .end local v1    # "v":I
    :cond_0
    return v1
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    .line 316
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 317
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 318
    invoke-virtual {p0, v0, p3, p4}, Landroid/content/res/XmlBlock$Parser;->getAttributeListValue(I[Ljava/lang/String;I)I

    move-result p4

    .line 320
    .end local p4    # "defaultValue":I
    :cond_0
    return p4
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 185
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeName(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$500(II)I

    move-result v0

    .line 187
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeNameResource(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 311
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeResource(II)I
    invoke-static {v0, p1}, Landroid/content/res/XmlBlock;->access$1100(II)I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 178
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeNamespace(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$400(II)I

    move-result v0

    .line 180
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    .line 182
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAttributePrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeResourceValue(II)I
    .locals 2
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 386
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 389
    .local v0, "t":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p2

    .line 392
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 332
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 333
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 334
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(II)I

    move-result p3

    .line 336
    .end local p3    # "defaultValue":I
    :cond_0
    return p3
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 215
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .locals 2
    .param p1, "idx"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 405
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v0

    .line 408
    .local v0, "t":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    .line 410
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v1, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result p2

    .line 412
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 349
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 351
    invoke-virtual {p0, v0, p3}, Landroid/content/res/XmlBlock$Parser;->getAttributeUnsignedIntValue(II)I

    move-result p3

    .line 353
    .end local p3    # "defaultValue":I
    :cond_0
    return p3
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 201
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeStringValue(II)I
    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$700(II)I

    move-result v0

    .line 203
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v3, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v3, v3, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v3, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    :goto_0
    return-object v3

    .line 206
    :cond_0
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeDataType(II)I
    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$800(II)I

    move-result v1

    .line 207
    .local v1, "t":I
    if-nez v1, :cond_1

    .line 208
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_1
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeData(II)I
    invoke-static {v3, p1}, Landroid/content/res/XmlBlock;->access$900(II)I

    move-result v2

    .line 212
    .local v2, "v":I
    invoke-static {v1, v2}, Landroid/util/TypedValue;->coerceToString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 224
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetAttributeIndex(ILjava/lang/String;Ljava/lang/String;)I
    invoke-static {v1, p1, p2}, Landroid/content/res/XmlBlock;->access$1000(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Landroid/content/res/XmlBlock$Parser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetClassAttribute(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1300(I)I

    move-result v0

    .line 431
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 149
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 94
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    const-string v1, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetIdAttribute(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$1200(I)I

    move-result v0

    .line 427
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIdAttributeResourceValue(I)I
    .locals 2
    .param p1, "defaultValue"    # I

    .prologue
    .line 436
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/res/XmlBlock$Parser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetLineNumber(I)I
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$200(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v1}, Landroid/content/res/XmlBlock;->nativeGetName(I)I

    move-result v0

    .line 175
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetNamespace(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$300(I)I

    move-result v0

    .line 171
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNamespace() not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .locals 2
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceCount() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespacePrefix() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "getNamespaceUri() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getPooledString(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 458
    iget-object v0, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v0, v0, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binary XML file line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPrefix not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetStyleAttribute(I)I
    invoke-static {v0}, Landroid/content/res/XmlBlock;->access$1400(I)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    # invokes: Landroid/content/res/XmlBlock;->nativeGetText(I)I
    invoke-static {v1}, Landroid/content/res/XmlBlock;->access$100(I)I

    move-result v0

    .line 143
    .local v0, "id":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/content/res/XmlBlock$Parser;->this$0:Landroid/content/res/XmlBlock;

    iget-object v1, v1, Landroid/content/res/XmlBlock;->mStrings:Landroid/content/res/StringBlock;

    invoke-virtual {v1, v0}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTextCharacters([I)[C
    .locals 5
    .param p1, "holderForStartAndLength"    # [I

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "txt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 161
    .local v0, "chars":[C
    if-eqz v1, :cond_0

    .line 162
    aput v4, p1, v4

    .line 163
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    aput v3, p1, v2

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v0, v2, [C

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 167
    :cond_0
    return-object v0
.end method

.method public isAttributeDefault(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 237
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    if-nez v3, :cond_1

    .line 238
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mStarted:Z

    move v0, v1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 241
    :cond_1
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    if-nez v3, :cond_2

    move v0, v2

    .line 242
    goto :goto_0

    .line 244
    :cond_2
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mParseState:I

    invoke-static {v3}, Landroid/content/res/XmlBlock;->nativeNext(I)I

    move-result v0

    .line 245
    .local v0, "ev":I
    iget-boolean v3, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    if-eqz v3, :cond_3

    .line 246
    iget v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    .line 247
    iput-boolean v1, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    .line 249
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_1
    iput v0, p0, Landroid/content/res/XmlBlock$Parser;->mEventType:I

    .line 258
    if-ne v0, v2, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->close()V

    goto :goto_0

    .line 251
    :pswitch_0
    iget v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/content/res/XmlBlock$Parser;->mDepth:I

    goto :goto_1

    .line 254
    :pswitch_1
    iput-boolean v2, p0, Landroid/content/res/XmlBlock$Parser;->mDecNextDepth:Z

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 299
    .local v0, "eventType":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 302
    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 303
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected start or end tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 307
    :cond_1
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 274
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 275
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG to read next text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 280
    .local v0, "eventType":I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    .line 283
    if-eq v0, v4, :cond_2

    .line 284
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": event TEXT it must be immediately followed by END_TAG"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 289
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    if-ne v0, v4, :cond_3

    .line 290
    const-string v1, ""

    :cond_2
    return-object v1

    .line 292
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": parser must be on START_TAG or TEXT to read text"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->next()I

    move-result v0

    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/XmlBlock$Parser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_2
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 88
    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 91
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "inputEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setInput() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "setProperty() not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
