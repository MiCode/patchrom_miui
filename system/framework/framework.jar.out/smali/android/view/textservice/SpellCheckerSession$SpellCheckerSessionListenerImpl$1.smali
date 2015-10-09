.class Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;
.super Landroid/os/Handler;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;


# direct methods
.method constructor <init>(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 336
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;->this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 338
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;

    .line 339
    .local v0, "scp":Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$1;->this$0:Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;

    iget-object v2, v0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;->mSession:Lcom/android/internal/textservice/ISpellCheckerSession;

    const/4 v3, 0x1

    # invokes: Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->processTask(Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V
    invoke-static {v1, v2, v0, v3}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;->access$300(Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl;Lcom/android/internal/textservice/ISpellCheckerSession;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListenerImpl$SpellCheckerParams;Z)V

    .line 340
    return-void
.end method
