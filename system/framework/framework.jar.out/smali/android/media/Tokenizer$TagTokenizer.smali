.class Landroid/media/Tokenizer$TagTokenizer;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagTokenizer"
.end annotation


# instance fields
.field private mAnnotation:Ljava/lang/String;

.field private mAtAnnotation:Z

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/Tokenizer;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private yield_tag()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 276
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;
    invoke-static {v5}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v5

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/media/Tokenizer$OnTokenListener;->onEnd(Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    :try_start_0
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v3

    .line 282
    .local v3, "timestampMs":J
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;
    invoke-static {v5}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/media/Tokenizer$OnTokenListener;->onTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v3    # "timestampMs":J
    :catch_0
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Tokenizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid timestamp tag: <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v6, "\\s+"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 288
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 291
    :cond_2
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 292
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 295
    :cond_3
    const/4 v0, 0x0

    .line 296
    .local v0, "classes":[Ljava/lang/String;
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 297
    .local v1, "dotAt":I
    if-ltz v1, :cond_4

    .line 298
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 301
    :cond_4
    iget-object v5, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mListener:Landroid/media/Tokenizer$OnTokenListener;
    invoke-static {v5}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    move-result-object v5

    iget-object v6, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    iget-object v7, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-interface {v5, v6, v0, v7}, Landroid/media/Tokenizer$OnTokenListener;->onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    .prologue
    .line 235
    const-string v0, ""

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    .line 237
    return-object p0
.end method

.method public tokenize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 242
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # operator++ for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$108(Landroid/media/Tokenizer;)I

    .line 244
    :cond_0
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 250
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_4

    .line 251
    :cond_1
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "parts":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    iget-object v4, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v4}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v4

    aget-object v5, v1, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "part":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    aget-object v3, v1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    # += operator for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->access$112(Landroid/media/Tokenizer;I)I

    .line 259
    iget-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    if-eqz v2, :cond_5

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAnnotation:Ljava/lang/String;

    .line 266
    .end local v0    # "part":Ljava/lang/String;
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/Tokenizer$TagTokenizer;->mAtAnnotation:Z

    .line 268
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    .line 269
    invoke-direct {p0}, Landroid/media/Tokenizer$TagTokenizer;->yield_tag()V

    .line 270
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mDataTokenizer:Landroid/media/Tokenizer$TokenizerPhase;
    invoke-static {v3}, Landroid/media/Tokenizer;->access$500(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    move-result-object v3

    # setter for: Landroid/media/Tokenizer;->mPhase:Landroid/media/Tokenizer$TokenizerPhase;
    invoke-static {v2, v3}, Landroid/media/Tokenizer;->access$202(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;

    .line 271
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # operator++ for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v2}, Landroid/media/Tokenizer;->access$108(Landroid/media/Tokenizer;)I

    .line 273
    :cond_3
    return-void

    .line 253
    :cond_4
    iget-object v2, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mLine:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/media/Tokenizer$TagTokenizer;->this$0:Landroid/media/Tokenizer;

    # getter for: Landroid/media/Tokenizer;->mHandledLen:I
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[\t\u000c >]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "parts":[Ljava/lang/String;
    goto/16 :goto_0

    .line 262
    .restart local v0    # "part":Ljava/lang/String;
    :cond_5
    iput-object v0, p0, Landroid/media/Tokenizer$TagTokenizer;->mName:Ljava/lang/String;

    goto :goto_1
.end method
