.class final Landroid/print/PrinterDiscoverySession$SessionHandler;
.super Landroid/os/Handler;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterDiscoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrinterDiscoverySession;


# direct methods
.method public constructor <init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 267
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    .line 268
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 274
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 285
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 277
    .local v1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    # invokes: Landroid/print/PrinterDiscoverySession;->handlePrintersAdded(Ljava/util/List;)V
    invoke-static {v2, v1}, Landroid/print/PrinterDiscoverySession;->access$000(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V

    goto :goto_0

    .line 281
    .end local v1    # "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 282
    .local v0, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    # invokes: Landroid/print/PrinterDiscoverySession;->handlePrintersRemoved(Ljava/util/List;)V
    invoke-static {v2, v0}, Landroid/print/PrinterDiscoverySession;->access$100(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
