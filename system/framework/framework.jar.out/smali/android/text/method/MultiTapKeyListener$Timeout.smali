.class Landroid/text/method/MultiTapKeyListener$Timeout;
.super Landroid/os/Handler;
.source "MultiTapKeyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/MultiTapKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Timeout"
.end annotation


# instance fields
.field private mBuffer:Landroid/text/Editable;

.field final synthetic this$0:Landroid/text/method/MultiTapKeyListener;


# direct methods
.method public constructor <init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V
    .locals 4
    .param p2, "buffer"    # Landroid/text/Editable;

    .prologue
    .line 258
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->this$0:Landroid/text/method/MultiTapKeyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 259
    iput-object p2, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    .line 260
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 264
    return-void
.end method

.method static synthetic access$002(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0
    .param p0, "x0"    # Landroid/text/method/MultiTapKeyListener$Timeout;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 254
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 267
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    .line 269
    .local v0, "buf":Landroid/text/Spannable;
    if-eqz v0, :cond_1

    .line 270
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 271
    .local v3, "st":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 273
    .local v1, "en":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 274
    .local v4, "start":I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 276
    .local v2, "end":I
    if-ne v3, v4, :cond_0

    if-ne v1, v2, :cond_0

    .line 277
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 280
    :cond_0
    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 282
    .end local v1    # "en":I
    .end local v2    # "end":I
    .end local v3    # "st":I
    .end local v4    # "start":I
    :cond_1
    return-void
.end method
