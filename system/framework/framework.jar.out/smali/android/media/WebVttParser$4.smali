.class Landroid/media/WebVttParser$4;
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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 808
    const-class v0, Landroid/media/WebVttParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/WebVttParser$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 830
    :goto_0
    return-void

    .line 815
    :cond_0
    sget-boolean v0, Landroid/media/WebVttParser$4;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 817
    :cond_1
    const-string v0, "NOTE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NOTE "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    :cond_2
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mParseCueText:Landroid/media/WebVttParser$Phase;
    invoke-static {v1}, Landroid/media/WebVttParser;->access$1000(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 821
    :cond_3
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    new-instance v1, Landroid/media/TextTrackCue;

    invoke-direct {v1}, Landroid/media/TextTrackCue;-><init>()V

    # setter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$902(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    .line 822
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCueTexts:Ljava/util/Vector;
    invoke-static {v0}, Landroid/media/WebVttParser;->access$1100(Landroid/media/WebVttParser;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 824
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    iget-object v1, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mParseCueTime:Landroid/media/WebVttParser$Phase;
    invoke-static {v1}, Landroid/media/WebVttParser;->access$700(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v1

    # setter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v0, v1}, Landroid/media/WebVttParser;->access$102(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    .line 825
    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 826
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mPhase:Landroid/media/WebVttParser$Phase;
    invoke-static {v0}, Landroid/media/WebVttParser;->access$100(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_0

    .line 828
    :cond_4
    iget-object v0, p0, Landroid/media/WebVttParser$4;->this$0:Landroid/media/WebVttParser;

    # getter for: Landroid/media/WebVttParser;->mCue:Landroid/media/TextTrackCue;
    invoke-static {v0}, Landroid/media/WebVttParser;->access$900(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object p1, v0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    goto :goto_0
.end method
