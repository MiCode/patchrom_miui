.class public Landroid/speech/srec/Recognizer$Grammar;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/srec/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Grammar"
.end annotation


# instance fields
.field private mGrammar:I

.field final synthetic this$0:Landroid/speech/srec/Recognizer;


# direct methods
.method public constructor <init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V
    .locals 2
    .param p2, "g2gFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    .line 184
    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarLoad(Ljava/lang/String;)I
    invoke-static {p2}, Landroid/speech/srec/Recognizer;->access$000(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    .line 185
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    # getter for: Landroid/speech/srec/Recognizer;->mVocabulary:I
    invoke-static {p1}, Landroid/speech/srec/Recognizer;->access$100(Landroid/speech/srec/Recognizer;)I

    move-result v1

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarSetupVocabulary(II)V
    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->access$200(II)V

    .line 186
    return-void
.end method

.method static synthetic access$1100(Landroid/speech/srec/Recognizer$Grammar;)I
    .locals 1
    .param p0, "x0"    # Landroid/speech/srec/Recognizer$Grammar;

    .prologue
    .line 176
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    return v0
.end method


# virtual methods
.method public addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "pron"    # Ljava/lang/String;
    .param p4, "weight"    # I
    .param p5, "tag"    # Ljava/lang/String;

    .prologue
    .line 205
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarAddWordToSlot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    invoke-static/range {v0 .. v5}, Landroid/speech/srec/Recognizer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    return-void
.end method

.method public compile()V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarCompile(I)V
    invoke-static {v0}, Landroid/speech/srec/Recognizer;->access$500(I)V

    .line 213
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    if-eqz v0, :cond_0

    .line 239
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarDestroy(I)V
    invoke-static {v0}, Landroid/speech/srec/Recognizer;->access$1000(I)V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    .line 242
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to destroy Grammar"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method public resetAllSlots()V
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarResetAllSlots(I)V
    invoke-static {v0}, Landroid/speech/srec/Recognizer;->access$300(I)V

    .line 193
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .param p1, "g2gFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarSave(ILjava/lang/String;)V
    invoke-static {v0, p1}, Landroid/speech/srec/Recognizer;->access$900(ILjava/lang/String;)V

    .line 231
    return-void
.end method

.method public setupRecognizer()V
    .locals 2

    .prologue
    .line 219
    iget v0, p0, Landroid/speech/srec/Recognizer$Grammar;->mGrammar:I

    iget-object v1, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    # getter for: Landroid/speech/srec/Recognizer;->mRecognizer:I
    invoke-static {v1}, Landroid/speech/srec/Recognizer;->access$600(Landroid/speech/srec/Recognizer;)I

    move-result v1

    # invokes: Landroid/speech/srec/Recognizer;->SR_GrammarSetupRecognizer(II)V
    invoke-static {v0, v1}, Landroid/speech/srec/Recognizer;->access$700(II)V

    .line 220
    iget-object v0, p0, Landroid/speech/srec/Recognizer$Grammar;->this$0:Landroid/speech/srec/Recognizer;

    # setter for: Landroid/speech/srec/Recognizer;->mActiveGrammar:Landroid/speech/srec/Recognizer$Grammar;
    invoke-static {v0, p0}, Landroid/speech/srec/Recognizer;->access$802(Landroid/speech/srec/Recognizer;Landroid/speech/srec/Recognizer$Grammar;)Landroid/speech/srec/Recognizer$Grammar;

    .line 221
    return-void
.end method
