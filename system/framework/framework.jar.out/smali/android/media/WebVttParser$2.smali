.class Landroid/media/WebVttParser$2;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 694
    const-string/jumbo v0, "\ufeff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 697
    :cond_0
    const-string v0, "WEBVTT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WEBVTT "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WEBVTT\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    const-string v1, "Not a WEBVTT header"

    # invokes: Landroid/media/WebVttParser;->log_warning(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Landroid/media/WebVttParser;->access$000(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mSkipRest:Landroid/media/WebVttParser$Phase;
    invoke-static {v1}, Landroid/media/WebVttParser;->access$200(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$2;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mParseHeader:Landroid/media/WebVttParser$Phase;
    invoke-static {v1}, Landroid/media/WebVttParser;->access$300(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    goto :goto_0
.end method
