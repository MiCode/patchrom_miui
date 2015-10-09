.class Landroid/media/WebVttParser$6;
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
    .line 939
    iput-object p1, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 942
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 943
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    invoke-virtual {v0}, Landroid/media/WebVttParser;->yieldCue()V

    .line 944
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mParseCueId:Landroid/media/WebVttParser$Phase;
    invoke-static {v1}, Landroid/media/WebVttParser;->access$600(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Landroid/media/WebVttParser$6;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;
    invoke-static {v0}, Landroid/media/WebVttParser;->access$1100(Landroid/media/WebVttParser;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
